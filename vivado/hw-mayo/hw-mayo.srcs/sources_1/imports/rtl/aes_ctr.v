/*
* AES 128 in CTR Mode Module
*/

module aes_128_ctr(clk, rst, en, o_valid, o_random_data);
  input clk;
  input en;
  input rst;
  output o_valid;
  output [127 : 0] o_random_data;


  localparam SEED = 5; // RANDOM 'SEED'
  localparam KEY = 128'hdeadbeefdeadbeefdeadbeefdeadbeef; // ENCRYPTION KEY

  reg [127 : 0] counter = SEED;
  reg [127 : 0] key = KEY;

  reg [4 : 0] delay_ctr;
  reg data_is_ready;

  wire [127 : 0] state;
  wire [127 : 0] out;

  aes_128 aes (
            .clk(clk),
            .state(state),
            .key(key),
            .out(out)
          );

  // delay counter
  always @(posedge clk)
    begin
      if (rst)
        begin
          delay_ctr <= 0;
          data_is_ready <= 1'b0;
        end
      else
        begin
          if (delay_ctr < 21 && !data_is_ready)
            begin // 21 delay
              delay_ctr <= delay_ctr + 1;
            end
          else
            begin
              delay_ctr <= 0;
              data_is_ready <= 1'b1;
            end
        end
    end
  assign o_valid = en ? data_is_ready : 0;

  // counter CTR increment
  always @(posedge clk)
    begin
      if (rst)
        begin
          counter <= SEED;
        end
      else if (en)
        begin
          counter <= counter + 1;
        end
    end
  assign state = counter;

  assign o_random_data = (data_is_ready && en) ? out: 0;

endmodule
