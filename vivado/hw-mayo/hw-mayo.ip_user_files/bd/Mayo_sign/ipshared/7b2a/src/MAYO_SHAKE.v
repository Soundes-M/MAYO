`timescale 1ns / 1ps

module MAYO_SHAKE(rst, clk, en,
                    mlen, olen,
                    write_adr, read_adr,
                    dyn_done,
                    done,
                    o_control,
                    BRAMA_we, BRAMA_addr, BRAMA_din, BRAMA_en, BRAMA_dout);

  parameter C_BRAMSIZE = 31;
  parameter C_WRITE_DESC_SIZE = 200; // It is recommended to not change these settings 
  parameter C_READ_DESC_SIZE = 32;

  input rst;
  input clk;
  input en;
  input [31:0] mlen; // Message input in bytes
  input [31:0] olen; // Output Hash in bytes
  input [31:0] write_adr; // Original write adr
  input [31:0] read_adr; // Original read adr

  output [         3:0] BRAMA_we  ;
  output [C_BRAMSIZE:0] BRAMA_addr;
  output [        31:0] BRAMA_din ;
  output                BRAMA_en  ;
  input  [        31:0] BRAMA_dout;
  output                dyn_done  ;
  output                done      ;
  output                o_control ;

  reg [         3:0] bram_we      ;
  reg [C_BRAMSIZE:0] bram_addr    ;
  reg [        31:0] bram_din  = 0;
  reg                bram_en      ;

  reg  [31:0] command_reg0 = 0;
  wire [ 4:0] INS             ;
  wire [ 8:0] OP1, OP2, OP3; // Taken from previous project (Can be extended)

  reg  [31:0] mlen_reg, olen_reg; // Original output and message length
  reg  [31:0] mlen_remaining, olen_remaining;
  wire [31:0] mlen, olen;

  reg                               c0,c1;
  reg [ $clog2(C_READ_DESC_SIZE):0] read_ctr      = 0; // Used by HASH
  reg [$clog2(C_WRITE_DESC_SIZE):0] write_ctr     = 0; // Used by HASH
  reg [                        8:0] state0        = 0;
  reg [                        8:0] state1        = 0;
  reg [                       31:0] write_adr_reg = 0; // Original write adr
  reg [                       31:0] read_adr_reg  = 0; // Original read adr

  wire        clear_sha, shake_intermediate_rst, shake_next_extract;
  wire [ 1:0] rate_type           ;
  wire [31:0] rd_address_shake, wt_address_shake;
  wire [63:0] din_shake, dout_shake;
  wire        sample_dout, sample_din, done_shake;
  reg         shake_finished   = 0;
  reg         done_reg         = 0;

  // Descriptors
  reg [                       63:0] write_desc    [0:C_WRITE_DESC_SIZE-1]    ;
  reg [                       63:0] read_desc     [ 0:C_READ_DESC_SIZE-1]    ;
  reg [$clog2(C_WRITE_DESC_SIZE):0] write_desc_adr                        = 0; // Used by BRAM
  reg [ $clog2(C_READ_DESC_SIZE):0] read_desc_adr                         = 0; // Used by BRAM

  // Control
  integer i              ;
  reg     fill_read   = 0;
  reg     empty_write = 0;
  reg     enabled     = 0;
  reg     flip        = 0; // Shake Ctr rst
  reg     flop        = 0; // BRAM Ctr rst
  wire    cond_flip      ; 
  assign cond_flip = ( flip == flop ) ? (write_desc_adr < write_ctr) : (write_desc_adr > write_ctr) ;
  // OPs
  assign INS = command_reg0[4:0];
  assign OP1 = command_reg0[13:5];
  assign OP2 = command_reg0[22:14];
  assign OP3 = command_reg0[31:23];
  
  // Instructs
  assign clear_sha              = (INS==5'd0) ? 1'b1 : 1'b0;
  assign enable_sha             = (INS==5'd1||INS==5'd2||INS==5'd3||INS==5'd4||INS==5'd5) ? 1'b1 : 1'b0;
  assign shake_intermediate_rst = (INS==5'd4) ? 1'b1 : 1'b0;
  assign shake_next_extract     = (INS==5'd5) ? 1'b1 : 1'b0;
  assign rate_type              = (INS==5'd1) ? 2'd1 : (INS==5'd2) ? 2'd0 : 2'd2;

  // IO SHAKE <-> descriptors
  assign din_shake = (enable_sha) ? read_desc[read_ctr] : 0 ;

  always @(posedge clk)
    begin
      if (rst)
        mlen_remaining <= 0;
      else if (en)
        mlen_remaining <= mlen;
      else if (fill_read)
        mlen_remaining <= mlen_remaining - 32'd4; // - 4 bytes (32bits)
      else
        mlen_remaining <= mlen_remaining;
    end

  always @(posedge clk)
    begin
      if (rst)
        olen_remaining <= 1;
      else if (en)
        olen_remaining <= olen;
      else if (empty_write)
        begin
          olen_remaining <= olen_remaining - 32'd4; // - 4 bytes (32bits)
        end
      else
        olen_remaining <= olen_remaining;
    end

  wire oleng0 = (olen_remaining > 32'd0) ? 1'b1 : 1'b0;
  wire oleng4 = (olen_remaining > 32'd4) ? 1'b1 : 1'b0;

  wire mleng0 = (mlen_remaining > 32'd0) ? 1'b1 : 1'b0;
  wire mleng4 = (mlen_remaining > 32'd4) ? 1'b1 : 1'b0;

  // Read has higher prior
  // BRAM Control IO
  always @(posedge clk)
    begin
      if(rst)
        begin
          for (i = 0; i <C_READ_DESC_SIZE; i = i+1)
            read_desc[i] <= 64'b0;

          bram_we <= 4'b0000;
          bram_en <= 1'b0;
          bram_din <= 0;
          bram_addr <= 0;

          fill_read <= 1'b0;
          empty_write <= 1'b0;
          c0 <= 1'b0;
          c1 <= 1'b0;

          read_desc_adr <= 0 ;
          write_desc_adr <= 0;
          flop <= 0;
          state1 = 0;
        end
      else
        begin
          //din_shake_reg <= read_desc[read_ctr];
          //write_desc[write_ctr] <= dout_shake_reg;
          case(state1)
            6'd0 : // IDLE
              begin
                if (en)
                  begin
                    $display("SHAKE: Start Block Fetch");
                    
                    bram_addr <= read_adr; // Start Prefetch
                    bram_en <= 1'b1;
                    bram_we <= 4'b0000;
                    state1 <= 6'd6;
                  end
                else
                  state1 <= 6'd0;
              end

            6'd6 :
              begin
                bram_addr <= bram_addr + 4;
                fill_read <= 1'b1;
                state1 <= 6'd1;
              end

            6'd1: // READ FROM BRAM (1 Round)
              begin
                $display("SHAKE : Read 0x%0h from 0x%0h!", BRAMA_dout, bram_addr); // debug output
                $display("SHAKE : read_desc_adr :  %0d, c0 : %0d", read_desc_adr, c0);
                read_desc[read_desc_adr][c0*32 +: 32] <= BRAMA_dout ;
                if (read_desc_adr < C_READ_DESC_SIZE && mleng4)
                  begin
                    c0 <= !c0;
                    read_desc_adr <= read_desc_adr + c0; // Next Descriptor when done with both 32s
                    bram_addr <= bram_addr + 4;
                  end
                else if (!mleng4) // all read is done
                  begin
                    bram_addr <= write_adr_reg;  // Prepare for write
                    fill_read <= 1'b0;
                    bram_en <= 1'b0;
                    state1 <= 6'd3;
                  end
                else // Descrpt full .. wait
                  begin
                    fill_read <= 1'b0;
                    bram_en <= 1'b0;
                    state1 <= 6'd2;
                  end
              end

            6'd2:
              begin
                if (read_ctr > 0 && mleng0) // Shake started reading from descr and more reads to fetch (should be done before need for write)
                  begin
                    read_desc_adr <= 0;
                    bram_en <= 1'b1;
                    bram_we <= 4'b0000;
                    fill_read <= 1'b1;
                    state1 <= 6'd6;
                  end
                else
                  state1 <= 6'd2;
              end

            6'd3: // Waiting for shake
              begin
                if(write_ctr > 0 && oleng0)// Shake started writing into descriptors and more writes to store
                  begin
                    write_desc_adr <= 0 ;
                    c1 <= 1'b0;
                    state1 <= 6'd7;
                  end
              end

            6'd7:
              begin
                empty_write <= 1'b1;
                bram_we <= 4'b1111;
                bram_en <= 1'b1;
                bram_din <= write_desc[write_desc_adr][c1*32 +: 32];
                c1 <= !c1;
                write_desc_adr <= write_desc_adr + c1;
                state1 <= 6'd4;
              end

            6'd4: // WRITE TO BRAM (1 Round)
              begin
                //$display("SHAKE : Write 0x%0h to 0x%0h!", write_desc[write_desc_adr][c1*32 +: 32], bram_addr); // debug
                //$display("SHAKE : write_desc_adr :  %0d, c0 : %0d", write_desc_adr, c1);
                empty_write <= 1'b1;
                bram_we <= 4'b1111;
                bram_en <= 1'b1;
                bram_din <= write_desc[write_desc_adr][c1*32 +: 32];
                if (write_desc_adr < C_WRITE_DESC_SIZE-1 && oleng4 && (cond_flip||shake_finished))
                  begin
                    c1 <= !c1;
                    bram_addr <= bram_addr + 4 ;
                    write_desc_adr <= write_desc_adr + c1;
                  end
                else if (!oleng4)  // done
                  begin
                    empty_write <= 1'b0;
                    state1 <= 6'd5;
                    bram_en <= 1'b0;
                    bram_we <= 4'b0000;
                  end
                else if (!(cond_flip||shake_finished)) // Wait for Shake samples
                  begin
                    empty_write <= 1'b0;
                    bram_we <= 4'b0000;
                    bram_en <= 1'b0;
                  end
                else // Last adr in descr
                  begin
                    bram_addr <= bram_addr + 4 ;
                    c1 <= !c1;
                    if(c1 == 1)
                      begin
                        write_desc_adr <= 0;
                        flop <= !flop;
                      end
                    else flop <= flop;
                  end
              end

              6'd5:
                begin
                  $display("SHAKE: Write Done");
                  bram_en <= 1'b0;
                  bram_we <= 4'b0000;
                  state1 <= 6'd0;
                end

            default:
              state1 <= 6'd0;
          endcase
        end
    end

  always @(posedge clk)
    begin //CONTROL FSM
      if (rst)
        begin
          state0 <= 0;
          mlen_reg <= 0;
          olen_reg <= 0;
          enabled <= 0;
          done_reg <= 0;
        end
      else
        begin
          case(state0)
            6'd0 :
              begin
                done_reg <= 0;
                if(en) // Start
                  begin
                    mlen_reg <= mlen;
                    olen_reg <= olen;
                    read_adr_reg <= read_adr;
                    write_adr_reg <= write_adr;
                    enabled <= 1;
                    state0 <= 6'd1;
                  end
                else
                  begin // IDLE
                    state0 <= 6'd0;
                  end
              end

            6'd1 : // Êxtra
              begin
                state0 <= 6'd8;
              end

            6'd8 :
              begin
                state0 <= 6'd2;
              end

            6'd2 :
              begin
                if (!fill_read) // block prefetch done
                  state0 <= 6'd3;
                else
                  state0 <= 6'd2;
              end

            6'd3 : // START SHAKE
              begin
                shake_finished <= 1'b0;
                command_reg0 = {9'd64,9'd0,9'd0,5'd0};
                state0 <= 6'd4;
              end

            6'd4 :
              begin
                command_reg0 = {9'd64,9'd0,9'd0,5'd2};
                state0 <= 6'd6;
              end

            6'd6 :
              begin
                if (done_shake || olen_remaining == 0 ) // FIXEME : Sometimes stuck here but should only be done_shake
                  begin
                    state0 <= 6'd7;
                    shake_finished <= 1'b1;
                    $display("SHAKE: done!"); // debug output
                  end
              end

            6'd7 : // temp fix
              begin
                if(olen_remaining == 0 ) // Store complete
                  begin
                    command_reg0 = {9'd64,9'd0,9'd0,5'd0};
                    shake_finished <= 1'b0;
                    $display("SHAKE: disable");
                    $display("SHAKE: enabled : %d ",enabled);
                    enabled <= 1'b0;
                    state0 <= 6'd9;
                  end
              end

            6'd9 :
              begin
                $display("SHAKE: enabled extra: %d ",enabled);
                done_reg <= 1'b1;
                state0 <= 6'd0;
              end
            default:
              state0 <= 6'd0;
          endcase
        end
    end

  // counters (shake addr overdrive)
  // Cyclic
  reg [31:0] old_wt_address_shake = 0;
  always @(posedge clk)
    begin
      if (rst)
        begin
          for (i = 0; i <C_WRITE_DESC_SIZE; i = i+1)
            write_desc[i] <= 64'b0;
          write_ctr            <= 0 ;
          flip                 <= 0;
          old_wt_address_shake <= 0;
        end
      else
        begin
          if(enabled && sample_dout)
            begin
              if (old_wt_address_shake != wt_address_shake || (wt_address_shake == 0)) 
                begin
                  old_wt_address_shake  <= wt_address_shake;
                  write_desc[write_ctr] <= dout_shake;

                  if (write_ctr == C_WRITE_DESC_SIZE -1) // End of desc --> reset
                    begin
                      write_ctr <= 0;
                    end
                  else
                    begin
                      write_ctr <= write_ctr +1 ;
                    end

                  if ((write_ctr == C_WRITE_DESC_SIZE -1) && ((olen_remaining != olen_reg) || shake_finished))
                    flip <= !flip;
                  else
                    flip <= flip;
                end

              else
                old_wt_address_shake <= old_wt_address_shake;
            end
        end
    end

  always @(posedge clk)
    begin
      if (rst)
        begin
          read_ctr <= 0;
        end
      else
        begin
          if (enabled && sample_din)
            begin
              if (read_ctr < C_READ_DESC_SIZE-1 )
                read_ctr <= read_ctr +1;
              else
                read_ctr <= 0 ;
            end
        end
    end

  assign BRAMA_we   = bram_we;
  assign BRAMA_addr = bram_addr;
  assign BRAMA_din  = bram_din;
  assign BRAMA_en   = bram_en;

  assign done      = done_reg;
  assign dyn_done  = (olen_remaining != olen_reg)? 1'b1 : 1'b0; // FIRST 32 BITS ALREADY WRITTEN TO BRAM
  assign o_control = (enabled)? 1'b1 : 1'b0;

  SHA_SHAKE_wrapper SH(clk, clear_sha, shake_intermediate_rst, shake_next_extract,
                       rate_type, mlen_reg,
                       rd_address_shake, din_shake,
                       olen_reg, dout_shake, wt_address_shake, sample_dout, sample_din,
                       done_shake);

endmodule
