/*
* AES 128 in CTR Mode Module
*/

module aes_128_ctr(
    input wire clk,
    input wire rst,
    input wire en,
    output wire o_valid,
    output wire [127 : 0] o_random_data);

  parameter DEBUG     = 0;

  parameter ADDR_CTRL        = 8'h08;
  parameter ADDR_CONFIG      = 8'h0a;

  parameter ADDR_KEY0        = 8'h10;
  parameter ADDR_KEY1        = 8'h11;
  parameter ADDR_KEY2        = 8'h12;
  parameter ADDR_KEY3        = 8'h13;
  parameter ADDR_KEY4        = 8'h14;
  parameter ADDR_KEY5        = 8'h15;
  parameter ADDR_KEY6        = 8'h16;
  parameter ADDR_KEY7        = 8'h17;

  parameter ADDR_BLOCK0      = 8'h20;
  parameter ADDR_BLOCK1      = 8'h21;
  parameter ADDR_BLOCK2      = 8'h22;
  parameter ADDR_BLOCK3      = 8'h23;

  parameter ADDR_RESULT0     = 8'h30;
  parameter ADDR_RESULT1     = 8'h31;
  parameter ADDR_RESULT2     = 8'h32;
  parameter ADDR_RESULT3     = 8'h33;

  parameter AES_128_BIT_KEY = 0;
  parameter AES_ENCIPHER = 1'b1;

  localparam SEED = 5; // RANDOM 'SEED'
  localparam KEY = 256'ha1b2c3d4e5f647890123456789abcdef1234567890abcdef0987654321fedcba; // ENCRYPTION KEY
  localparam KEY_LENGTH = AES_128_BIT_KEY;

  reg [127 : 0] counter = SEED;
  reg [255 : 0] key = KEY;
  reg [127 : 0] random = 128'b0;
  reg data_is_ready = 1'b0;

  wire          aes_reset_n;
  wire          aes_cs;
  wire          aes_we;
  reg [7  : 0]  aes_address = 8'b0;
  reg [31 : 0]  aes_write_data = 32'b0;
  wire [31 : 0] aes_read_data;

  reg w_aes_cs = 1'b0;
  reg w_aes_we = 1'b0;
  reg r_aes_cs = 1'b0;
  reg r_aes_we = 1'b0;

  reg [8:0] wait_ctr = 9'b0;
  reg ctr_increment = 1'b0;
  reg write_a_word = 1'b0;
  reg write_word_done = 1'b0;

  reg [8:0] state;

  assign aes_reset_n = ~rst;

  assign aes_cs = write_a_word ? w_aes_cs : r_aes_cs;
  assign aes_we = write_a_word ? w_aes_we : r_aes_we;

  aes aes(
        .clk(clk),
        .reset_n(aes_reset_n),
        .cs(aes_cs),
        .we(aes_we),
        .address(aes_address),
        .write_data(aes_write_data),
        .read_data(aes_read_data)
      );

  task write_word(input [7:0] address, input [31: 0] word);
    begin
      aes_address <= address;
      aes_write_data <= word; // 32 bits words
      write_a_word <= 1'b1;
    end
  endtask

  always @(posedge clk )
    begin
      if (rst)
        begin
          ctr_increment <= 1'b0;
          write_a_word <= 1'b0;
          aes_address <= 8'b0;
          aes_write_data <= 32'b0;
          r_aes_cs <= 1'b0;
          r_aes_we <= 1'b0;
          state <= 24;
        end
      else
        begin
          case (state)
            24:
              begin
                state <= 0;
              end
            //----------------------------------------------------------------
            // init_key
            //----------------------------------------------------------------
            0:
              begin
                write_word(ADDR_KEY0, key[255 : 224]);
                state <= 1;
              end
            1 :
              begin
                if (write_word_done)
                  begin
                    write_word(ADDR_KEY1, key[223 : 192]);
                    state <= 2;
                  end
              end
            2 :
              begin
                if (write_word_done)
                  begin
                    write_word(ADDR_KEY2, key[191 : 160]);
                    state <= 3;
                  end
              end
            3:
              begin
                if (write_word_done)
                  begin
                    write_word(ADDR_KEY3, key[159 : 128]);
                    state <= 4;
                  end
              end
            4:
              begin
                if (write_word_done)
                  begin
                    write_word(ADDR_KEY4, key[127 : 96]);
                    state <= 5;
                  end
              end
            5 :
              begin
                if (write_word_done)
                  begin
                    write_word(ADDR_KEY5, key[95 : 64]);
                    state <= 6;
                  end
              end
            6 :
              begin
                if (write_word_done)
                  begin
                    write_word(ADDR_KEY6, key[63 : 32]);
                    state <= 7;
                  end
              end
            7:
              begin
                if (write_word_done)
                  begin
                    write_word(ADDR_KEY7, key[31 : 0]);
                    state <= 8;
                  end
              end
            8:
              begin
                if (write_word_done)
                  begin
                    write_word(ADDR_CONFIG, 8'h00);
                    state <= 9;
                  end
              end
            9:
              begin
                if (write_word_done)
                  begin
                    write_word(ADDR_CTRL, 8'h01);
                    wait_ctr <= 8'b0;
                    state <= 10;
                  end
              end
            10:
              begin
                if (wait_ctr < 100) // wait 100 clocks
                  wait_ctr <= wait_ctr +1;
                else
                  state <= 11;
              end
            //----------------------------------------------------------------
            // write block/counter
            //----------------------------------------------------------------
            11:
              begin
                if(!data_is_ready)
                  begin
                    write_word(ADDR_BLOCK0, counter[127:96]);
                    state <= 12;
                  end
              end
            12:
              begin
                if(write_word_done)
                  begin
                    write_word(ADDR_BLOCK1, counter[95:64]);
                    state <= 13;
                  end
              end
            13:
              begin
                if(write_word_done)
                  begin
                    write_word(ADDR_BLOCK2, counter[63:32]);
                    state <= 14;
                  end
              end
            14:
              begin
                if(write_word_done)
                  begin
                    write_word(ADDR_BLOCK3, counter[31:0]);
                    state <= 15;
                  end
              end
            15:
              begin
                if(write_word_done)
                  begin
                    ctr_increment <= 1'b1;
                    write_word(ADDR_CONFIG, (8'h00 + (KEY_LENGTH << 1)+ AES_ENCIPHER));
                    state <= 16;
                  end
              end
            16:
              begin
                if(write_word_done)
                  begin
                    ctr_increment <= 1'b0;
                    write_word(ADDR_CTRL, 8'h02);
                    wait_ctr <= 8'b0;
                    state <= 17;
                  end
              end
            17:
              begin
                write_a_word <= 1'b0;
                if (wait_ctr < 100) // wait 100 clocks
                  wait_ctr <= wait_ctr +1;
                else
                  state <= 18;
              end
            //----------------------------------------------------------------
            // read_result()
            //----------------------------------------------------------------
            18:
              begin
                aes_address <= ADDR_RESULT0;
                r_aes_cs = 1;
                r_aes_we = 0;
                state <= 19;
              end
            19:
              begin
                random[127 : 96] <= aes_read_data;
                aes_address <= ADDR_RESULT1;
                r_aes_cs = 1;
                r_aes_we = 0;
                state <= 20;
              end
            20:
              begin
                random[95 : 64] <= aes_read_data;
                aes_address <= ADDR_RESULT2;
                r_aes_cs = 1;
                r_aes_we = 0;
                state <= 21;
              end
            21:
              begin
                random[63 : 32] <= aes_read_data;
                aes_address <= ADDR_RESULT3;
                r_aes_cs = 1;
                r_aes_we = 0;
                state <= 22;
              end
            22:
              begin
                random[31 : 0] <= aes_read_data;
                aes_address <= ADDR_RESULT0;
                r_aes_cs = 1;
                r_aes_we = 0;
                state <= 23;
              end
            23:
              begin
                r_aes_cs = 0;
                r_aes_we = 0;
                state <= 11;
              end
            default:
              state <= 24;
          endcase
        end
    end

  always @(posedge clk )
    begin
      if (rst)
        begin
          data_is_ready <= 1'b0;
        end
      else
        begin
          if (state == 22)
            begin
              data_is_ready <= 1'b1;
            end
          else if(state != 22 && data_is_ready && en ) // data ready and actually read
            begin
              data_is_ready <= 1'b0;
            end
          else
            data_is_ready <= data_is_ready; // wait for read
        end
    end

  assign o_valid = en ? data_is_ready : 0;

  reg [3:0] state_write;
  // write_word fsm
  always @(posedge clk)
    begin
      if (rst)
        begin
          write_word_done <= 1'b0;
          w_aes_cs <= 1'b0;
          w_aes_we <= 1'b0;
          state_write <= 0;
        end
      else
        begin
          case (state_write)
            0:
              begin
                if (write_a_word)
                  begin
                    if (DEBUG)
                      begin
                        $display("*** Writing 0x%08x to 0x%02x.", aes_write_data, aes_address);
                        $display("");
                      end
                    w_aes_cs <= 1;
                    w_aes_we <= 1;
                    state_write <= 1;
                  end
              end
            1:
              begin
                write_word_done <= 1'b1;
                w_aes_cs <= 1;
                w_aes_we <= 1;
                state_write <= 2;
              end
            2:
              begin
                write_word_done <= 1'b0;
                if (write_a_word)
                  begin
                    w_aes_cs <= 1;
                    w_aes_we <= 1;
                    state_write <= 1;
                  end
                else
                  state_write <= 0;
              end
            default:
              state_write <= 0;
          endcase
        end
    end

  // counter CTR increment
  always @(posedge clk)
    begin
      if (rst)
        begin
          counter <= SEED;
        end
      else if (ctr_increment)
        begin
          counter <= counter + 1;
        end
    end

  assign o_random_data = (data_is_ready && en) ? random: 0;

endmodule
