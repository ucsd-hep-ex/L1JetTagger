// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        data_1_V_read,
        data_8_V_read,
        ap_return_0,
        ap_return_1
);

parameter    ap_ST_fsm_state1 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [15:0] data_1_V_read;
input  [15:0] data_8_V_read;
output  [7:0] ap_return_0;
output  [7:0] ap_return_1;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[7:0] ap_return_0;
reg[7:0] ap_return_1;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1;
wire   [0:0] trunc_ln718_fu_84_p1;
wire   [0:0] tmp_fu_76_p3;
wire   [0:0] or_ln412_fu_96_p2;
wire   [0:0] tmp_242_fu_102_p3;
wire   [0:0] and_ln415_1_fu_110_p2;
wire   [7:0] zext_ln415_fu_116_p1;
wire   [7:0] trunc_ln_fu_66_p4;
wire   [7:0] add_ln415_fu_120_p2;
wire   [0:0] tmp_243_fu_126_p3;
wire   [0:0] tmp_241_fu_88_p3;
wire   [0:0] xor_ln416_fu_134_p2;
wire   [5:0] p_Result_20_1_fu_146_p4;
wire   [0:0] and_ln416_fu_140_p2;
wire   [0:0] icmp_ln879_fu_156_p2;
wire   [0:0] icmp_ln768_fu_162_p2;
wire   [0:0] select_ln777_fu_168_p3;
wire   [0:0] icmp_ln1494_1_fu_60_p2;
wire   [7:0] select_ln340_1_fu_176_p3;
wire   [0:0] trunc_ln718_59_fu_216_p1;
wire   [0:0] tmp_244_fu_208_p3;
wire   [0:0] or_ln412_59_fu_228_p2;
wire   [0:0] tmp_246_fu_234_p3;
wire   [0:0] and_ln415_8_fu_242_p2;
wire   [7:0] zext_ln415_59_fu_248_p1;
wire   [7:0] trunc_ln708_s_fu_198_p4;
wire   [7:0] add_ln415_59_fu_252_p2;
wire   [0:0] tmp_247_fu_258_p3;
wire   [0:0] tmp_245_fu_220_p3;
wire   [0:0] xor_ln416_59_fu_266_p2;
wire   [5:0] p_Result_20_8_fu_278_p4;
wire   [0:0] and_ln416_59_fu_272_p2;
wire   [0:0] icmp_ln879_59_fu_288_p2;
wire   [0:0] icmp_ln768_59_fu_294_p2;
wire   [0:0] select_ln777_59_fu_300_p3;
wire   [0:0] icmp_ln1494_8_fu_192_p2;
wire   [7:0] select_ln340_8_fu_308_p3;
wire   [7:0] select_ln1494_fu_184_p3;
wire   [7:0] select_ln1494_59_fu_316_p3;
reg   [7:0] ap_return_0_preg;
reg   [7:0] ap_return_1_preg;
reg   [0:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 1'd1;
#0 ap_return_0_preg = 8'd0;
#0 ap_return_1_preg = 8'd0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
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
        end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_0_preg <= 8'd0;
    end else begin
        if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_return_0_preg <= select_ln1494_fu_184_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_1_preg <= 8'd0;
    end else begin
        if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_return_1_preg <= select_ln1494_59_fu_316_p3;
        end
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
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
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_return_0 = select_ln1494_fu_184_p3;
    end else begin
        ap_return_0 = ap_return_0_preg;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_return_1 = select_ln1494_59_fu_316_p3;
    end else begin
        ap_return_1 = ap_return_1_preg;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln415_59_fu_252_p2 = (zext_ln415_59_fu_248_p1 + trunc_ln708_s_fu_198_p4);

assign add_ln415_fu_120_p2 = (zext_ln415_fu_116_p1 + trunc_ln_fu_66_p4);

assign and_ln415_1_fu_110_p2 = (tmp_242_fu_102_p3 & or_ln412_fu_96_p2);

assign and_ln415_8_fu_242_p2 = (tmp_246_fu_234_p3 & or_ln412_59_fu_228_p2);

assign and_ln416_59_fu_272_p2 = (xor_ln416_59_fu_266_p2 & tmp_245_fu_220_p3);

assign and_ln416_fu_140_p2 = (xor_ln416_fu_134_p2 & tmp_241_fu_88_p3);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign icmp_ln1494_1_fu_60_p2 = (($signed(data_1_V_read) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1494_8_fu_192_p2 = (($signed(data_8_V_read) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign icmp_ln768_59_fu_294_p2 = ((p_Result_20_8_fu_278_p4 == 6'd0) ? 1'b1 : 1'b0);

assign icmp_ln768_fu_162_p2 = ((p_Result_20_1_fu_146_p4 == 6'd0) ? 1'b1 : 1'b0);

assign icmp_ln879_59_fu_288_p2 = ((p_Result_20_8_fu_278_p4 == 6'd63) ? 1'b1 : 1'b0);

assign icmp_ln879_fu_156_p2 = ((p_Result_20_1_fu_146_p4 == 6'd63) ? 1'b1 : 1'b0);

assign or_ln412_59_fu_228_p2 = (trunc_ln718_59_fu_216_p1 | tmp_244_fu_208_p3);

assign or_ln412_fu_96_p2 = (trunc_ln718_fu_84_p1 | tmp_fu_76_p3);

assign p_Result_20_1_fu_146_p4 = {{data_1_V_read[15:10]}};

assign p_Result_20_8_fu_278_p4 = {{data_8_V_read[15:10]}};

assign select_ln1494_59_fu_316_p3 = ((icmp_ln1494_8_fu_192_p2[0:0] === 1'b1) ? select_ln340_8_fu_308_p3 : 8'd0);

assign select_ln1494_fu_184_p3 = ((icmp_ln1494_1_fu_60_p2[0:0] === 1'b1) ? select_ln340_1_fu_176_p3 : 8'd0);

assign select_ln340_1_fu_176_p3 = ((select_ln777_fu_168_p3[0:0] === 1'b1) ? add_ln415_fu_120_p2 : 8'd255);

assign select_ln340_8_fu_308_p3 = ((select_ln777_59_fu_300_p3[0:0] === 1'b1) ? add_ln415_59_fu_252_p2 : 8'd255);

assign select_ln777_59_fu_300_p3 = ((and_ln416_59_fu_272_p2[0:0] === 1'b1) ? icmp_ln879_59_fu_288_p2 : icmp_ln768_59_fu_294_p2);

assign select_ln777_fu_168_p3 = ((and_ln416_fu_140_p2[0:0] === 1'b1) ? icmp_ln879_fu_156_p2 : icmp_ln768_fu_162_p2);

assign tmp_241_fu_88_p3 = data_1_V_read[32'd9];

assign tmp_242_fu_102_p3 = data_1_V_read[32'd1];

assign tmp_243_fu_126_p3 = add_ln415_fu_120_p2[32'd7];

assign tmp_244_fu_208_p3 = data_8_V_read[32'd2];

assign tmp_245_fu_220_p3 = data_8_V_read[32'd9];

assign tmp_246_fu_234_p3 = data_8_V_read[32'd1];

assign tmp_247_fu_258_p3 = add_ln415_59_fu_252_p2[32'd7];

assign tmp_fu_76_p3 = data_1_V_read[32'd2];

assign trunc_ln708_s_fu_198_p4 = {{data_8_V_read[9:2]}};

assign trunc_ln718_59_fu_216_p1 = data_8_V_read[0:0];

assign trunc_ln718_fu_84_p1 = data_1_V_read[0:0];

assign trunc_ln_fu_66_p4 = {{data_1_V_read[9:2]}};

assign xor_ln416_59_fu_266_p2 = (tmp_247_fu_258_p3 ^ 1'd1);

assign xor_ln416_fu_134_p2 = (tmp_243_fu_126_p3 ^ 1'd1);

assign zext_ln415_59_fu_248_p1 = and_ln415_8_fu_242_p2;

assign zext_ln415_fu_116_p1 = and_ln415_1_fu_110_p2;

endmodule //relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s
