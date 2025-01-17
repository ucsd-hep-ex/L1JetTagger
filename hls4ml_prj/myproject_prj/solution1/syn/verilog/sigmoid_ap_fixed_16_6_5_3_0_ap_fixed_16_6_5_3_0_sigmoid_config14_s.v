// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module sigmoid_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_sigmoid_config14_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        data_V_read,
        res_V,
        res_V_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [14:0] data_V_read;
output  [15:0] res_V;
output   res_V_ap_vld;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg res_V_ap_vld;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
reg    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
wire   [9:0] sigmoid_table1_address0;
reg    sigmoid_table1_ce0;
wire   [9:0] sigmoid_table1_q0;
reg    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln121_fu_200_p1;
wire    ap_block_pp0_stage0;
reg    ap_block_pp0_stage0_01001;
wire   [10:0] tmp_fu_90_p4;
wire   [24:0] r_V_fu_82_p3;
wire   [3:0] trunc_ln851_fu_110_p1;
wire   [9:0] p_Result_2_fu_114_p3;
wire  signed [11:0] sext_ln850_fu_100_p1;
wire   [0:0] icmp_ln851_fu_122_p2;
wire   [11:0] ret_V_fu_128_p2;
wire   [0:0] p_Result_s_fu_104_p2;
wire   [11:0] select_ln851_fu_134_p3;
wire   [11:0] select_ln850_fu_142_p3;
wire   [11:0] index_fu_150_p2;
wire   [0:0] tmp_1_fu_156_p3;
wire   [11:0] select_ln117_fu_164_p3;
wire   [1:0] tmp_2_fu_176_p4;
wire   [0:0] icmp_ln119_fu_186_p2;
wire   [9:0] trunc_ln117_fu_172_p1;
wire   [9:0] select_ln119_fu_192_p3;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to0;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
end

sigmoid_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_sigmoid_config14_s_sigmoid_tabkb #(
    .DataWidth( 10 ),
    .AddressRange( 1024 ),
    .AddressWidth( 10 ))
sigmoid_table1_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(sigmoid_table1_address0),
    .ce0(sigmoid_table1_ce0),
    .q0(sigmoid_table1_q0)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start;
        end
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0_0to0 == 1'b1))) begin
        ap_reset_idle_pp0 = 1'b1;
    end else begin
        ap_reset_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        res_V_ap_vld = 1'b1;
    end else begin
        res_V_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sigmoid_table1_ce0 = 1'b1;
    end else begin
        sigmoid_table1_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_done_reg == 1'b1) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (ap_done_reg == 1'b1))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (ap_done_reg == 1'b1))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_start == 1'b1) & ((ap_start == 1'b0) | (ap_done_reg == 1'b1))));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

assign icmp_ln119_fu_186_p2 = ((tmp_2_fu_176_p4 != 2'd0) ? 1'b1 : 1'b0);

assign icmp_ln851_fu_122_p2 = ((p_Result_2_fu_114_p3 == 10'd0) ? 1'b1 : 1'b0);

assign index_fu_150_p2 = (12'd512 + select_ln850_fu_142_p3);

assign p_Result_2_fu_114_p3 = {{trunc_ln851_fu_110_p1}, {6'd0}};

assign p_Result_s_fu_104_p2 = (($signed(r_V_fu_82_p3) < $signed(25'd33554417)) ? 1'b1 : 1'b0);

assign r_V_fu_82_p3 = {{data_V_read}, {10'd0}};

assign res_V = sigmoid_table1_q0;

assign ret_V_fu_128_p2 = ($signed(12'd1) + $signed(sext_ln850_fu_100_p1));

assign select_ln117_fu_164_p3 = ((tmp_1_fu_156_p3[0:0] === 1'b1) ? 12'd0 : index_fu_150_p2);

assign select_ln119_fu_192_p3 = ((icmp_ln119_fu_186_p2[0:0] === 1'b1) ? 10'd1023 : trunc_ln117_fu_172_p1);

assign select_ln850_fu_142_p3 = ((p_Result_s_fu_104_p2[0:0] === 1'b1) ? select_ln851_fu_134_p3 : sext_ln850_fu_100_p1);

assign select_ln851_fu_134_p3 = ((icmp_ln851_fu_122_p2[0:0] === 1'b1) ? sext_ln850_fu_100_p1 : ret_V_fu_128_p2);

assign sext_ln850_fu_100_p1 = $signed(tmp_fu_90_p4);

assign sigmoid_table1_address0 = zext_ln121_fu_200_p1;

assign tmp_1_fu_156_p3 = index_fu_150_p2[32'd11];

assign tmp_2_fu_176_p4 = {{select_ln117_fu_164_p3[11:10]}};

assign tmp_fu_90_p4 = {{data_V_read[14:4]}};

assign trunc_ln117_fu_172_p1 = select_ln117_fu_164_p3[9:0];

assign trunc_ln851_fu_110_p1 = data_V_read[3:0];

assign zext_ln121_fu_200_p1 = select_ln119_fu_192_p3;

endmodule //sigmoid_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_sigmoid_config14_s
