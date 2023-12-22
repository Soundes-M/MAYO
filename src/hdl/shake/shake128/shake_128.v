/*
 SHAKE 128 Only. Taken from tb (pqov-paper)
 
 */
`include "sha3_constant.v"

module shake_128(
    input wire clk,
    input wire rst,
    input wire en,
    input wire [ 31: 0 ] mlen, // block/msg len in bytes
    input wire [ 31: 0 ] olen, // digest len in bytes
    input wire [ 31: 0 ] read_adr,
    input wire [ 31: 0 ] write_adr,
    output reg done,
    input wire [ 31: 0 ] bram_dout,
    output reg bram_en,
    output reg [ 3:0 ] bram_we,
    output reg [ 31:0 ] bram_addr,
    output reg [ 31:0 ] bram_din,
    output reg bram_control);

  localparam debug = 1;

  wire    sha3_rst_n;
  reg     [ 3-1:0 ] sha3_SHAmode;
  reg     sha3_ASmode;
  reg     sha3_start;
  wire    sha3_ready;
  reg     sha3_we;
  reg     [ 5-1:0 ] sha3_address;
  reg     [ 64-1:0 ] sha3_data_in;
  wire    [ 64-1:0 ] sha3_data_out;

  reg [ 7:0 ] state;
  reg [ 5:0 ] state_bram;
  reg [ 11:0 ] idx;
  reg [ 31:0 ] mlen_word_count;
  reg [ 34:0 ] olen_bit_cout;
  reg [ 31:0 ] digest_read;

  reg write_bram;
  reg read_bram;
  reg [ 31:0 ] write_offset;
  reg [ 31:0 ] olen_to_write;

  reg [ 31:0 ] sha_write_adr;
  reg [ 31:0 ] sha_read_adr;

  reg [ 63 :0 ] block;   // keep sha_in from bram
  reg [ 1344:0 ] digest; // keep sha_out to bram

  localparam DIGEST_WORD_COUNT = 21; // 21 * 64 = 1344

  task reset_sha3( input [ 3-1:0 ] SHAmode );
    begin
      sha3_SHAmode = SHAmode;
      sha3_ASmode  = `ASMODE_ABSORB;
      sha3_start   = 1'b0;
      sha3_we      = 1'b0;
      sha3_address = 5'd0;
      sha3_data_in = 64'b0;
    end
  endtask // reset_sha3

  always @( posedge clk )
    begin
      if ( rst )
        begin
          reset_sha3( `SHAMODE_SHAKE_128 );
          write_bram <= 1'b0;
          read_bram  <= 1'b0;
          mlen_word_count <= 0;
          olen_bit_cout   <= 0;
          digest_read     <= 0;
          digest  <= 0;
          state           <= 4;
        end
      else
        begin
          case ( state )
            4:
              begin // idle
                if ( en )
                  begin
                    idx             <= 0;
                    mlen_word_count <= mlen / 8; // 64-bit word
                    olen_bit_cout   <= olen*8;
                    state           <= 5;
                  end
              end

            5:
              begin
                if ( idx < mlen_word_count && idx < DIGEST_WORD_COUNT )
                  begin
                    read_bram <= 1'b1;
                    state     <= 6;
                  end
                else
                  begin
                    state <= 3;
                  end
              end

            6:
              begin
                if ( state_bram == 7 )
                  begin // block ready
                    read_bram <= 1'b0;
                    state     <= 1;
                  end
              end

            1:
              begin // Begin shake-128
                sha3_address <= idx;
                sha3_data_in <= block;
                sha3_we <= 1'b1;
                idx   <= idx +1;
                state <= 2;
              end

            2:
              begin
                sha3_we <= 1'b0;
                state <= 5;
              end

            3:
              begin // absorb
                sha3_ASmode <= `ASMODE_ABSORB;
                sha3_start = 1'b1;
                state <= 10;
              end

            10:
              begin
                sha3_start = 1'b0;
                digest_read <= 0;
                state       <= 21;
              end

            21:
              begin
                write_bram <= 1'b0; // force bram stop ( Hopefuly done with writing )
                if ( digest_read < olen_bit_cout && sha3_ready )
                  begin
                    sha3_ASmode <= `ASMODE_SQUEEZE;
                    sha3_address <= 0;
                    idx <= 0;
                    state <= 12;
                  end
                else if ( digest_read >= olen_bit_cout && sha3_ready )
                  state <= 20; // Hash done
                else
                  state <= 21;
              end

            12:
              begin // read digest
                if ( idx < DIGEST_WORD_COUNT )
                  begin
                    sha3_ASmode <= `ASMODE_SQUEEZE;
                    sha3_address   <= idx;
                    idx <= idx +1;
                    digest[ idx*64 +: 64 ] <= sha3_data_out;
                    write_bram <= 1'b1;
                    state          <= 12;
                  end
                else
                  begin
                    idx <= 0; // ready for next sha output round
                    digest_read    <= digest_read + DIGEST_WORD_COUNT*64;

                    if ( digest_read + DIGEST_WORD_COUNT*64 < olen_bit_cout ) // squeeze
                      begin
                        sha3_ASmode <= `ASMODE_SQUEEZE;
                        sha3_start  <= 1'b1;
                        state       <= 18;
                      end
                    else
                      state <= 21; // Check more hash bytes
                  end
              end

            18:
              begin // Extra clock cycle
                state <= 19;
              end

            19:
              begin
                sha3_start = 1'b0;
                if(sha3_ready)
                  state <= 21;
              end

            20:
              begin
                state <= 4;
              end

            default :
              begin
                state <= 4;
              end
          endcase
        end
    end

  reg [ 31:0 ] bytes_remaining;

  // --------------------------------------------------------------------------------
  // bram write/read process
  always @( posedge clk )
    begin
      if ( rst )
        begin
          bram_we         <= 4'b0000;
          bram_en         <= 1'b0;
          olen_to_write   <= 32'b0;
          bytes_remaining <= 32'b0;
          write_offset    <= 0;
          state_bram      <= 0;
        end
      else
        begin
          case ( state_bram )
            0:
              begin
                done <= 1'b0;
                if ( en )
                  begin
                    sha_write_adr   <= write_adr + olen -4;
                    sha_read_adr    <= read_adr;
                    bytes_remaining <= olen;
                    bram_control    <= 1'b1;
                    state_bram      <= 1;
                  end
              end

            1:
              begin
                if ( read_bram )
                  begin
                    state_bram <= 3;
                  end

                if ( write_bram )
                  begin
                    if ( bytes_remaining > 1344 / 8)
                      begin
                        olen_to_write <= 1344 / 8;
                      end
                    else
                      begin
                        olen_to_write <= bytes_remaining;
                      end
                    state_bram <= 2;
                  end

                if (bytes_remaining == 0)
                  begin
                    $display("Done : @ %d cycles", perf_counter);
                    done            <= 1'b1;
                    bram_control    <= 1'b0;
                    state_bram      <= 0;
                  end
                bram_we <= 4'b0000;
                bram_en <= 1'b0;
              end

            // ----------- write bram
            // PS: Byte reversal is also used in this
            2:
              begin
                if ( write_offset < olen_to_write )
                  begin
                    bram_din      <= {digest[ write_offset +: 8 ], digest[ write_offset+8 +: 8 ], digest[ write_offset+16 +: 8 ],digest[ write_offset +: 8 ]};
                    if (debug)
                      $display("Writing %h at %h", {digest[ write_offset +: 8 ], digest[ write_offset+8 +: 8 ], digest[ write_offset+16 +: 8 ],digest[ write_offset +: 8 ]}, sha_write_adr);
                    bram_addr     <= sha_write_adr;
                    bram_we       <= 4'b1111;
                    bram_en       <= 1'b1;
                    write_offset  <= write_offset + 4;
                    sha_write_adr <= sha_write_adr - 4;
                    state_bram    <= 2;
                  end
                else
                  begin
                    bytes_remaining <= bytes_remaining - olen_to_write;
                    bram_we         <= 4'b0000;
                    bram_en         <= 1'b0;
                    write_offset    <= 32'b0;
                    state_bram      <= 1;
                  end
              end

            // ----------- read bram
            3:
              begin
                bram_addr  <= read_adr;
                bram_en    <= 1'b1;
                state_bram <= 4;
              end

            4:
              begin
                state_bram <= 5;
              end

            5:
              begin
                block[ 31 : 0 ] <= bram_dout;
                bram_addr       <= sha_read_adr +4;
                bram_en         <= 1'b1;
                state_bram      <= 6;
              end

            6:
              begin
                state_bram <= 7;
              end

            7:
              begin
                sha_read_adr     <= sha_read_adr +8;
                block[ 63 : 32 ] <= bram_dout;
                bram_en          <= 1'b0 ;
                state_bram       <= 1;
              end

            default:
              state_bram <= 0;
          endcase
        end
    end

  reg [31 : 0] perf_counter = 0;

  always @( posedge clk )
    begin
      if (rst)
        begin
          perf_counter <= 0;
        end
      else
        begin
          perf_counter <= perf_counter +1;
        end
    end
  assign sha3_rst_n = ~rst;

  sha3_64 sha3_inst (
            .clk( clk ),
            .rst_n( sha3_rst_n ),
            .SHAmode( sha3_SHAmode ),
            .ASmode( sha3_ASmode ),
            .start( sha3_start ),
            .ready( sha3_ready ),
            .we( sha3_we ),
            .address( sha3_address ),
            .data_in( sha3_data_in ),
            .data_out( sha3_data_out )

          ) ;

endmodule
