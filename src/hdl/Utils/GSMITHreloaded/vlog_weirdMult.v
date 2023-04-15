module weirdMult(
    input clk,
    input rst,
    input enable,
    input load,
    input [7:0] data_in,
    output reg [7:0] data_out,
    output reg done
);

    reg [7:0] r = 8'b0;
    reg [15:0] tmp = 16'b0;

		always @(posedge clk) begin
			if (rst == 1'b1) begin
				r <= 8'b0;
			end
			else begin
				if (load == 1'b1 && enable == 1'b0) begin
					r <= data_in;
				end
				else if (load == 1'b0 && enable == 1'b1) begin
					tmp      <= r * r;
					r        <= tmp[7:0];
					data_out <= tmp[7:0];
				end
				else begin
					r <= r;
				end
			end
		end
endmodule