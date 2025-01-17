// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module pointwise_conv_1d_cl_ap_fixed_ap_fixed_16_6_5_3_0_config15_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        data_V_dout,
        data_V_empty_n,
        data_V_read,
        ap_return_0,
        ap_return_1,
        ap_return_2,
        ap_return_3,
        ap_return_4,
        ap_return_5,
        ap_return_6,
        ap_return_7,
        ap_return_8,
        ap_return_9,
        ap_return_10,
        ap_return_11,
        ap_return_12,
        ap_return_13,
        ap_return_14,
        ap_return_15,
        ap_return_16,
        ap_return_17,
        ap_return_18,
        ap_return_19,
        ap_return_20,
        ap_return_21,
        ap_return_22,
        ap_return_23,
        ap_return_24,
        ap_return_25,
        ap_return_26,
        ap_return_27,
        ap_return_28,
        ap_return_29
);

parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_state2 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [1399:0] data_V_dout;
input   data_V_empty_n;
output   data_V_read;
output  [15:0] ap_return_0;
output  [15:0] ap_return_1;
output  [15:0] ap_return_2;
output  [15:0] ap_return_3;
output  [15:0] ap_return_4;
output  [15:0] ap_return_5;
output  [15:0] ap_return_6;
output  [15:0] ap_return_7;
output  [15:0] ap_return_8;
output  [15:0] ap_return_9;
output  [15:0] ap_return_10;
output  [15:0] ap_return_11;
output  [15:0] ap_return_12;
output  [15:0] ap_return_13;
output  [15:0] ap_return_14;
output  [15:0] ap_return_15;
output  [15:0] ap_return_16;
output  [15:0] ap_return_17;
output  [15:0] ap_return_18;
output  [15:0] ap_return_19;
output  [15:0] ap_return_20;
output  [15:0] ap_return_21;
output  [15:0] ap_return_22;
output  [15:0] ap_return_23;
output  [15:0] ap_return_24;
output  [15:0] ap_return_25;
output  [15:0] ap_return_26;
output  [15:0] ap_return_27;
output  [15:0] ap_return_28;
output  [15:0] ap_return_29;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg data_V_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    data_V_blk_n;
wire   [9:0] data_tmp_0_0_V_fu_584_p1;
reg   [9:0] data_tmp_0_0_V_reg_1978;
reg    ap_block_state1;
reg   [9:0] data_tmp_0_1_V_reg_1983;
reg   [9:0] data_tmp_0_2_V_reg_1988;
reg   [9:0] data_tmp_0_4_V_reg_1993;
reg   [9:0] data_tmp_0_5_V_reg_1998;
reg   [9:0] data_tmp_0_6_V_reg_2003;
reg   [9:0] data_tmp_0_7_V_reg_2008;
reg   [9:0] data_tmp_0_8_V_reg_2013;
reg   [9:0] data_tmp_0_9_V_reg_2018;
reg   [9:0] data_tmp_0_10_V_reg_2023;
reg   [9:0] data_tmp_0_11_V_reg_2028;
reg   [9:0] data_tmp_0_14_V_reg_2033;
reg   [9:0] data_tmp_0_15_V_reg_2038;
reg   [9:0] data_tmp_0_16_V_reg_2043;
reg   [9:0] data_tmp_0_18_V_reg_2048;
reg   [9:0] data_tmp_0_19_V_reg_2053;
reg   [9:0] data_tmp_0_20_V_reg_2058;
reg   [9:0] data_tmp_0_21_V_reg_2063;
reg   [9:0] data_tmp_0_22_V_reg_2068;
reg   [9:0] data_tmp_0_23_V_reg_2073;
reg   [9:0] data_tmp_0_24_V_reg_2078;
reg   [9:0] data_tmp_0_25_V_reg_2083;
reg   [9:0] data_tmp_0_28_V_reg_2088;
reg   [9:0] data_tmp_0_29_V_reg_2093;
reg   [9:0] data_tmp_0_30_V_reg_2098;
reg   [9:0] data_tmp_0_32_V_reg_2103;
reg   [9:0] data_tmp_0_33_V_reg_2108;
reg   [9:0] data_tmp_0_34_V_reg_2113;
reg   [9:0] data_tmp_0_35_V_reg_2118;
reg   [9:0] data_tmp_0_36_V_reg_2123;
reg   [9:0] data_tmp_0_37_V_reg_2128;
reg   [9:0] data_tmp_0_38_V_reg_2133;
reg   [9:0] data_tmp_0_39_V_reg_2138;
reg   [9:0] data_tmp_0_42_V_reg_2143;
reg   [9:0] data_tmp_0_43_V_reg_2148;
reg   [9:0] data_tmp_0_44_V_reg_2153;
reg   [9:0] data_tmp_0_46_V_reg_2158;
reg   [9:0] data_tmp_0_47_V_reg_2163;
reg   [9:0] data_tmp_0_48_V_reg_2168;
reg   [9:0] data_tmp_0_49_V_reg_2173;
reg   [9:0] data_tmp_0_50_V_reg_2178;
reg   [9:0] data_tmp_0_51_V_reg_2183;
reg   [9:0] data_tmp_0_52_V_reg_2188;
reg   [9:0] data_tmp_0_53_V_reg_2193;
reg   [9:0] data_tmp_0_56_V_reg_2198;
reg   [9:0] data_tmp_0_57_V_reg_2203;
reg   [9:0] data_tmp_0_58_V_reg_2208;
reg   [9:0] data_tmp_0_60_V_reg_2213;
reg   [9:0] data_tmp_0_61_V_reg_2218;
reg   [9:0] data_tmp_0_62_V_reg_2223;
reg   [9:0] data_tmp_0_63_V_reg_2228;
reg   [9:0] data_tmp_0_64_V_reg_2233;
reg   [9:0] data_tmp_0_65_V_reg_2238;
reg   [9:0] data_tmp_0_66_V_reg_2243;
reg   [9:0] data_tmp_0_67_V_reg_2248;
reg   [9:0] data_tmp_1_0_V_reg_2253;
reg   [9:0] data_tmp_1_1_V_reg_2258;
reg   [9:0] data_tmp_1_2_V_reg_2263;
reg   [9:0] data_tmp_1_4_V_reg_2268;
reg   [9:0] data_tmp_1_5_V_reg_2273;
reg   [9:0] data_tmp_1_6_V_reg_2278;
reg   [9:0] data_tmp_1_7_V_reg_2283;
reg   [9:0] data_tmp_1_8_V_reg_2288;
reg   [9:0] data_tmp_1_9_V_reg_2293;
reg   [9:0] data_tmp_1_10_V_reg_2298;
reg   [9:0] data_tmp_1_11_V_reg_2303;
reg   [9:0] data_tmp_1_14_V_reg_2308;
reg   [9:0] data_tmp_1_15_V_reg_2313;
reg   [9:0] data_tmp_1_16_V_reg_2318;
reg   [9:0] data_tmp_1_18_V_reg_2323;
reg   [9:0] data_tmp_1_19_V_reg_2328;
reg   [9:0] data_tmp_1_20_V_reg_2333;
reg   [9:0] data_tmp_1_21_V_reg_2338;
reg   [9:0] data_tmp_1_22_V_reg_2343;
reg   [9:0] data_tmp_1_23_V_reg_2348;
reg   [9:0] data_tmp_1_24_V_reg_2353;
reg   [9:0] data_tmp_1_25_V_reg_2358;
reg   [9:0] data_tmp_1_28_V_reg_2363;
reg   [9:0] data_tmp_1_29_V_reg_2368;
reg   [9:0] data_tmp_1_30_V_reg_2373;
reg   [9:0] data_tmp_1_32_V_reg_2378;
reg   [9:0] data_tmp_1_33_V_reg_2383;
reg   [9:0] data_tmp_1_34_V_reg_2388;
reg   [9:0] data_tmp_1_35_V_reg_2393;
reg   [9:0] data_tmp_1_36_V_reg_2398;
reg   [9:0] data_tmp_1_37_V_reg_2403;
reg   [9:0] data_tmp_1_38_V_reg_2408;
reg   [9:0] data_tmp_1_39_V_reg_2413;
reg   [9:0] data_tmp_1_42_V_reg_2418;
reg   [9:0] data_tmp_1_43_V_reg_2423;
reg   [9:0] data_tmp_1_44_V_reg_2428;
reg   [9:0] data_tmp_1_46_V_reg_2433;
reg   [9:0] data_tmp_1_47_V_reg_2438;
reg   [9:0] data_tmp_1_48_V_reg_2443;
reg   [9:0] data_tmp_1_49_V_reg_2448;
reg   [9:0] data_tmp_1_50_V_reg_2453;
reg   [9:0] data_tmp_1_51_V_reg_2458;
reg   [9:0] data_tmp_1_52_V_reg_2463;
reg   [9:0] data_tmp_1_53_V_reg_2468;
reg   [9:0] data_tmp_1_56_V_reg_2473;
reg   [9:0] data_tmp_1_57_V_reg_2478;
reg   [9:0] data_tmp_1_58_V_reg_2483;
reg   [9:0] data_tmp_1_60_V_reg_2488;
reg   [9:0] data_tmp_1_61_V_reg_2493;
reg   [9:0] data_tmp_1_62_V_reg_2498;
reg   [9:0] data_tmp_1_63_V_reg_2503;
reg   [9:0] data_tmp_1_64_V_reg_2508;
reg   [9:0] data_tmp_1_65_V_reg_2513;
reg   [9:0] data_tmp_1_66_V_reg_2518;
reg   [9:0] data_tmp_1_67_V_reg_2523;
wire    call_ret2_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_466_ap_ready;
wire   [15:0] call_ret2_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_466_ap_return_0;
wire   [15:0] call_ret2_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_466_ap_return_1;
wire   [15:0] call_ret2_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_466_ap_return_2;
wire   [15:0] call_ret2_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_466_ap_return_3;
wire   [15:0] call_ret2_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_466_ap_return_4;
wire   [15:0] call_ret2_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_466_ap_return_5;
wire   [15:0] call_ret2_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_466_ap_return_6;
wire   [15:0] call_ret2_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_466_ap_return_7;
wire   [15:0] call_ret2_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_466_ap_return_8;
wire   [15:0] call_ret2_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_466_ap_return_9;
wire   [15:0] call_ret2_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_466_ap_return_10;
wire   [15:0] call_ret2_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_466_ap_return_11;
wire   [15:0] call_ret2_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_466_ap_return_12;
wire   [15:0] call_ret2_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_466_ap_return_13;
wire   [15:0] call_ret2_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_466_ap_return_14;
wire    call_ret_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_525_ap_ready;
wire   [15:0] call_ret_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_525_ap_return_0;
wire   [15:0] call_ret_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_525_ap_return_1;
wire   [15:0] call_ret_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_525_ap_return_2;
wire   [15:0] call_ret_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_525_ap_return_3;
wire   [15:0] call_ret_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_525_ap_return_4;
wire   [15:0] call_ret_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_525_ap_return_5;
wire   [15:0] call_ret_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_525_ap_return_6;
wire   [15:0] call_ret_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_525_ap_return_7;
wire   [15:0] call_ret_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_525_ap_return_8;
wire   [15:0] call_ret_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_525_ap_return_9;
wire   [15:0] call_ret_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_525_ap_return_10;
wire   [15:0] call_ret_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_525_ap_return_11;
wire   [15:0] call_ret_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_525_ap_return_12;
wire   [15:0] call_ret_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_525_ap_return_13;
wire   [15:0] call_ret_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_525_ap_return_14;
wire    ap_CS_fsm_state2;
reg   [1:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 2'd1;
end

pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1 call_ret2_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_466(
    .ap_ready(call_ret2_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_466_ap_ready),
    .p_read(data_tmp_0_0_V_reg_1978),
    .p_read1(data_tmp_0_1_V_reg_1983),
    .p_read2(data_tmp_0_2_V_reg_1988),
    .p_read3(data_tmp_0_4_V_reg_1993),
    .p_read4(data_tmp_0_5_V_reg_1998),
    .p_read5(data_tmp_0_6_V_reg_2003),
    .p_read6(data_tmp_0_7_V_reg_2008),
    .p_read7(data_tmp_0_8_V_reg_2013),
    .p_read8(data_tmp_0_9_V_reg_2018),
    .p_read9(data_tmp_0_10_V_reg_2023),
    .p_read10(data_tmp_0_11_V_reg_2028),
    .p_read11(data_tmp_0_14_V_reg_2033),
    .p_read12(data_tmp_0_15_V_reg_2038),
    .p_read13(data_tmp_0_16_V_reg_2043),
    .p_read14(data_tmp_0_18_V_reg_2048),
    .p_read15(data_tmp_0_19_V_reg_2053),
    .p_read16(data_tmp_0_20_V_reg_2058),
    .p_read17(data_tmp_0_21_V_reg_2063),
    .p_read18(data_tmp_0_22_V_reg_2068),
    .p_read19(data_tmp_0_23_V_reg_2073),
    .p_read20(data_tmp_0_24_V_reg_2078),
    .p_read21(data_tmp_0_25_V_reg_2083),
    .p_read22(data_tmp_0_28_V_reg_2088),
    .p_read23(data_tmp_0_29_V_reg_2093),
    .p_read24(data_tmp_0_30_V_reg_2098),
    .p_read25(data_tmp_0_32_V_reg_2103),
    .p_read26(data_tmp_0_33_V_reg_2108),
    .p_read27(data_tmp_0_34_V_reg_2113),
    .p_read28(data_tmp_0_35_V_reg_2118),
    .p_read29(data_tmp_0_36_V_reg_2123),
    .p_read30(data_tmp_0_37_V_reg_2128),
    .p_read31(data_tmp_0_38_V_reg_2133),
    .p_read32(data_tmp_0_39_V_reg_2138),
    .p_read33(data_tmp_0_42_V_reg_2143),
    .p_read34(data_tmp_0_43_V_reg_2148),
    .p_read35(data_tmp_0_44_V_reg_2153),
    .p_read36(data_tmp_0_46_V_reg_2158),
    .p_read37(data_tmp_0_47_V_reg_2163),
    .p_read38(data_tmp_0_48_V_reg_2168),
    .p_read39(data_tmp_0_49_V_reg_2173),
    .p_read40(data_tmp_0_50_V_reg_2178),
    .p_read41(data_tmp_0_51_V_reg_2183),
    .p_read42(data_tmp_0_52_V_reg_2188),
    .p_read43(data_tmp_0_53_V_reg_2193),
    .p_read44(data_tmp_0_56_V_reg_2198),
    .p_read45(data_tmp_0_57_V_reg_2203),
    .p_read46(data_tmp_0_58_V_reg_2208),
    .p_read47(data_tmp_0_60_V_reg_2213),
    .p_read48(data_tmp_0_61_V_reg_2218),
    .p_read49(data_tmp_0_62_V_reg_2223),
    .p_read50(data_tmp_0_63_V_reg_2228),
    .p_read51(data_tmp_0_64_V_reg_2233),
    .p_read52(data_tmp_0_65_V_reg_2238),
    .p_read53(data_tmp_0_66_V_reg_2243),
    .p_read54(data_tmp_0_67_V_reg_2248),
    .ap_return_0(call_ret2_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_466_ap_return_0),
    .ap_return_1(call_ret2_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_466_ap_return_1),
    .ap_return_2(call_ret2_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_466_ap_return_2),
    .ap_return_3(call_ret2_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_466_ap_return_3),
    .ap_return_4(call_ret2_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_466_ap_return_4),
    .ap_return_5(call_ret2_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_466_ap_return_5),
    .ap_return_6(call_ret2_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_466_ap_return_6),
    .ap_return_7(call_ret2_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_466_ap_return_7),
    .ap_return_8(call_ret2_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_466_ap_return_8),
    .ap_return_9(call_ret2_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_466_ap_return_9),
    .ap_return_10(call_ret2_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_466_ap_return_10),
    .ap_return_11(call_ret2_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_466_ap_return_11),
    .ap_return_12(call_ret2_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_466_ap_return_12),
    .ap_return_13(call_ret2_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_466_ap_return_13),
    .ap_return_14(call_ret2_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_466_ap_return_14)
);

pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1 call_ret_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_525(
    .ap_ready(call_ret_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_525_ap_ready),
    .p_read(data_tmp_1_0_V_reg_2253),
    .p_read1(data_tmp_1_1_V_reg_2258),
    .p_read2(data_tmp_1_2_V_reg_2263),
    .p_read3(data_tmp_1_4_V_reg_2268),
    .p_read4(data_tmp_1_5_V_reg_2273),
    .p_read5(data_tmp_1_6_V_reg_2278),
    .p_read6(data_tmp_1_7_V_reg_2283),
    .p_read7(data_tmp_1_8_V_reg_2288),
    .p_read8(data_tmp_1_9_V_reg_2293),
    .p_read9(data_tmp_1_10_V_reg_2298),
    .p_read10(data_tmp_1_11_V_reg_2303),
    .p_read11(data_tmp_1_14_V_reg_2308),
    .p_read12(data_tmp_1_15_V_reg_2313),
    .p_read13(data_tmp_1_16_V_reg_2318),
    .p_read14(data_tmp_1_18_V_reg_2323),
    .p_read15(data_tmp_1_19_V_reg_2328),
    .p_read16(data_tmp_1_20_V_reg_2333),
    .p_read17(data_tmp_1_21_V_reg_2338),
    .p_read18(data_tmp_1_22_V_reg_2343),
    .p_read19(data_tmp_1_23_V_reg_2348),
    .p_read20(data_tmp_1_24_V_reg_2353),
    .p_read21(data_tmp_1_25_V_reg_2358),
    .p_read22(data_tmp_1_28_V_reg_2363),
    .p_read23(data_tmp_1_29_V_reg_2368),
    .p_read24(data_tmp_1_30_V_reg_2373),
    .p_read25(data_tmp_1_32_V_reg_2378),
    .p_read26(data_tmp_1_33_V_reg_2383),
    .p_read27(data_tmp_1_34_V_reg_2388),
    .p_read28(data_tmp_1_35_V_reg_2393),
    .p_read29(data_tmp_1_36_V_reg_2398),
    .p_read30(data_tmp_1_37_V_reg_2403),
    .p_read31(data_tmp_1_38_V_reg_2408),
    .p_read32(data_tmp_1_39_V_reg_2413),
    .p_read33(data_tmp_1_42_V_reg_2418),
    .p_read34(data_tmp_1_43_V_reg_2423),
    .p_read35(data_tmp_1_44_V_reg_2428),
    .p_read36(data_tmp_1_46_V_reg_2433),
    .p_read37(data_tmp_1_47_V_reg_2438),
    .p_read38(data_tmp_1_48_V_reg_2443),
    .p_read39(data_tmp_1_49_V_reg_2448),
    .p_read40(data_tmp_1_50_V_reg_2453),
    .p_read41(data_tmp_1_51_V_reg_2458),
    .p_read42(data_tmp_1_52_V_reg_2463),
    .p_read43(data_tmp_1_53_V_reg_2468),
    .p_read44(data_tmp_1_56_V_reg_2473),
    .p_read45(data_tmp_1_57_V_reg_2478),
    .p_read46(data_tmp_1_58_V_reg_2483),
    .p_read47(data_tmp_1_60_V_reg_2488),
    .p_read48(data_tmp_1_61_V_reg_2493),
    .p_read49(data_tmp_1_62_V_reg_2498),
    .p_read50(data_tmp_1_63_V_reg_2503),
    .p_read51(data_tmp_1_64_V_reg_2508),
    .p_read52(data_tmp_1_65_V_reg_2513),
    .p_read53(data_tmp_1_66_V_reg_2518),
    .p_read54(data_tmp_1_67_V_reg_2523),
    .ap_return_0(call_ret_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_525_ap_return_0),
    .ap_return_1(call_ret_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_525_ap_return_1),
    .ap_return_2(call_ret_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_525_ap_return_2),
    .ap_return_3(call_ret_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_525_ap_return_3),
    .ap_return_4(call_ret_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_525_ap_return_4),
    .ap_return_5(call_ret_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_525_ap_return_5),
    .ap_return_6(call_ret_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_525_ap_return_6),
    .ap_return_7(call_ret_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_525_ap_return_7),
    .ap_return_8(call_ret_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_525_ap_return_8),
    .ap_return_9(call_ret_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_525_ap_return_9),
    .ap_return_10(call_ret_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_525_ap_return_10),
    .ap_return_11(call_ret_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_525_ap_return_11),
    .ap_return_12(call_ret_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_525_ap_return_12),
    .ap_return_13(call_ret_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_525_ap_return_13),
    .ap_return_14(call_ret_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_525_ap_return_14)
);

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
        end else if ((1'b1 == ap_CS_fsm_state2)) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_start == 1'b0) | (data_V_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        data_tmp_0_0_V_reg_1978 <= data_tmp_0_0_V_fu_584_p1;
        data_tmp_0_10_V_reg_2023 <= {{data_V_dout[109:100]}};
        data_tmp_0_11_V_reg_2028 <= {{data_V_dout[119:110]}};
        data_tmp_0_14_V_reg_2033 <= {{data_V_dout[149:140]}};
        data_tmp_0_15_V_reg_2038 <= {{data_V_dout[159:150]}};
        data_tmp_0_16_V_reg_2043 <= {{data_V_dout[169:160]}};
        data_tmp_0_18_V_reg_2048 <= {{data_V_dout[189:180]}};
        data_tmp_0_19_V_reg_2053 <= {{data_V_dout[199:190]}};
        data_tmp_0_1_V_reg_1983 <= {{data_V_dout[19:10]}};
        data_tmp_0_20_V_reg_2058 <= {{data_V_dout[209:200]}};
        data_tmp_0_21_V_reg_2063 <= {{data_V_dout[219:210]}};
        data_tmp_0_22_V_reg_2068 <= {{data_V_dout[229:220]}};
        data_tmp_0_23_V_reg_2073 <= {{data_V_dout[239:230]}};
        data_tmp_0_24_V_reg_2078 <= {{data_V_dout[249:240]}};
        data_tmp_0_25_V_reg_2083 <= {{data_V_dout[259:250]}};
        data_tmp_0_28_V_reg_2088 <= {{data_V_dout[289:280]}};
        data_tmp_0_29_V_reg_2093 <= {{data_V_dout[299:290]}};
        data_tmp_0_2_V_reg_1988 <= {{data_V_dout[29:20]}};
        data_tmp_0_30_V_reg_2098 <= {{data_V_dout[309:300]}};
        data_tmp_0_32_V_reg_2103 <= {{data_V_dout[329:320]}};
        data_tmp_0_33_V_reg_2108 <= {{data_V_dout[339:330]}};
        data_tmp_0_34_V_reg_2113 <= {{data_V_dout[349:340]}};
        data_tmp_0_35_V_reg_2118 <= {{data_V_dout[359:350]}};
        data_tmp_0_36_V_reg_2123 <= {{data_V_dout[369:360]}};
        data_tmp_0_37_V_reg_2128 <= {{data_V_dout[379:370]}};
        data_tmp_0_38_V_reg_2133 <= {{data_V_dout[389:380]}};
        data_tmp_0_39_V_reg_2138 <= {{data_V_dout[399:390]}};
        data_tmp_0_42_V_reg_2143 <= {{data_V_dout[429:420]}};
        data_tmp_0_43_V_reg_2148 <= {{data_V_dout[439:430]}};
        data_tmp_0_44_V_reg_2153 <= {{data_V_dout[449:440]}};
        data_tmp_0_46_V_reg_2158 <= {{data_V_dout[469:460]}};
        data_tmp_0_47_V_reg_2163 <= {{data_V_dout[479:470]}};
        data_tmp_0_48_V_reg_2168 <= {{data_V_dout[489:480]}};
        data_tmp_0_49_V_reg_2173 <= {{data_V_dout[499:490]}};
        data_tmp_0_4_V_reg_1993 <= {{data_V_dout[49:40]}};
        data_tmp_0_50_V_reg_2178 <= {{data_V_dout[509:500]}};
        data_tmp_0_51_V_reg_2183 <= {{data_V_dout[519:510]}};
        data_tmp_0_52_V_reg_2188 <= {{data_V_dout[529:520]}};
        data_tmp_0_53_V_reg_2193 <= {{data_V_dout[539:530]}};
        data_tmp_0_56_V_reg_2198 <= {{data_V_dout[569:560]}};
        data_tmp_0_57_V_reg_2203 <= {{data_V_dout[579:570]}};
        data_tmp_0_58_V_reg_2208 <= {{data_V_dout[589:580]}};
        data_tmp_0_5_V_reg_1998 <= {{data_V_dout[59:50]}};
        data_tmp_0_60_V_reg_2213 <= {{data_V_dout[609:600]}};
        data_tmp_0_61_V_reg_2218 <= {{data_V_dout[619:610]}};
        data_tmp_0_62_V_reg_2223 <= {{data_V_dout[629:620]}};
        data_tmp_0_63_V_reg_2228 <= {{data_V_dout[639:630]}};
        data_tmp_0_64_V_reg_2233 <= {{data_V_dout[649:640]}};
        data_tmp_0_65_V_reg_2238 <= {{data_V_dout[659:650]}};
        data_tmp_0_66_V_reg_2243 <= {{data_V_dout[669:660]}};
        data_tmp_0_67_V_reg_2248 <= {{data_V_dout[679:670]}};
        data_tmp_0_6_V_reg_2003 <= {{data_V_dout[69:60]}};
        data_tmp_0_7_V_reg_2008 <= {{data_V_dout[79:70]}};
        data_tmp_0_8_V_reg_2013 <= {{data_V_dout[89:80]}};
        data_tmp_0_9_V_reg_2018 <= {{data_V_dout[99:90]}};
        data_tmp_1_0_V_reg_2253 <= {{data_V_dout[709:700]}};
        data_tmp_1_10_V_reg_2298 <= {{data_V_dout[809:800]}};
        data_tmp_1_11_V_reg_2303 <= {{data_V_dout[819:810]}};
        data_tmp_1_14_V_reg_2308 <= {{data_V_dout[849:840]}};
        data_tmp_1_15_V_reg_2313 <= {{data_V_dout[859:850]}};
        data_tmp_1_16_V_reg_2318 <= {{data_V_dout[869:860]}};
        data_tmp_1_18_V_reg_2323 <= {{data_V_dout[889:880]}};
        data_tmp_1_19_V_reg_2328 <= {{data_V_dout[899:890]}};
        data_tmp_1_1_V_reg_2258 <= {{data_V_dout[719:710]}};
        data_tmp_1_20_V_reg_2333 <= {{data_V_dout[909:900]}};
        data_tmp_1_21_V_reg_2338 <= {{data_V_dout[919:910]}};
        data_tmp_1_22_V_reg_2343 <= {{data_V_dout[929:920]}};
        data_tmp_1_23_V_reg_2348 <= {{data_V_dout[939:930]}};
        data_tmp_1_24_V_reg_2353 <= {{data_V_dout[949:940]}};
        data_tmp_1_25_V_reg_2358 <= {{data_V_dout[959:950]}};
        data_tmp_1_28_V_reg_2363 <= {{data_V_dout[989:980]}};
        data_tmp_1_29_V_reg_2368 <= {{data_V_dout[999:990]}};
        data_tmp_1_2_V_reg_2263 <= {{data_V_dout[729:720]}};
        data_tmp_1_30_V_reg_2373 <= {{data_V_dout[1009:1000]}};
        data_tmp_1_32_V_reg_2378 <= {{data_V_dout[1029:1020]}};
        data_tmp_1_33_V_reg_2383 <= {{data_V_dout[1039:1030]}};
        data_tmp_1_34_V_reg_2388 <= {{data_V_dout[1049:1040]}};
        data_tmp_1_35_V_reg_2393 <= {{data_V_dout[1059:1050]}};
        data_tmp_1_36_V_reg_2398 <= {{data_V_dout[1069:1060]}};
        data_tmp_1_37_V_reg_2403 <= {{data_V_dout[1079:1070]}};
        data_tmp_1_38_V_reg_2408 <= {{data_V_dout[1089:1080]}};
        data_tmp_1_39_V_reg_2413 <= {{data_V_dout[1099:1090]}};
        data_tmp_1_42_V_reg_2418 <= {{data_V_dout[1129:1120]}};
        data_tmp_1_43_V_reg_2423 <= {{data_V_dout[1139:1130]}};
        data_tmp_1_44_V_reg_2428 <= {{data_V_dout[1149:1140]}};
        data_tmp_1_46_V_reg_2433 <= {{data_V_dout[1169:1160]}};
        data_tmp_1_47_V_reg_2438 <= {{data_V_dout[1179:1170]}};
        data_tmp_1_48_V_reg_2443 <= {{data_V_dout[1189:1180]}};
        data_tmp_1_49_V_reg_2448 <= {{data_V_dout[1199:1190]}};
        data_tmp_1_4_V_reg_2268 <= {{data_V_dout[749:740]}};
        data_tmp_1_50_V_reg_2453 <= {{data_V_dout[1209:1200]}};
        data_tmp_1_51_V_reg_2458 <= {{data_V_dout[1219:1210]}};
        data_tmp_1_52_V_reg_2463 <= {{data_V_dout[1229:1220]}};
        data_tmp_1_53_V_reg_2468 <= {{data_V_dout[1239:1230]}};
        data_tmp_1_56_V_reg_2473 <= {{data_V_dout[1269:1260]}};
        data_tmp_1_57_V_reg_2478 <= {{data_V_dout[1279:1270]}};
        data_tmp_1_58_V_reg_2483 <= {{data_V_dout[1289:1280]}};
        data_tmp_1_5_V_reg_2273 <= {{data_V_dout[759:750]}};
        data_tmp_1_60_V_reg_2488 <= {{data_V_dout[1309:1300]}};
        data_tmp_1_61_V_reg_2493 <= {{data_V_dout[1319:1310]}};
        data_tmp_1_62_V_reg_2498 <= {{data_V_dout[1329:1320]}};
        data_tmp_1_63_V_reg_2503 <= {{data_V_dout[1339:1330]}};
        data_tmp_1_64_V_reg_2508 <= {{data_V_dout[1349:1340]}};
        data_tmp_1_65_V_reg_2513 <= {{data_V_dout[1359:1350]}};
        data_tmp_1_66_V_reg_2518 <= {{data_V_dout[1369:1360]}};
        data_tmp_1_67_V_reg_2523 <= {{data_V_dout[1379:1370]}};
        data_tmp_1_6_V_reg_2278 <= {{data_V_dout[769:760]}};
        data_tmp_1_7_V_reg_2283 <= {{data_V_dout[779:770]}};
        data_tmp_1_8_V_reg_2288 <= {{data_V_dout[789:780]}};
        data_tmp_1_9_V_reg_2293 <= {{data_V_dout[799:790]}};
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
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
    if ((1'b1 == ap_CS_fsm_state2)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        data_V_blk_n = data_V_empty_n;
    end else begin
        data_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (data_V_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        data_V_read = 1'b1;
    end else begin
        data_V_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (data_V_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (data_V_empty_n == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_return_0 = call_ret2_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_466_ap_return_0;

assign ap_return_1 = call_ret2_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_466_ap_return_1;

assign ap_return_10 = call_ret2_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_466_ap_return_10;

assign ap_return_11 = call_ret2_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_466_ap_return_11;

assign ap_return_12 = call_ret2_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_466_ap_return_12;

assign ap_return_13 = call_ret2_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_466_ap_return_13;

assign ap_return_14 = call_ret2_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_466_ap_return_14;

assign ap_return_15 = call_ret_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_525_ap_return_0;

assign ap_return_16 = call_ret_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_525_ap_return_1;

assign ap_return_17 = call_ret_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_525_ap_return_2;

assign ap_return_18 = call_ret_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_525_ap_return_3;

assign ap_return_19 = call_ret_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_525_ap_return_4;

assign ap_return_2 = call_ret2_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_466_ap_return_2;

assign ap_return_20 = call_ret_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_525_ap_return_5;

assign ap_return_21 = call_ret_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_525_ap_return_6;

assign ap_return_22 = call_ret_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_525_ap_return_7;

assign ap_return_23 = call_ret_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_525_ap_return_8;

assign ap_return_24 = call_ret_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_525_ap_return_9;

assign ap_return_25 = call_ret_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_525_ap_return_10;

assign ap_return_26 = call_ret_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_525_ap_return_11;

assign ap_return_27 = call_ret_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_525_ap_return_12;

assign ap_return_28 = call_ret_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_525_ap_return_13;

assign ap_return_29 = call_ret_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_525_ap_return_14;

assign ap_return_3 = call_ret2_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_466_ap_return_3;

assign ap_return_4 = call_ret2_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_466_ap_return_4;

assign ap_return_5 = call_ret2_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_466_ap_return_5;

assign ap_return_6 = call_ret2_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_466_ap_return_6;

assign ap_return_7 = call_ret2_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_466_ap_return_7;

assign ap_return_8 = call_ret2_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_466_ap_return_8;

assign ap_return_9 = call_ret2_i_pointwise_conv_1d_latency_cl_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_0_1_fu_466_ap_return_9;

assign data_tmp_0_0_V_fu_584_p1 = data_V_dout[9:0];

endmodule //pointwise_conv_1d_cl_ap_fixed_ap_fixed_16_6_5_3_0_config15_s
