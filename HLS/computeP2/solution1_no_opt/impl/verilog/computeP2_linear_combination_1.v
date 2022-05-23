// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module computeP2_linear_combination_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        coeffs_read,
        out_r,
        out_r_ap_vld,
        vecs_address0,
        vecs_ce0,
        vecs_q0,
        vecs_offset
);

parameter    ap_ST_fsm_state1 = 46'd1;
parameter    ap_ST_fsm_state2 = 46'd2;
parameter    ap_ST_fsm_state3 = 46'd4;
parameter    ap_ST_fsm_state4 = 46'd8;
parameter    ap_ST_fsm_state5 = 46'd16;
parameter    ap_ST_fsm_state6 = 46'd32;
parameter    ap_ST_fsm_state7 = 46'd64;
parameter    ap_ST_fsm_state8 = 46'd128;
parameter    ap_ST_fsm_state9 = 46'd256;
parameter    ap_ST_fsm_state10 = 46'd512;
parameter    ap_ST_fsm_state11 = 46'd1024;
parameter    ap_ST_fsm_state12 = 46'd2048;
parameter    ap_ST_fsm_state13 = 46'd4096;
parameter    ap_ST_fsm_state14 = 46'd8192;
parameter    ap_ST_fsm_state15 = 46'd16384;
parameter    ap_ST_fsm_state16 = 46'd32768;
parameter    ap_ST_fsm_state17 = 46'd65536;
parameter    ap_ST_fsm_state18 = 46'd131072;
parameter    ap_ST_fsm_state19 = 46'd262144;
parameter    ap_ST_fsm_state20 = 46'd524288;
parameter    ap_ST_fsm_state21 = 46'd1048576;
parameter    ap_ST_fsm_state22 = 46'd2097152;
parameter    ap_ST_fsm_state23 = 46'd4194304;
parameter    ap_ST_fsm_state24 = 46'd8388608;
parameter    ap_ST_fsm_state25 = 46'd16777216;
parameter    ap_ST_fsm_state26 = 46'd33554432;
parameter    ap_ST_fsm_state27 = 46'd67108864;
parameter    ap_ST_fsm_state28 = 46'd134217728;
parameter    ap_ST_fsm_state29 = 46'd268435456;
parameter    ap_ST_fsm_state30 = 46'd536870912;
parameter    ap_ST_fsm_state31 = 46'd1073741824;
parameter    ap_ST_fsm_state32 = 46'd2147483648;
parameter    ap_ST_fsm_state33 = 46'd4294967296;
parameter    ap_ST_fsm_state34 = 46'd8589934592;
parameter    ap_ST_fsm_state35 = 46'd17179869184;
parameter    ap_ST_fsm_state36 = 46'd34359738368;
parameter    ap_ST_fsm_state37 = 46'd68719476736;
parameter    ap_ST_fsm_state38 = 46'd137438953472;
parameter    ap_ST_fsm_state39 = 46'd274877906944;
parameter    ap_ST_fsm_state40 = 46'd549755813888;
parameter    ap_ST_fsm_state41 = 46'd1099511627776;
parameter    ap_ST_fsm_state42 = 46'd2199023255552;
parameter    ap_ST_fsm_state43 = 46'd4398046511104;
parameter    ap_ST_fsm_state44 = 46'd8796093022208;
parameter    ap_ST_fsm_state45 = 46'd17592186044416;
parameter    ap_ST_fsm_state46 = 46'd35184372088832;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [7:0] coeffs_read;
output  [7:0] out_r;
output   out_r_ap_vld;
output  [14:0] vecs_address0;
output   vecs_ce0;
input  [7:0] vecs_q0;
input  [14:0] vecs_offset;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg out_r_ap_vld;
reg vecs_ce0;

(* fsm_encoding = "none" *) reg   [45:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [31:0] accumulators_q0;
reg   [31:0] reg_156;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state10;
wire   [5:0] empty_36_fu_160_p2;
wire    ap_CS_fsm_state2;
wire   [15:0] zext_ln103_fu_177_p1;
reg   [15:0] zext_ln103_reg_320;
wire   [0:0] exitcond136_fu_171_p2;
wire   [5:0] add_ln103_fu_180_p2;
reg   [5:0] add_ln103_reg_325;
wire    ap_CS_fsm_state3;
wire   [14:0] add_ln109_fu_226_p2;
reg   [14:0] add_ln109_reg_333;
wire   [0:0] icmp_ln103_fu_186_p2;
wire   [5:0] add_ln107_fu_231_p2;
reg   [5:0] add_ln107_reg_338;
wire    ap_CS_fsm_state4;
wire   [0:0] icmp_ln107_fu_246_p2;
reg   [5:0] accumulators_addr_4_reg_351;
wire    ap_CS_fsm_state5;
wire   [5:0] add_ln113_fu_266_p2;
reg   [5:0] add_ln113_reg_361;
wire    ap_CS_fsm_state9;
wire   [0:0] icmp_ln113_fu_277_p2;
reg   [5:0] accumulators_address0;
reg    accumulators_ce0;
reg    accumulators_we0;
reg   [31:0] accumulators_d0;
reg   [5:0] empty_reg_112;
reg   [5:0] i_reg_123;
reg   [5:0] j_reg_134;
wire    ap_CS_fsm_state8;
reg   [5:0] i_2_reg_145;
wire    ap_CS_fsm_state46;
wire   [63:0] p_cast2_fu_166_p1;
wire   [63:0] zext_ln109_fu_257_p1;
wire   [63:0] zext_ln107_fu_237_p1;
wire   [63:0] zext_ln113_fu_272_p1;
wire    ap_CS_fsm_state6;
wire   [31:0] grp_fu_294_p3;
wire   [11:0] p_shl_fu_192_p3;
wire   [7:0] p_shl2_fu_204_p3;
wire   [12:0] p_shl_cast_fu_200_p1;
wire   [12:0] p_shl2_cast_fu_212_p1;
wire   [12:0] empty_39_fu_216_p2;
wire  signed [14:0] sext_ln107_fu_222_p1;
wire   [14:0] zext_ln107_2_fu_242_p1;
wire   [14:0] add_ln109_3_fu_252_p2;
wire   [5:0] grp_fu_283_p1;
wire    ap_CS_fsm_state11;
wire   [7:0] grp_fu_283_p2;
wire   [7:0] grp_fu_294_p0;
wire   [7:0] grp_fu_294_p1;
reg    grp_fu_283_ap_start;
wire    grp_fu_283_ap_done;
reg   [45:0] ap_NS_fsm;
wire   [15:0] grp_fu_294_p00;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 46'd1;
end

computeP2_linear_combination_accumulators #(
    .DataWidth( 32 ),
    .AddressRange( 60 ),
    .AddressWidth( 6 ))
accumulators_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(accumulators_address0),
    .ce0(accumulators_ce0),
    .we0(accumulators_we0),
    .d0(accumulators_d0),
    .q0(accumulators_q0)
);

computeP2_urem_32ns_6ns_8_36_seq_1 #(
    .ID( 1 ),
    .NUM_STAGE( 36 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 6 ),
    .dout_WIDTH( 8 ))
urem_32ns_6ns_8_36_seq_1_U11(
    .clk(ap_clk),
    .reset(ap_rst),
    .start(grp_fu_283_ap_start),
    .done(grp_fu_283_ap_done),
    .din0(reg_156),
    .din1(grp_fu_283_p1),
    .ce(1'b1),
    .dout(grp_fu_283_p2)
);

computeP2_mac_muladd_8ns_8ns_32ns_32_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
mac_muladd_8ns_8ns_32ns_32_4_1_U12(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_294_p0),
    .din1(grp_fu_294_p1),
    .din2(accumulators_q0),
    .ce(1'b1),
    .dout(grp_fu_294_p3)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond136_fu_171_p2 == 1'd0))) begin
        empty_reg_112 <= empty_36_fu_160_p2;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        empty_reg_112 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln103_fu_186_p2 == 1'd1))) begin
        i_2_reg_145 <= 6'd0;
    end else if ((1'b1 == ap_CS_fsm_state46)) begin
        i_2_reg_145 <= add_ln113_reg_361;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond136_fu_171_p2 == 1'd1))) begin
        i_reg_123 <= 6'd0;
    end else if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln107_fu_246_p2 == 1'd1))) begin
        i_reg_123 <= add_ln103_reg_325;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln103_fu_186_p2 == 1'd0))) begin
        j_reg_134 <= 6'd0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        j_reg_134 <= add_ln107_reg_338;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln107_fu_246_p2 == 1'd0))) begin
        accumulators_addr_4_reg_351 <= zext_ln107_fu_237_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln103_reg_325 <= add_ln103_fu_180_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        add_ln107_reg_338 <= add_ln107_fu_231_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln103_fu_186_p2 == 1'd0))) begin
        add_ln109_reg_333 <= add_ln109_fu_226_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        add_ln113_reg_361 <= add_ln113_fu_266_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state7))) begin
        reg_156 <= accumulators_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond136_fu_171_p2 == 1'd1))) begin
        zext_ln103_reg_320[7 : 0] <= zext_ln103_fu_177_p1[7 : 0];
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        accumulators_address0 = zext_ln113_fu_272_p1;
    end else if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state8))) begin
        accumulators_address0 = accumulators_addr_4_reg_351;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        accumulators_address0 = p_cast2_fu_166_p1;
    end else begin
        accumulators_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9))) begin
        accumulators_ce0 = 1'b1;
    end else begin
        accumulators_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        accumulators_d0 = grp_fu_294_p3;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        accumulators_d0 = 32'd0;
    end else begin
        accumulators_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | ((1'b1 == ap_CS_fsm_state2) & (exitcond136_fu_171_p2 == 1'd0)))) begin
        accumulators_we0 = 1'b1;
    end else begin
        accumulators_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state9) & (icmp_ln113_fu_277_p2 == 1'd1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) & (icmp_ln113_fu_277_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        grp_fu_283_ap_start = 1'b1;
    end else begin
        grp_fu_283_ap_start = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state46)) begin
        out_r_ap_vld = 1'b1;
    end else begin
        out_r_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        vecs_ce0 = 1'b1;
    end else begin
        vecs_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (exitcond136_fu_171_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln103_fu_186_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln107_fu_246_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state9 : begin
            if (((1'b1 == ap_CS_fsm_state9) & (icmp_ln113_fu_277_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state22;
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state23;
        end
        ap_ST_fsm_state23 : begin
            ap_NS_fsm = ap_ST_fsm_state24;
        end
        ap_ST_fsm_state24 : begin
            ap_NS_fsm = ap_ST_fsm_state25;
        end
        ap_ST_fsm_state25 : begin
            ap_NS_fsm = ap_ST_fsm_state26;
        end
        ap_ST_fsm_state26 : begin
            ap_NS_fsm = ap_ST_fsm_state27;
        end
        ap_ST_fsm_state27 : begin
            ap_NS_fsm = ap_ST_fsm_state28;
        end
        ap_ST_fsm_state28 : begin
            ap_NS_fsm = ap_ST_fsm_state29;
        end
        ap_ST_fsm_state29 : begin
            ap_NS_fsm = ap_ST_fsm_state30;
        end
        ap_ST_fsm_state30 : begin
            ap_NS_fsm = ap_ST_fsm_state31;
        end
        ap_ST_fsm_state31 : begin
            ap_NS_fsm = ap_ST_fsm_state32;
        end
        ap_ST_fsm_state32 : begin
            ap_NS_fsm = ap_ST_fsm_state33;
        end
        ap_ST_fsm_state33 : begin
            ap_NS_fsm = ap_ST_fsm_state34;
        end
        ap_ST_fsm_state34 : begin
            ap_NS_fsm = ap_ST_fsm_state35;
        end
        ap_ST_fsm_state35 : begin
            ap_NS_fsm = ap_ST_fsm_state36;
        end
        ap_ST_fsm_state36 : begin
            ap_NS_fsm = ap_ST_fsm_state37;
        end
        ap_ST_fsm_state37 : begin
            ap_NS_fsm = ap_ST_fsm_state38;
        end
        ap_ST_fsm_state38 : begin
            ap_NS_fsm = ap_ST_fsm_state39;
        end
        ap_ST_fsm_state39 : begin
            ap_NS_fsm = ap_ST_fsm_state40;
        end
        ap_ST_fsm_state40 : begin
            ap_NS_fsm = ap_ST_fsm_state41;
        end
        ap_ST_fsm_state41 : begin
            ap_NS_fsm = ap_ST_fsm_state42;
        end
        ap_ST_fsm_state42 : begin
            ap_NS_fsm = ap_ST_fsm_state43;
        end
        ap_ST_fsm_state43 : begin
            ap_NS_fsm = ap_ST_fsm_state44;
        end
        ap_ST_fsm_state44 : begin
            ap_NS_fsm = ap_ST_fsm_state45;
        end
        ap_ST_fsm_state45 : begin
            ap_NS_fsm = ap_ST_fsm_state46;
        end
        ap_ST_fsm_state46 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln103_fu_180_p2 = (i_reg_123 + 6'd1);

assign add_ln107_fu_231_p2 = (j_reg_134 + 6'd1);

assign add_ln109_3_fu_252_p2 = (add_ln109_reg_333 + zext_ln107_2_fu_242_p1);

assign add_ln109_fu_226_p2 = ($signed(sext_ln107_fu_222_p1) + $signed(vecs_offset));

assign add_ln113_fu_266_p2 = (i_2_reg_145 + 6'd1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state46 = ap_CS_fsm[32'd45];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign empty_36_fu_160_p2 = (empty_reg_112 + 6'd1);

assign empty_39_fu_216_p2 = (p_shl_cast_fu_200_p1 - p_shl2_cast_fu_212_p1);

assign exitcond136_fu_171_p2 = ((empty_reg_112 == 6'd60) ? 1'b1 : 1'b0);

assign grp_fu_283_p1 = 32'd31;

assign grp_fu_294_p0 = grp_fu_294_p00;

assign grp_fu_294_p00 = vecs_q0;

assign grp_fu_294_p1 = zext_ln103_reg_320;

assign icmp_ln103_fu_186_p2 = ((i_reg_123 == 6'd56) ? 1'b1 : 1'b0);

assign icmp_ln107_fu_246_p2 = ((j_reg_134 == 6'd60) ? 1'b1 : 1'b0);

assign icmp_ln113_fu_277_p2 = ((i_2_reg_145 == 6'd60) ? 1'b1 : 1'b0);

assign out_r = grp_fu_283_p2[7:0];

assign p_cast2_fu_166_p1 = empty_reg_112;

assign p_shl2_cast_fu_212_p1 = p_shl2_fu_204_p3;

assign p_shl2_fu_204_p3 = {{i_reg_123}, {2'd0}};

assign p_shl_cast_fu_200_p1 = p_shl_fu_192_p3;

assign p_shl_fu_192_p3 = {{i_reg_123}, {6'd0}};

assign sext_ln107_fu_222_p1 = $signed(empty_39_fu_216_p2);

assign vecs_address0 = zext_ln109_fu_257_p1;

assign zext_ln103_fu_177_p1 = coeffs_read;

assign zext_ln107_2_fu_242_p1 = j_reg_134;

assign zext_ln107_fu_237_p1 = j_reg_134;

assign zext_ln109_fu_257_p1 = add_ln109_3_fu_252_p2;

assign zext_ln113_fu_272_p1 = i_2_reg_145;

always @ (posedge ap_clk) begin
    zext_ln103_reg_320[15:8] <= 8'b00000000;
end

endmodule //computeP2_linear_combination_1
