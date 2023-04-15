module comb_SA (
  input wire functionA,
  input wire clk,
  input wire rst,
  input start,
  input finish,
  input wire [9:0] op_in,
  input wire [4:0] data,
  output reg [4:0] data_out,
  output wire [9:0] op_out,
  output wire r_A_and
);

  reg [4 : 0] functionA_dup;

  reg [4 : 1] start_tmp;
  reg [4 : 1] start_row;

  reg [4 : 1] finish_tmp;
  reg [4 : 1] finish_in;
  wire [4 : 0] finish_out;

  always @(posedge clk) begin
    functionA_dup[0] <= functionA;
    functionA_dup[1] <= functionA;
    functionA_dup[2] <= functionA;
    functionA_dup[3] <= functionA;
    functionA_dup[4] <= functionA;

    start_tmp[1] <= start;
    start_row[1] <= start_tmp[1];
    start_tmp[2] <= start_row[1];
    start_row[2] <= start_tmp[2];
    start_tmp[3] <= start_row[2];
    start_row[3] <= start_tmp[3];
    start_tmp[4] <= start_row[3];
    start_row[4] <= start_tmp[4];

    finish_tmp[1] <= finish_out[0];
    finish_in[1]  <= finish_tmp[1];
    finish_tmp[2] <= finish_out[1];
    finish_in[2]  <= finish_tmp[2];
    finish_tmp[3] <= finish_out[2];
    finish_in[3]  <= finish_tmp[3];
    finish_tmp[4] <= finish_out[3];
    finish_in[4]  <= finish_tmp[4];
  end

  /////////////////////////////////////
  // row 0
  // row 0, col 0

  wire start_in_0_0;
  wire start_out_0_0;

  wire [1:0] op_in_0_0;
  wire [1:0] op_out_0_0;

  wire r_0_0;

  wire data_in_0_0;
  wire data_out_0_0;

  assign data_in_0_0 = data[0];

  assign start_in_0_0 = start;
  assign op_in_0_0 = op_in[1:0];

  processor_AB AB_0_0 (
    .functionA  (functionA_dup[0]),
    .clk        (clk),
    .rst        (rst),
    .data_in    (data_in_0_0),
    .start_in   (start_in_0_0),
    .finish_in  (finish),
    .finish_out (finish_out[0]),
    .op_in      (op_in_0_0),
    .op_out     (op_out_0_0),
    .start_out  (start_out_0_0),
    .data_out   (data_out_0_0),
    .r          (r_0_0)
  );

  // row 0, col 1

  wire start_in_0_1;
  wire start_out_0_1;

  wire [1:0] op_in_0_1;
  wire [1:0] op_out_0_1;

  wire data_in_0_1;
  wire data_out_0_1;

  assign data_in_0_1 = data[1];

  assign start_in_0_1 = start_out_0_0;
  assign op_in_0_1 = op_out_0_0;

  processor_B B_0_1 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_0_1),
    .start_in  (start_in_0_1),
    .op_in     (op_in_0_1),
    .op_out    (op_out_0_1),
    .start_out (start_out_0_1),
    .data_out  (data_out_0_1)
  );

  // row 0, col 2

  wire start_in_0_2;
  wire start_out_0_2;

  wire [1:0] op_in_0_2;
  wire [1:0] op_out_0_2;

  wire data_in_0_2;
  wire data_out_0_2;

  assign data_in_0_2 = data[2];

  assign start_in_0_2 = start_out_0_1;
  assign op_in_0_2 = op_out_0_1;

  processor_B B_0_2 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_0_2),
    .start_in  (start_in_0_2),
    .op_in     (op_in_0_2),
    .op_out    (op_out_0_2),
    .start_out (start_out_0_2),
    .data_out  (data_out_0_2)
  );

  // row 0, col 3

  wire start_in_0_3;
  wire start_out_0_3;

  wire [1:0] op_in_0_3;
  wire [1:0] op_out_0_3;

  wire data_in_0_3;
  wire data_out_0_3;

  assign data_in_0_3 = data[3];

  assign start_in_0_3 = start_out_0_2;
  assign op_in_0_3 = op_out_0_2;

  processor_B B_0_3 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_0_3),
    .start_in  (start_in_0_3),
    .op_in     (op_in_0_3),
    .op_out    (op_out_0_3),
    .start_out (start_out_0_3),
    .data_out  (data_out_0_3)
  );

  // row 0, col 4

  wire start_in_0_4;
  wire start_out_0_4;

  wire [1:0] op_in_0_4;
  wire [1:0] op_out_0_4;

  wire data_in_0_4;
  wire data_out_0_4;

  assign data_in_0_4 = data[4];

  assign start_in_0_4 = start_out_0_3;
  assign op_in_0_4 = op_out_0_3;

  processor_B B_0_4 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_0_4),
    .start_in  (start_in_0_4),
    .op_in     (op_in_0_4),
    .op_out    (op_out_0_4),
    .start_out (start_out_0_4),
    .data_out  (data_out_0_4)
  );

  /////////////////////////////////////
  // row 1
  // row 1, col 0

  wire start_in_1_0;
  wire start_out_1_0;

  wire [1:0] op_in_1_0;
  wire [1:0] op_out_1_0;

  reg data_in_1_0;
  wire data_out_1_0;

  always @(posedge clk) begin
    data_in_1_0 <= data_out_0_0;
  end

  assign start_in_1_0 = start_row[1];
  assign op_in_1_0 = op_in[3:2];

  processor_B B_1_0 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_1_0),
    .start_in  (start_in_1_0),
    .op_in     (op_in_1_0),
    .op_out    (op_out_1_0),
    .start_out (start_out_1_0),
    .data_out  (data_out_1_0)
  );

  // row 1, col 1

  wire start_in_1_1;
  wire start_out_1_1;

  wire [1:0] op_in_1_1;
  wire [1:0] op_out_1_1;

  wire r_1_1;

  reg data_in_1_1;
  wire data_out_1_1;

  always @(posedge clk) begin
    data_in_1_1 <= data_out_0_1;
  end

  assign start_in_1_1 = start_out_1_0;
  assign op_in_1_1 = op_out_1_0;

  processor_AB AB_1_1 (
    .functionA  (functionA_dup[1]),
    .clk        (clk),
    .rst        (rst),
    .data_in    (data_in_1_1),
    .start_in   (start_in_1_1),
    .finish_in  (finish_in[1]),
    .finish_out (finish_out[1]),
    .op_in      (op_in_1_1),
    .op_out     (op_out_1_1),
    .start_out  (start_out_1_1),
    .data_out   (data_out_1_1),
    .r          (r_1_1)
  );

  // row 1, col 2

  wire start_in_1_2;
  wire start_out_1_2;

  wire [1:0] op_in_1_2;
  wire [1:0] op_out_1_2;

  reg data_in_1_2;
  wire data_out_1_2;

  always @(posedge clk) begin
    data_in_1_2 <= data_out_0_2;
  end

  assign start_in_1_2 = start_out_1_1;
  assign op_in_1_2 = op_out_1_1;

  processor_B B_1_2 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_1_2),
    .start_in  (start_in_1_2),
    .op_in     (op_in_1_2),
    .op_out    (op_out_1_2),
    .start_out (start_out_1_2),
    .data_out  (data_out_1_2)
  );

  // row 1, col 3

  wire start_in_1_3;
  wire start_out_1_3;

  wire [1:0] op_in_1_3;
  wire [1:0] op_out_1_3;

  reg data_in_1_3;
  wire data_out_1_3;

  always @(posedge clk) begin
    data_in_1_3 <= data_out_0_3;
  end

  assign start_in_1_3 = start_out_1_2;
  assign op_in_1_3 = op_out_1_2;

  processor_B B_1_3 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_1_3),
    .start_in  (start_in_1_3),
    .op_in     (op_in_1_3),
    .op_out    (op_out_1_3),
    .start_out (start_out_1_3),
    .data_out  (data_out_1_3)
  );

  // row 1, col 4

  wire start_in_1_4;
  wire start_out_1_4;

  wire [1:0] op_in_1_4;
  wire [1:0] op_out_1_4;

  reg data_in_1_4;
  wire data_out_1_4;

  always @(posedge clk) begin
    data_in_1_4 <= data_out_0_4;
  end

  assign start_in_1_4 = start_out_1_3;
  assign op_in_1_4 = op_out_1_3;

  processor_B B_1_4 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_1_4),
    .start_in  (start_in_1_4),
    .op_in     (op_in_1_4),
    .op_out    (op_out_1_4),
    .start_out (start_out_1_4),
    .data_out  (data_out_1_4)
  );

  /////////////////////////////////////
  // row 2
  // row 2, col 0

  wire start_in_2_0;
  wire start_out_2_0;

  wire [1:0] op_in_2_0;
  wire [1:0] op_out_2_0;

  reg data_in_2_0;
  wire data_out_2_0;

  always @(posedge clk) begin
    data_in_2_0 <= data_out_1_0;
  end

  assign start_in_2_0 = start_row[2];
  assign op_in_2_0 = op_in[5:4];

  processor_B B_2_0 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_2_0),
    .start_in  (start_in_2_0),
    .op_in     (op_in_2_0),
    .op_out    (op_out_2_0),
    .start_out (start_out_2_0),
    .data_out  (data_out_2_0)
  );

  // row 2, col 1

  wire start_in_2_1;
  wire start_out_2_1;

  wire [1:0] op_in_2_1;
  wire [1:0] op_out_2_1;

  reg data_in_2_1;
  wire data_out_2_1;

  always @(posedge clk) begin
    data_in_2_1 <= data_out_1_1;
  end

  assign start_in_2_1 = start_out_2_0;
  assign op_in_2_1 = op_out_2_0;

  processor_B B_2_1 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_2_1),
    .start_in  (start_in_2_1),
    .op_in     (op_in_2_1),
    .op_out    (op_out_2_1),
    .start_out (start_out_2_1),
    .data_out  (data_out_2_1)
  );

  // row 2, col 2

  wire start_in_2_2;
  wire start_out_2_2;

  wire [1:0] op_in_2_2;
  wire [1:0] op_out_2_2;

  wire r_2_2;

  reg data_in_2_2;
  wire data_out_2_2;

  always @(posedge clk) begin
    data_in_2_2 <= data_out_1_2;
  end

  assign start_in_2_2 = start_out_2_1;
  assign op_in_2_2 = op_out_2_1;

  processor_AB AB_2_2 (
    .functionA  (functionA_dup[2]),
    .clk        (clk),
    .rst        (rst),
    .data_in    (data_in_2_2),
    .start_in   (start_in_2_2),
    .finish_in  (finish_in[2]),
    .finish_out (finish_out[2]),
    .op_in      (op_in_2_2),
    .op_out     (op_out_2_2),
    .start_out  (start_out_2_2),
    .data_out   (data_out_2_2),
    .r          (r_2_2)
  );

  // row 2, col 3

  wire start_in_2_3;
  wire start_out_2_3;

  wire [1:0] op_in_2_3;
  wire [1:0] op_out_2_3;

  reg data_in_2_3;
  wire data_out_2_3;

  always @(posedge clk) begin
    data_in_2_3 <= data_out_1_3;
  end

  assign start_in_2_3 = start_out_2_2;
  assign op_in_2_3 = op_out_2_2;

  processor_B B_2_3 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_2_3),
    .start_in  (start_in_2_3),
    .op_in     (op_in_2_3),
    .op_out    (op_out_2_3),
    .start_out (start_out_2_3),
    .data_out  (data_out_2_3)
  );

  // row 2, col 4

  wire start_in_2_4;
  wire start_out_2_4;

  wire [1:0] op_in_2_4;
  wire [1:0] op_out_2_4;

  reg data_in_2_4;
  wire data_out_2_4;

  always @(posedge clk) begin
    data_in_2_4 <= data_out_1_4;
  end

  assign start_in_2_4 = start_out_2_3;
  assign op_in_2_4 = op_out_2_3;

  processor_B B_2_4 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_2_4),
    .start_in  (start_in_2_4),
    .op_in     (op_in_2_4),
    .op_out    (op_out_2_4),
    .start_out (start_out_2_4),
    .data_out  (data_out_2_4)
  );

  /////////////////////////////////////
  // row 3
  // row 3, col 0

  wire start_in_3_0;
  wire start_out_3_0;

  wire [1:0] op_in_3_0;
  wire [1:0] op_out_3_0;

  reg data_in_3_0;
  wire data_out_3_0;

  always @(posedge clk) begin
    data_in_3_0 <= data_out_2_0;
  end

  assign start_in_3_0 = start_row[3];
  assign op_in_3_0 = op_in[7:6];

  processor_B B_3_0 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_3_0),
    .start_in  (start_in_3_0),
    .op_in     (op_in_3_0),
    .op_out    (op_out_3_0),
    .start_out (start_out_3_0),
    .data_out  (data_out_3_0)
  );

  // row 3, col 1

  wire start_in_3_1;
  wire start_out_3_1;

  wire [1:0] op_in_3_1;
  wire [1:0] op_out_3_1;

  reg data_in_3_1;
  wire data_out_3_1;

  always @(posedge clk) begin
    data_in_3_1 <= data_out_2_1;
  end

  assign start_in_3_1 = start_out_3_0;
  assign op_in_3_1 = op_out_3_0;

  processor_B B_3_1 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_3_1),
    .start_in  (start_in_3_1),
    .op_in     (op_in_3_1),
    .op_out    (op_out_3_1),
    .start_out (start_out_3_1),
    .data_out  (data_out_3_1)
  );

  // row 3, col 2

  wire start_in_3_2;
  wire start_out_3_2;

  wire [1:0] op_in_3_2;
  wire [1:0] op_out_3_2;

  reg data_in_3_2;
  wire data_out_3_2;

  always @(posedge clk) begin
    data_in_3_2 <= data_out_2_2;
  end

  assign start_in_3_2 = start_out_3_1;
  assign op_in_3_2 = op_out_3_1;

  processor_B B_3_2 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_3_2),
    .start_in  (start_in_3_2),
    .op_in     (op_in_3_2),
    .op_out    (op_out_3_2),
    .start_out (start_out_3_2),
    .data_out  (data_out_3_2)
  );

  // row 3, col 3

  wire start_in_3_3;
  wire start_out_3_3;

  wire [1:0] op_in_3_3;
  wire [1:0] op_out_3_3;

  wire r_3_3;

  reg data_in_3_3;
  wire data_out_3_3;

  always @(posedge clk) begin
    data_in_3_3 <= data_out_2_3;
  end

  assign start_in_3_3 = start_out_3_2;
  assign op_in_3_3 = op_out_3_2;

  processor_AB AB_3_3 (
    .functionA  (functionA_dup[3]),
    .clk        (clk),
    .rst        (rst),
    .data_in    (data_in_3_3),
    .start_in   (start_in_3_3),
    .finish_in  (finish_in[3]),
    .finish_out (finish_out[3]),
    .op_in      (op_in_3_3),
    .op_out     (op_out_3_3),
    .start_out  (start_out_3_3),
    .data_out   (data_out_3_3),
    .r          (r_3_3)
  );

  // row 3, col 4

  wire start_in_3_4;
  wire start_out_3_4;

  wire [1:0] op_in_3_4;
  wire [1:0] op_out_3_4;

  reg data_in_3_4;
  wire data_out_3_4;

  always @(posedge clk) begin
    data_in_3_4 <= data_out_2_4;
  end

  assign start_in_3_4 = start_out_3_3;
  assign op_in_3_4 = op_out_3_3;

  processor_B B_3_4 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_3_4),
    .start_in  (start_in_3_4),
    .op_in     (op_in_3_4),
    .op_out    (op_out_3_4),
    .start_out (start_out_3_4),
    .data_out  (data_out_3_4)
  );

  /////////////////////////////////////
  // row 4
  // row 4, col 0

  wire start_in_4_0;
  wire start_out_4_0;

  wire [1:0] op_in_4_0;
  wire [1:0] op_out_4_0;

  reg data_in_4_0;
  wire data_out_4_0;

  always @(posedge clk) begin
    data_in_4_0 <= data_out_3_0;
  end

  assign start_in_4_0 = start_row[4];
  assign op_in_4_0 = op_in[9:8];

  processor_B B_4_0 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_4_0),
    .start_in  (start_in_4_0),
    .op_in     (op_in_4_0),
    .op_out    (op_out_4_0),
    .start_out (start_out_4_0),
    .data_out  (data_out_4_0)
  );

  // row 4, col 1

  wire start_in_4_1;
  wire start_out_4_1;

  wire [1:0] op_in_4_1;
  wire [1:0] op_out_4_1;

  reg data_in_4_1;
  wire data_out_4_1;

  always @(posedge clk) begin
    data_in_4_1 <= data_out_3_1;
  end

  assign start_in_4_1 = start_out_4_0;
  assign op_in_4_1 = op_out_4_0;

  processor_B B_4_1 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_4_1),
    .start_in  (start_in_4_1),
    .op_in     (op_in_4_1),
    .op_out    (op_out_4_1),
    .start_out (start_out_4_1),
    .data_out  (data_out_4_1)
  );

  // row 4, col 2

  wire start_in_4_2;
  wire start_out_4_2;

  wire [1:0] op_in_4_2;
  wire [1:0] op_out_4_2;

  reg data_in_4_2;
  wire data_out_4_2;

  always @(posedge clk) begin
    data_in_4_2 <= data_out_3_2;
  end

  assign start_in_4_2 = start_out_4_1;
  assign op_in_4_2 = op_out_4_1;

  processor_B B_4_2 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_4_2),
    .start_in  (start_in_4_2),
    .op_in     (op_in_4_2),
    .op_out    (op_out_4_2),
    .start_out (start_out_4_2),
    .data_out  (data_out_4_2)
  );

  // row 4, col 3

  wire start_in_4_3;
  wire start_out_4_3;

  wire [1:0] op_in_4_3;
  wire [1:0] op_out_4_3;

  reg data_in_4_3;
  wire data_out_4_3;

  always @(posedge clk) begin
    data_in_4_3 <= data_out_3_3;
  end

  assign start_in_4_3 = start_out_4_2;
  assign op_in_4_3 = op_out_4_2;

  processor_B B_4_3 (
    .clk       (clk),
    .rst       (rst),
    .data_in   (data_in_4_3),
    .start_in  (start_in_4_3),
    .op_in     (op_in_4_3),
    .op_out    (op_out_4_3),
    .start_out (start_out_4_3),
    .data_out  (data_out_4_3)
  );

  // row 4, col 4

  wire start_in_4_4;
  wire start_out_4_4;

  wire [1:0] op_in_4_4;
  wire [1:0] op_out_4_4;

  wire r_4_4;

  reg data_in_4_4;
  wire data_out_4_4;

  always @(posedge clk) begin
    data_in_4_4 <= data_out_3_4;
  end

  assign start_in_4_4 = start_out_4_3;
  assign op_in_4_4 = op_out_4_3;

  processor_AB AB_4_4 (
    .functionA  (functionA_dup[4]),
    .clk        (clk),
    .rst        (rst),
    .data_in    (data_in_4_4),
    .start_in   (start_in_4_4),
    .finish_in  (finish_in[4]),
    .finish_out (finish_out[4]),
    .op_in      (op_in_4_4),
    .op_out     (op_out_4_4),
    .start_out  (start_out_4_4),
    .data_out   (data_out_4_4),
    .r          (r_4_4)
  );


  /////////////////////////
  // outputs 

  always @(posedge clk) begin
    data_out[0] <= data_out_4_0;
    data_out[1] <= data_out_4_1;
    data_out[2] <= data_out_4_2;
    data_out[3] <= data_out_4_3;
    data_out[4] <= data_out_4_4;
  end

  assign op_out[1:0] = op_out_0_4;
  assign op_out[3:2] = op_out_1_4;
  assign op_out[5:4] = op_out_2_4;
  assign op_out[7:6] = op_out_3_4;
  assign op_out[9:8] = op_out_4_4;

  assign r_A_and = r_0_0 && r_1_1 && r_2_2 && r_3_3 && r_4_4;

endmodule

