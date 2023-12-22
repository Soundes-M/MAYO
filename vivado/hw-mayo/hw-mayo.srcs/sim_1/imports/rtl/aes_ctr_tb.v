`timescale 1ns / 1ps

module tb_aes_128_ctr;

  reg clk;
  reg rst;
  reg en;
  wire o_valid;
  wire [127:0] o_random_data;

  // Instantiate the aes_128_ctr module
  aes_128_ctr uut (
    .clk(clk),
    .rst(rst),
    .en(en),
    .o_valid(o_valid),
    .o_random_data(o_random_data),
  );

  // Clock generation
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  // Initial stimulus
  initial begin
    rst = 1;
    en = 0;

    #10 rst = 0;
    en = 1;

    // Wait for o_valid to be asserted
    wait(o_valid);

    // Read 10 random values
    repeat (10) begin
      #10; // Advance simulation time
      $display("Random value: %h", {o_random_data});
    end
    
    #10 en = 0;
    
    #20 en = 1;
    
    wait(o_valid);
    #10; // Advance simulation time
    $display("Random value: %h", {o_random_data});

    // End simulation
    $stop;
  end

endmodule
