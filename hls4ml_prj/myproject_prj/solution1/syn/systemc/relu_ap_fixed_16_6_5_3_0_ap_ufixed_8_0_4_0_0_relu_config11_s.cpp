// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<1> relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s::ap_ST_fsm_state1 = "1";
const sc_lv<32> relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<16> relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s::ap_const_lv16_0 = "0000000000000000";
const sc_lv<32> relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s::ap_const_lv32_2 = "10";
const sc_lv<32> relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s::ap_const_lv32_9 = "1001";
const sc_lv<32> relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s::ap_const_lv32_1 = "1";
const sc_lv<32> relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s::ap_const_lv32_7 = "111";
const sc_lv<1> relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s::ap_const_lv1_1 = "1";
const sc_lv<32> relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s::ap_const_lv32_A = "1010";
const sc_lv<32> relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s::ap_const_lv32_F = "1111";
const sc_lv<6> relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s::ap_const_lv6_3F = "111111";
const sc_lv<6> relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s::ap_const_lv6_0 = "000000";
const sc_lv<8> relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s::ap_const_lv8_FF = "11111111";
const sc_lv<8> relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s::ap_const_lv8_0 = "00000000";
const sc_lv<1> relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s::ap_const_lv1_0 = "0";
const bool relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s::ap_const_boolean_1 = true;

relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s::relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_add_ln415_59_fu_252_p2);
    sensitive << ( zext_ln415_59_fu_248_p1 );
    sensitive << ( trunc_ln708_s_fu_198_p4 );

    SC_METHOD(thread_add_ln415_fu_120_p2);
    sensitive << ( zext_ln415_fu_116_p1 );
    sensitive << ( trunc_ln_fu_66_p4 );

    SC_METHOD(thread_and_ln415_1_fu_110_p2);
    sensitive << ( or_ln412_fu_96_p2 );
    sensitive << ( tmp_242_fu_102_p3 );

    SC_METHOD(thread_and_ln415_8_fu_242_p2);
    sensitive << ( or_ln412_59_fu_228_p2 );
    sensitive << ( tmp_246_fu_234_p3 );

    SC_METHOD(thread_and_ln416_59_fu_272_p2);
    sensitive << ( tmp_245_fu_220_p3 );
    sensitive << ( xor_ln416_59_fu_266_p2 );

    SC_METHOD(thread_and_ln416_fu_140_p2);
    sensitive << ( tmp_241_fu_88_p3 );
    sensitive << ( xor_ln416_fu_134_p2 );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_block_state1);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_return_0);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( select_ln1494_fu_184_p3 );
    sensitive << ( ap_return_0_preg );

    SC_METHOD(thread_ap_return_1);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( select_ln1494_59_fu_316_p3 );
    sensitive << ( ap_return_1_preg );

    SC_METHOD(thread_icmp_ln1494_1_fu_60_p2);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( data_1_V_read );

    SC_METHOD(thread_icmp_ln1494_8_fu_192_p2);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( data_8_V_read );

    SC_METHOD(thread_icmp_ln768_59_fu_294_p2);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( p_Result_20_8_fu_278_p4 );
    sensitive << ( and_ln416_59_fu_272_p2 );
    sensitive << ( icmp_ln1494_8_fu_192_p2 );

    SC_METHOD(thread_icmp_ln768_fu_162_p2);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( p_Result_20_1_fu_146_p4 );
    sensitive << ( and_ln416_fu_140_p2 );
    sensitive << ( icmp_ln1494_1_fu_60_p2 );

    SC_METHOD(thread_icmp_ln879_59_fu_288_p2);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( p_Result_20_8_fu_278_p4 );
    sensitive << ( and_ln416_59_fu_272_p2 );
    sensitive << ( icmp_ln1494_8_fu_192_p2 );

    SC_METHOD(thread_icmp_ln879_fu_156_p2);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( p_Result_20_1_fu_146_p4 );
    sensitive << ( and_ln416_fu_140_p2 );
    sensitive << ( icmp_ln1494_1_fu_60_p2 );

    SC_METHOD(thread_or_ln412_59_fu_228_p2);
    sensitive << ( trunc_ln718_59_fu_216_p1 );
    sensitive << ( tmp_244_fu_208_p3 );

    SC_METHOD(thread_or_ln412_fu_96_p2);
    sensitive << ( trunc_ln718_fu_84_p1 );
    sensitive << ( tmp_fu_76_p3 );

    SC_METHOD(thread_p_Result_20_1_fu_146_p4);
    sensitive << ( data_1_V_read );

    SC_METHOD(thread_p_Result_20_8_fu_278_p4);
    sensitive << ( data_8_V_read );

    SC_METHOD(thread_select_ln1494_59_fu_316_p3);
    sensitive << ( icmp_ln1494_8_fu_192_p2 );
    sensitive << ( select_ln340_8_fu_308_p3 );

    SC_METHOD(thread_select_ln1494_fu_184_p3);
    sensitive << ( icmp_ln1494_1_fu_60_p2 );
    sensitive << ( select_ln340_1_fu_176_p3 );

    SC_METHOD(thread_select_ln340_1_fu_176_p3);
    sensitive << ( add_ln415_fu_120_p2 );
    sensitive << ( select_ln777_fu_168_p3 );

    SC_METHOD(thread_select_ln340_8_fu_308_p3);
    sensitive << ( add_ln415_59_fu_252_p2 );
    sensitive << ( select_ln777_59_fu_300_p3 );

    SC_METHOD(thread_select_ln777_59_fu_300_p3);
    sensitive << ( and_ln416_59_fu_272_p2 );
    sensitive << ( icmp_ln879_59_fu_288_p2 );
    sensitive << ( icmp_ln768_59_fu_294_p2 );

    SC_METHOD(thread_select_ln777_fu_168_p3);
    sensitive << ( and_ln416_fu_140_p2 );
    sensitive << ( icmp_ln879_fu_156_p2 );
    sensitive << ( icmp_ln768_fu_162_p2 );

    SC_METHOD(thread_tmp_241_fu_88_p3);
    sensitive << ( data_1_V_read );

    SC_METHOD(thread_tmp_242_fu_102_p3);
    sensitive << ( data_1_V_read );

    SC_METHOD(thread_tmp_243_fu_126_p3);
    sensitive << ( add_ln415_fu_120_p2 );

    SC_METHOD(thread_tmp_244_fu_208_p3);
    sensitive << ( data_8_V_read );

    SC_METHOD(thread_tmp_245_fu_220_p3);
    sensitive << ( data_8_V_read );

    SC_METHOD(thread_tmp_246_fu_234_p3);
    sensitive << ( data_8_V_read );

    SC_METHOD(thread_tmp_247_fu_258_p3);
    sensitive << ( add_ln415_59_fu_252_p2 );

    SC_METHOD(thread_tmp_fu_76_p3);
    sensitive << ( data_1_V_read );

    SC_METHOD(thread_trunc_ln708_s_fu_198_p4);
    sensitive << ( data_8_V_read );

    SC_METHOD(thread_trunc_ln718_59_fu_216_p1);
    sensitive << ( data_8_V_read );

    SC_METHOD(thread_trunc_ln718_fu_84_p1);
    sensitive << ( data_1_V_read );

    SC_METHOD(thread_trunc_ln_fu_66_p4);
    sensitive << ( data_1_V_read );

    SC_METHOD(thread_xor_ln416_59_fu_266_p2);
    sensitive << ( tmp_247_fu_258_p3 );

    SC_METHOD(thread_xor_ln416_fu_134_p2);
    sensitive << ( tmp_243_fu_126_p3 );

    SC_METHOD(thread_zext_ln415_59_fu_248_p1);
    sensitive << ( and_ln415_8_fu_242_p2 );

    SC_METHOD(thread_zext_ln415_fu_116_p1);
    sensitive << ( and_ln415_1_fu_110_p2 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );

    ap_done_reg = SC_LOGIC_0;
    ap_CS_fsm = "1";
    ap_return_0_preg = "00000000";
    ap_return_1_preg = "00000000";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_continue, "(port)ap_continue");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, data_1_V_read, "(port)data_1_V_read");
    sc_trace(mVcdFile, data_8_V_read, "(port)data_8_V_read");
    sc_trace(mVcdFile, ap_return_0, "(port)ap_return_0");
    sc_trace(mVcdFile, ap_return_1, "(port)ap_return_1");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_done_reg, "ap_done_reg");
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, ap_block_state1, "ap_block_state1");
    sc_trace(mVcdFile, trunc_ln718_fu_84_p1, "trunc_ln718_fu_84_p1");
    sc_trace(mVcdFile, tmp_fu_76_p3, "tmp_fu_76_p3");
    sc_trace(mVcdFile, or_ln412_fu_96_p2, "or_ln412_fu_96_p2");
    sc_trace(mVcdFile, tmp_242_fu_102_p3, "tmp_242_fu_102_p3");
    sc_trace(mVcdFile, and_ln415_1_fu_110_p2, "and_ln415_1_fu_110_p2");
    sc_trace(mVcdFile, zext_ln415_fu_116_p1, "zext_ln415_fu_116_p1");
    sc_trace(mVcdFile, trunc_ln_fu_66_p4, "trunc_ln_fu_66_p4");
    sc_trace(mVcdFile, add_ln415_fu_120_p2, "add_ln415_fu_120_p2");
    sc_trace(mVcdFile, tmp_243_fu_126_p3, "tmp_243_fu_126_p3");
    sc_trace(mVcdFile, tmp_241_fu_88_p3, "tmp_241_fu_88_p3");
    sc_trace(mVcdFile, xor_ln416_fu_134_p2, "xor_ln416_fu_134_p2");
    sc_trace(mVcdFile, p_Result_20_1_fu_146_p4, "p_Result_20_1_fu_146_p4");
    sc_trace(mVcdFile, and_ln416_fu_140_p2, "and_ln416_fu_140_p2");
    sc_trace(mVcdFile, icmp_ln879_fu_156_p2, "icmp_ln879_fu_156_p2");
    sc_trace(mVcdFile, icmp_ln768_fu_162_p2, "icmp_ln768_fu_162_p2");
    sc_trace(mVcdFile, select_ln777_fu_168_p3, "select_ln777_fu_168_p3");
    sc_trace(mVcdFile, icmp_ln1494_1_fu_60_p2, "icmp_ln1494_1_fu_60_p2");
    sc_trace(mVcdFile, select_ln340_1_fu_176_p3, "select_ln340_1_fu_176_p3");
    sc_trace(mVcdFile, trunc_ln718_59_fu_216_p1, "trunc_ln718_59_fu_216_p1");
    sc_trace(mVcdFile, tmp_244_fu_208_p3, "tmp_244_fu_208_p3");
    sc_trace(mVcdFile, or_ln412_59_fu_228_p2, "or_ln412_59_fu_228_p2");
    sc_trace(mVcdFile, tmp_246_fu_234_p3, "tmp_246_fu_234_p3");
    sc_trace(mVcdFile, and_ln415_8_fu_242_p2, "and_ln415_8_fu_242_p2");
    sc_trace(mVcdFile, zext_ln415_59_fu_248_p1, "zext_ln415_59_fu_248_p1");
    sc_trace(mVcdFile, trunc_ln708_s_fu_198_p4, "trunc_ln708_s_fu_198_p4");
    sc_trace(mVcdFile, add_ln415_59_fu_252_p2, "add_ln415_59_fu_252_p2");
    sc_trace(mVcdFile, tmp_247_fu_258_p3, "tmp_247_fu_258_p3");
    sc_trace(mVcdFile, tmp_245_fu_220_p3, "tmp_245_fu_220_p3");
    sc_trace(mVcdFile, xor_ln416_59_fu_266_p2, "xor_ln416_59_fu_266_p2");
    sc_trace(mVcdFile, p_Result_20_8_fu_278_p4, "p_Result_20_8_fu_278_p4");
    sc_trace(mVcdFile, and_ln416_59_fu_272_p2, "and_ln416_59_fu_272_p2");
    sc_trace(mVcdFile, icmp_ln879_59_fu_288_p2, "icmp_ln879_59_fu_288_p2");
    sc_trace(mVcdFile, icmp_ln768_59_fu_294_p2, "icmp_ln768_59_fu_294_p2");
    sc_trace(mVcdFile, select_ln777_59_fu_300_p3, "select_ln777_59_fu_300_p3");
    sc_trace(mVcdFile, icmp_ln1494_8_fu_192_p2, "icmp_ln1494_8_fu_192_p2");
    sc_trace(mVcdFile, select_ln340_8_fu_308_p3, "select_ln340_8_fu_308_p3");
    sc_trace(mVcdFile, select_ln1494_fu_184_p3, "select_ln1494_fu_184_p3");
    sc_trace(mVcdFile, select_ln1494_59_fu_316_p3, "select_ln1494_59_fu_316_p3");
    sc_trace(mVcdFile, ap_return_0_preg, "ap_return_0_preg");
    sc_trace(mVcdFile, ap_return_1_preg, "ap_return_1_preg");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s::~relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_done_reg = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_continue.read())) {
            ap_done_reg = ap_const_logic_0;
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                    !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
            ap_done_reg = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_return_0_preg = ap_const_lv8_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
             !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
            ap_return_0_preg = select_ln1494_fu_184_p3.read();
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_return_1_preg = ap_const_lv8_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
             !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
            ap_return_1_preg = select_ln1494_59_fu_316_p3.read();
        }
    }
}

void relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s::thread_add_ln415_59_fu_252_p2() {
    add_ln415_59_fu_252_p2 = (!zext_ln415_59_fu_248_p1.read().is_01() || !trunc_ln708_s_fu_198_p4.read().is_01())? sc_lv<8>(): (sc_biguint<8>(zext_ln415_59_fu_248_p1.read()) + sc_biguint<8>(trunc_ln708_s_fu_198_p4.read()));
}

void relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s::thread_add_ln415_fu_120_p2() {
    add_ln415_fu_120_p2 = (!zext_ln415_fu_116_p1.read().is_01() || !trunc_ln_fu_66_p4.read().is_01())? sc_lv<8>(): (sc_biguint<8>(zext_ln415_fu_116_p1.read()) + sc_biguint<8>(trunc_ln_fu_66_p4.read()));
}

void relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s::thread_and_ln415_1_fu_110_p2() {
    and_ln415_1_fu_110_p2 = (or_ln412_fu_96_p2.read() & tmp_242_fu_102_p3.read());
}

void relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s::thread_and_ln415_8_fu_242_p2() {
    and_ln415_8_fu_242_p2 = (or_ln412_59_fu_228_p2.read() & tmp_246_fu_234_p3.read());
}

void relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s::thread_and_ln416_59_fu_272_p2() {
    and_ln416_59_fu_272_p2 = (tmp_245_fu_220_p3.read() & xor_ln416_59_fu_266_p2.read());
}

void relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s::thread_and_ln416_fu_140_p2() {
    and_ln416_fu_140_p2 = (tmp_241_fu_88_p3.read() & xor_ln416_fu_134_p2.read());
}

void relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s::thread_ap_block_state1() {
    ap_block_state1 = (esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1));
}

void relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_done_reg.read();
    }
}

void relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s::thread_ap_return_0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
        ap_return_0 = select_ln1494_fu_184_p3.read();
    } else {
        ap_return_0 = ap_return_0_preg.read();
    }
}

void relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s::thread_ap_return_1() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
        ap_return_1 = select_ln1494_59_fu_316_p3.read();
    } else {
        ap_return_1 = ap_return_1_preg.read();
    }
}

void relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s::thread_icmp_ln1494_1_fu_60_p2() {
    icmp_ln1494_1_fu_60_p2 = (!data_1_V_read.read().is_01() || !ap_const_lv16_0.is_01())? sc_lv<1>(): (sc_bigint<16>(data_1_V_read.read()) > sc_bigint<16>(ap_const_lv16_0));
}

void relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s::thread_icmp_ln1494_8_fu_192_p2() {
    icmp_ln1494_8_fu_192_p2 = (!data_8_V_read.read().is_01() || !ap_const_lv16_0.is_01())? sc_lv<1>(): (sc_bigint<16>(data_8_V_read.read()) > sc_bigint<16>(ap_const_lv16_0));
}

void relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s::thread_icmp_ln768_59_fu_294_p2() {
    icmp_ln768_59_fu_294_p2 = (!p_Result_20_8_fu_278_p4.read().is_01() || !ap_const_lv6_0.is_01())? sc_lv<1>(): sc_lv<1>(p_Result_20_8_fu_278_p4.read() == ap_const_lv6_0);
}

void relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s::thread_icmp_ln768_fu_162_p2() {
    icmp_ln768_fu_162_p2 = (!p_Result_20_1_fu_146_p4.read().is_01() || !ap_const_lv6_0.is_01())? sc_lv<1>(): sc_lv<1>(p_Result_20_1_fu_146_p4.read() == ap_const_lv6_0);
}

void relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s::thread_icmp_ln879_59_fu_288_p2() {
    icmp_ln879_59_fu_288_p2 = (!p_Result_20_8_fu_278_p4.read().is_01() || !ap_const_lv6_3F.is_01())? sc_lv<1>(): sc_lv<1>(p_Result_20_8_fu_278_p4.read() == ap_const_lv6_3F);
}

void relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s::thread_icmp_ln879_fu_156_p2() {
    icmp_ln879_fu_156_p2 = (!p_Result_20_1_fu_146_p4.read().is_01() || !ap_const_lv6_3F.is_01())? sc_lv<1>(): sc_lv<1>(p_Result_20_1_fu_146_p4.read() == ap_const_lv6_3F);
}

void relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s::thread_or_ln412_59_fu_228_p2() {
    or_ln412_59_fu_228_p2 = (trunc_ln718_59_fu_216_p1.read() | tmp_244_fu_208_p3.read());
}

void relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s::thread_or_ln412_fu_96_p2() {
    or_ln412_fu_96_p2 = (trunc_ln718_fu_84_p1.read() | tmp_fu_76_p3.read());
}

void relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s::thread_p_Result_20_1_fu_146_p4() {
    p_Result_20_1_fu_146_p4 = data_1_V_read.read().range(15, 10);
}

void relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s::thread_p_Result_20_8_fu_278_p4() {
    p_Result_20_8_fu_278_p4 = data_8_V_read.read().range(15, 10);
}

void relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s::thread_select_ln1494_59_fu_316_p3() {
    select_ln1494_59_fu_316_p3 = (!icmp_ln1494_8_fu_192_p2.read()[0].is_01())? sc_lv<8>(): ((icmp_ln1494_8_fu_192_p2.read()[0].to_bool())? select_ln340_8_fu_308_p3.read(): ap_const_lv8_0);
}

void relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s::thread_select_ln1494_fu_184_p3() {
    select_ln1494_fu_184_p3 = (!icmp_ln1494_1_fu_60_p2.read()[0].is_01())? sc_lv<8>(): ((icmp_ln1494_1_fu_60_p2.read()[0].to_bool())? select_ln340_1_fu_176_p3.read(): ap_const_lv8_0);
}

void relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s::thread_select_ln340_1_fu_176_p3() {
    select_ln340_1_fu_176_p3 = (!select_ln777_fu_168_p3.read()[0].is_01())? sc_lv<8>(): ((select_ln777_fu_168_p3.read()[0].to_bool())? add_ln415_fu_120_p2.read(): ap_const_lv8_FF);
}

void relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s::thread_select_ln340_8_fu_308_p3() {
    select_ln340_8_fu_308_p3 = (!select_ln777_59_fu_300_p3.read()[0].is_01())? sc_lv<8>(): ((select_ln777_59_fu_300_p3.read()[0].to_bool())? add_ln415_59_fu_252_p2.read(): ap_const_lv8_FF);
}

void relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s::thread_select_ln777_59_fu_300_p3() {
    select_ln777_59_fu_300_p3 = (!and_ln416_59_fu_272_p2.read()[0].is_01())? sc_lv<1>(): ((and_ln416_59_fu_272_p2.read()[0].to_bool())? icmp_ln879_59_fu_288_p2.read(): icmp_ln768_59_fu_294_p2.read());
}

void relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s::thread_select_ln777_fu_168_p3() {
    select_ln777_fu_168_p3 = (!and_ln416_fu_140_p2.read()[0].is_01())? sc_lv<1>(): ((and_ln416_fu_140_p2.read()[0].to_bool())? icmp_ln879_fu_156_p2.read(): icmp_ln768_fu_162_p2.read());
}

void relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s::thread_tmp_241_fu_88_p3() {
    tmp_241_fu_88_p3 = data_1_V_read.read().range(9, 9);
}

void relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s::thread_tmp_242_fu_102_p3() {
    tmp_242_fu_102_p3 = data_1_V_read.read().range(1, 1);
}

void relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s::thread_tmp_243_fu_126_p3() {
    tmp_243_fu_126_p3 = add_ln415_fu_120_p2.read().range(7, 7);
}

void relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s::thread_tmp_244_fu_208_p3() {
    tmp_244_fu_208_p3 = data_8_V_read.read().range(2, 2);
}

void relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s::thread_tmp_245_fu_220_p3() {
    tmp_245_fu_220_p3 = data_8_V_read.read().range(9, 9);
}

void relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s::thread_tmp_246_fu_234_p3() {
    tmp_246_fu_234_p3 = data_8_V_read.read().range(1, 1);
}

void relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s::thread_tmp_247_fu_258_p3() {
    tmp_247_fu_258_p3 = add_ln415_59_fu_252_p2.read().range(7, 7);
}

void relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s::thread_tmp_fu_76_p3() {
    tmp_fu_76_p3 = data_1_V_read.read().range(2, 2);
}

void relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s::thread_trunc_ln708_s_fu_198_p4() {
    trunc_ln708_s_fu_198_p4 = data_8_V_read.read().range(9, 2);
}

void relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s::thread_trunc_ln718_59_fu_216_p1() {
    trunc_ln718_59_fu_216_p1 = data_8_V_read.read().range(1-1, 0);
}

void relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s::thread_trunc_ln718_fu_84_p1() {
    trunc_ln718_fu_84_p1 = data_1_V_read.read().range(1-1, 0);
}

void relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s::thread_trunc_ln_fu_66_p4() {
    trunc_ln_fu_66_p4 = data_1_V_read.read().range(9, 2);
}

void relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s::thread_xor_ln416_59_fu_266_p2() {
    xor_ln416_59_fu_266_p2 = (tmp_247_fu_258_p3.read() ^ ap_const_lv1_1);
}

void relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s::thread_xor_ln416_fu_134_p2() {
    xor_ln416_fu_134_p2 = (tmp_243_fu_126_p3.read() ^ ap_const_lv1_1);
}

void relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s::thread_zext_ln415_59_fu_248_p1() {
    zext_ln415_59_fu_248_p1 = esl_zext<8,1>(and_ln415_8_fu_242_p2.read());
}

void relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s::thread_zext_ln415_fu_116_p1() {
    zext_ln415_fu_116_p1 = esl_zext<8,1>(and_ln415_1_fu_110_p2.read());
}

void relu_ap_fixed_16_6_5_3_0_ap_ufixed_8_0_4_0_0_relu_config11_s::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            ap_NS_fsm = ap_ST_fsm_state1;
break;
        default : 
            ap_NS_fsm = "X";
            break;
    }
}

}
