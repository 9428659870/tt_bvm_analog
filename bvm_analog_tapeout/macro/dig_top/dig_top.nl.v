module dig_top (bg_en,
    bg_ok_combined,
    bg_valid,
    bias_en,
    bias_ok,
    cap,
    clk,
    dbl_en,
    ena,
    i8_en,
    ota_en,
    phi1,
    phi2,
    pwm0_clk,
    pwm0_clk_sel,
    pwm0_out,
    pwm1_clk,
    pwm1_clk_sel,
    pwm1_out,
    rst_n,
    spi_cs_n,
    spi_miso,
    spi_mosi,
    spi_sck,
    bg_trim,
    bias_trim);
 output bg_en;
 output bg_ok_combined;
 output bg_valid;
 output bias_en;
 input bias_ok;
 output cap;
 input clk;
 output dbl_en;
 input ena;
 output i8_en;
 output ota_en;
 output phi1;
 output phi2;
 input pwm0_clk;
 output pwm0_clk_sel;
 output pwm0_out;
 input pwm1_clk;
 output pwm1_clk_sel;
 output pwm1_out;
 input rst_n;
 input spi_cs_n;
 output spi_miso;
 input spi_mosi;
 input spi_sck;
 output [3:0] bg_trim;
 output [4:0] bias_trim;

 wire bg_burst;
 wire bg_burst_sky130_fd_sc_hd__dfrtp_2_Q_D;
 wire \bg_div_sel[0] ;
 wire \bg_div_sel[0]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \bg_div_sel[1] ;
 wire \bg_div_sel[1]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \bg_div_sel[2] ;
 wire \bg_div_sel[2]_sky130_fd_sc_hd__dfstp_2_Q_D ;
 wire net7;
 wire bg_en_sky130_fd_sc_hd__dfstp_2_Q_D;
 wire \bg_hold_exp[0] ;
 wire \bg_hold_exp[0]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \bg_hold_exp[1] ;
 wire \bg_hold_exp[1]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \bg_hold_exp[2] ;
 wire \bg_hold_exp[2]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \bg_hold_exp[3] ;
 wire \bg_hold_exp[3]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire net8;
 wire bg_ok_combined_sky130_fd_sc_hd__a22o_2_B2_X;
 wire bg_ok_combined_sky130_fd_sc_hd__a22o_2_B2_X_sky130_fd_sc_hd__a221o_2_C1_X;
 wire net9;
 wire net10;
 wire net11;
 wire net12;
 wire bg_trim_sky130_fd_sc_hd__dfrtp_2_Q_1_D;
 wire bg_trim_sky130_fd_sc_hd__dfrtp_2_Q_2_D;
 wire bg_trim_sky130_fd_sc_hd__dfrtp_2_Q_D;
 wire bg_trim_sky130_fd_sc_hd__dfstp_2_Q_D;
 wire net13;
 wire bg_valid_sky130_fd_sc_hd__a221o_2_A1_A2;
 wire bg_valid_sky130_fd_sc_hd__a221o_2_A1_B1;
 wire bg_valid_sky130_fd_sc_hd__a221o_2_A1_C1;
 wire bg_valid_sky130_fd_sc_hd__a221o_2_A1_X;
 wire bg_valid_sky130_fd_sc_hd__dfrtp_2_Q_D;
 wire bg_valid_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__nor2_2_A_B;
 wire bg_valid_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__nor2_2_A_B_sky130_fd_sc_hd__o2bb2a_2_A2_N_X;
 wire bg_valid_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__nor2_2_A_Y;
 wire net14;
 wire bias_en_sky130_fd_sc_hd__a22o_2_B2_A2;
 wire bias_en_sky130_fd_sc_hd__a22o_2_B2_B1;
 wire bias_en_sky130_fd_sc_hd__a22o_2_B2_X;
 wire bias_en_sky130_fd_sc_hd__a22o_2_B2_X_sky130_fd_sc_hd__o31a_2_A3_A1;
 wire bias_en_sky130_fd_sc_hd__a22o_2_B2_X_sky130_fd_sc_hd__o31a_2_A3_A2;
 wire bias_en_sky130_fd_sc_hd__dfstp_2_Q_D;
 wire net1;
 wire bias_ok_meta;
 wire bias_ok_sync;
 wire net15;
 wire net16;
 wire net17;
 wire net18;
 wire net19;
 wire bias_trim_sky130_fd_sc_hd__dfrtp_2_Q_1_D;
 wire bias_trim_sky130_fd_sc_hd__dfrtp_2_Q_2_D;
 wire bias_trim_sky130_fd_sc_hd__dfrtp_2_Q_3_D;
 wire bias_trim_sky130_fd_sc_hd__dfrtp_2_Q_D;
 wire bias_trim_sky130_fd_sc_hd__dfstp_2_Q_D;
 wire net20;
 wire cap_sky130_fd_sc_hd__dfrtp_2_Q_D;
 wire cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_A;
 wire cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_A_sky130_fd_sc_hd__and4b_2_X_A_N;
 wire cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_A_sky130_fd_sc_hd__and4b_2_X_B;
 wire cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_A_sky130_fd_sc_hd__and4b_2_X_B_sky130_fd_sc_hd__xnor2_2_Y_B;
 wire cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_A_sky130_fd_sc_hd__and4b_2_X_C;
 wire cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_A_sky130_fd_sc_hd__and4b_2_X_C_sky130_fd_sc_hd__xnor2_2_Y_B;
 wire cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_A_sky130_fd_sc_hd__and4b_2_X_D;
 wire cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_A_sky130_fd_sc_hd__and4bb_2_C_X;
 wire cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_A_sky130_fd_sc_hd__and4bb_2_C_X_sky130_fd_sc_hd__nor2_2_A_Y;
 wire cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_B;
 wire cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_B_sky130_fd_sc_hd__nor2_2_Y_A;
 wire cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_B_sky130_fd_sc_hd__nor2_2_Y_A_sky130_fd_sc_hd__a21boi_2_Y_A1;
 wire cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_B_sky130_fd_sc_hd__nor2_2_Y_A_sky130_fd_sc_hd__a21boi_2_Y_A1_sky130_fd_sc_hd__o211a_2_X_A2;
 wire cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_B_sky130_fd_sc_hd__nor2_2_Y_A_sky130_fd_sc_hd__a21boi_2_Y_A1_sky130_fd_sc_hd__o211a_2_X_B1;
 wire cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_B_sky130_fd_sc_hd__nor2_2_Y_A_sky130_fd_sc_hd__a21boi_2_Y_A2;
 wire cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_B_sky130_fd_sc_hd__nor2_2_Y_A_sky130_fd_sc_hd__a21boi_2_Y_B1_N;
 wire cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_B_sky130_fd_sc_hd__nor2_2_Y_B;
 wire cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_B_sky130_fd_sc_hd__nor2_2_Y_B_sky130_fd_sc_hd__xor2_2_X_B;
 wire cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_B_sky130_fd_sc_hd__nor2_2_Y_B_sky130_fd_sc_hd__xor2_2_X_B_sky130_fd_sc_hd__or2_2_X_B;
 wire cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_C;
 wire cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_D;
 wire net21;
 wire dbl_en_sky130_fd_sc_hd__and4b_2_C_X;
 wire dbl_en_sky130_fd_sc_hd__and4b_2_C_X_sky130_fd_sc_hd__a221o_2_C1_B1;
 wire dbl_en_sky130_fd_sc_hd__and4b_2_C_X_sky130_fd_sc_hd__a221o_2_C1_X;
 wire dbl_en_sky130_fd_sc_hd__dfrtp_2_Q_D;
 wire dbl_en_sky130_fd_sc_hd__mux2_1_A1_S;
 wire dbl_en_sky130_fd_sc_hd__mux2_1_A1_S_sky130_fd_sc_hd__or3_2_X_B;
 wire dbl_en_sky130_fd_sc_hd__mux2_1_A1_S_sky130_fd_sc_hd__or3_2_X_B_sky130_fd_sc_hd__nor2_2_B_Y;
 wire dbl_en_sky130_fd_sc_hd__mux2_1_A1_S_sky130_fd_sc_hd__or3_2_X_C;
 wire net2;
 wire net22;
 wire i8_en_sky130_fd_sc_hd__dfrtp_2_Q_D;
 wire net23;
 wire ota_en_sky130_fd_sc_hd__dfrtp_2_Q_D;
 wire ota_en_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o31a_2_X_A3;
 wire ota_en_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o31a_2_X_A3_sky130_fd_sc_hd__nor2_2_Y_A;
 wire net24;
 wire phi1_sky130_fd_sc_hd__dfrtp_2_Q_D;
 wire net25;
 wire phi2_sky130_fd_sc_hd__dfrtp_2_Q_D;
 wire phi2_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3_2_X_B;
 wire phi2_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3_2_X_B_sky130_fd_sc_hd__or4_2_X_A;
 wire phi2_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3_2_X_B_sky130_fd_sc_hd__or4_2_X_B;
 wire phi2_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3_2_X_B_sky130_fd_sc_hd__or4_2_X_D;
 wire net26;
 wire pwm0_clk_sel_sky130_fd_sc_hd__a221o_2_B2_C1;
 wire pwm0_clk_sel_sky130_fd_sc_hd__a221o_2_B2_X;
 wire pwm0_clk_sel_sky130_fd_sc_hd__dfrtp_2_Q_D;
 wire pwm0_clk_sel_sky130_fd_sc_hd__mux2_1_A0_S;
 wire pwm0_clk_sel_sky130_fd_sc_hd__mux2_1_A0_S_sky130_fd_sc_hd__nor2_2_Y_A;
 wire \pwm0_duty[0] ;
 wire \pwm0_duty[0]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \pwm0_duty[1] ;
 wire \pwm0_duty[1]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \pwm0_duty[2] ;
 wire \pwm0_duty[2]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \pwm0_duty[3] ;
 wire \pwm0_duty[3]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \pwm0_duty[4] ;
 wire \pwm0_duty[4]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \pwm0_duty[5] ;
 wire \pwm0_duty[5]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \pwm0_duty[6] ;
 wire \pwm0_duty[6]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \pwm0_duty[7] ;
 wire \pwm0_duty[7]_sky130_fd_sc_hd__dfstp_2_Q_D ;
 wire pwm0_enable;
 wire pwm0_enable_sky130_fd_sc_hd__and2_2_B_X;
 wire pwm0_enable_sky130_fd_sc_hd__dfstp_2_Q_D;
 wire net27;
 wire pwm0_out_sky130_fd_sc_hd__dfrtp_2_Q_D;
 wire pwm0_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_A1;
 wire pwm0_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_A1_sky130_fd_sc_hd__a41o_2_B1_A3;
 wire pwm0_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_A1_sky130_fd_sc_hd__a41o_2_B1_A4;
 wire pwm0_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B1;
 wire pwm0_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B1_sky130_fd_sc_hd__and2_2_X_B;
 wire pwm0_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2;
 wire pwm0_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X_A2;
 wire pwm0_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X_B1;
 wire pwm0_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X_B1_sky130_fd_sc_hd__o221a_2_X_B2;
 wire pwm0_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X_B1_sky130_fd_sc_hd__o221a_2_X_C1;
 wire pwm0_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X_B1_sky130_fd_sc_hd__o221a_2_X_C1_sky130_fd_sc_hd__a21o_2_X_A1;
 wire pwm0_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X_B2;
 wire pwm0_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X_B2_sky130_fd_sc_hd__a22o_2_X_B2;
 wire pwm0_width;
 wire pwm0_width_sky130_fd_sc_hd__dfrtp_2_Q_D;
 wire net28;
 wire pwm1_clk_sel_sky130_fd_sc_hd__a211o_2_A1_A2;
 wire pwm1_clk_sel_sky130_fd_sc_hd__a211o_2_A1_B1;
 wire pwm1_clk_sel_sky130_fd_sc_hd__a211o_2_A1_B1_sky130_fd_sc_hd__a22o_2_X_B1;
 wire pwm1_clk_sel_sky130_fd_sc_hd__a211o_2_A1_X;
 wire pwm1_clk_sel_sky130_fd_sc_hd__dfrtp_2_Q_D;
 wire pwm1_clk_sel_sky130_fd_sc_hd__mux2_1_A0_S;
 wire pwm1_clk_sel_sky130_fd_sc_hd__mux2_1_A0_S_sky130_fd_sc_hd__nor3_2_Y_C;
 wire pwm1_clk_sel_sky130_fd_sc_hd__mux2_1_A0_S_sky130_fd_sc_hd__nor3_2_Y_C_sky130_fd_sc_hd__inv_2_A_Y;
 wire pwm1_clk_sel_sky130_fd_sc_hd__mux2_1_A0_S_sky130_fd_sc_hd__nor3_2_Y_C_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__and4b_2_C_X;
 wire \pwm1_duty[0] ;
 wire \pwm1_duty[0]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \pwm1_duty[1] ;
 wire \pwm1_duty[1]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \pwm1_duty[2] ;
 wire \pwm1_duty[2]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \pwm1_duty[3] ;
 wire \pwm1_duty[3]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \pwm1_duty[4] ;
 wire \pwm1_duty[4]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \pwm1_duty[5] ;
 wire \pwm1_duty[5]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \pwm1_duty[6] ;
 wire \pwm1_duty[6]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \pwm1_duty[7] ;
 wire \pwm1_duty[7]_sky130_fd_sc_hd__dfstp_2_Q_D ;
 wire pwm1_enable;
 wire pwm1_enable_sky130_fd_sc_hd__and2_2_B_X;
 wire pwm1_enable_sky130_fd_sc_hd__dfstp_2_Q_D;
 wire net29;
 wire pwm1_out_sky130_fd_sc_hd__dfrtp_2_Q_D;
 wire pwm1_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_A1;
 wire pwm1_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_A1_sky130_fd_sc_hd__a41o_2_B1_A3;
 wire pwm1_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_A1_sky130_fd_sc_hd__a41o_2_B1_A4;
 wire pwm1_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B1;
 wire pwm1_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B1_sky130_fd_sc_hd__and2_2_X_B;
 wire pwm1_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2;
 wire pwm1_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X_A2;
 wire pwm1_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X_B1;
 wire pwm1_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X_B1_sky130_fd_sc_hd__o221a_2_X_B2;
 wire pwm1_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X_B1_sky130_fd_sc_hd__o221a_2_X_C1;
 wire pwm1_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X_B1_sky130_fd_sc_hd__o221a_2_X_C1_sky130_fd_sc_hd__a221o_2_X_B1;
 wire pwm1_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X_B1_sky130_fd_sc_hd__o221a_2_X_C1_sky130_fd_sc_hd__a221o_2_X_B2;
 wire pwm1_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X_B1_sky130_fd_sc_hd__o221a_2_X_C1_sky130_fd_sc_hd__a221o_2_X_C1;
 wire pwm1_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X_B2;
 wire pwm1_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X_B2_sky130_fd_sc_hd__a22o_2_X_B2;
 wire pwm1_width;
 wire pwm1_width_sky130_fd_sc_hd__dfrtp_2_Q_D;
 wire \rd_addr[0] ;
 wire \rd_addr[0]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \rd_addr[1] ;
 wire \rd_addr[1]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \rd_addr[2] ;
 wire \rd_addr[2]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \rd_addr[3] ;
 wire \rd_addr[3]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \rd_addr[4] ;
 wire \rd_addr[4]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \rd_addr[5] ;
 wire \rd_addr[5]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \rd_addr[5]_sky130_fd_sc_hd__or3_2_A_X ;
 wire \rd_addr[5]_sky130_fd_sc_hd__or3_2_A_X_sky130_fd_sc_hd__nor2_2_A_B ;
 wire \rd_addr[5]_sky130_fd_sc_hd__or3_2_A_X_sky130_fd_sc_hd__nor2_2_A_Y ;
 wire \rd_addr[5]_sky130_fd_sc_hd__or3_2_A_X_sky130_fd_sc_hd__nor3_2_C_Y ;
 wire \rd_addr[5]_sky130_fd_sc_hd__or3_2_A_X_sky130_fd_sc_hd__nor3b_2_B_Y ;
 wire \rd_addr[6] ;
 wire \rd_addr[6]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire net3;
 wire net4;
 wire net30;
 wire spi_miso_sky130_fd_sc_hd__dfrtp_2_Q_D;
 wire spi_miso_sky130_fd_sc_hd__o221a_2_A1_A2;
 wire spi_miso_sky130_fd_sc_hd__o221a_2_A1_B2;
 wire spi_miso_sky130_fd_sc_hd__o221a_2_A1_C1;
 wire net5;
 wire net6;
 wire \u_bg_seq.cnt[0] ;
 wire \u_bg_seq.cnt[0]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_bg_seq.cnt[10] ;
 wire \u_bg_seq.cnt[10]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_bg_seq.cnt[10]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3_2_X_B ;
 wire \u_bg_seq.cnt[10]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3_2_X_C ;
 wire \u_bg_seq.cnt[11] ;
 wire \u_bg_seq.cnt[11]_sky130_fd_sc_hd__a31o_2_B1_A1 ;
 wire \u_bg_seq.cnt[11]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_bg_seq.cnt[11]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__nor2_2_Y_A ;
 wire \u_bg_seq.cnt[11]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__nor2_2_Y_B ;
 wire \u_bg_seq.cnt[1] ;
 wire \u_bg_seq.cnt[1]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_bg_seq.cnt[1]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3_2_X_A ;
 wire \u_bg_seq.cnt[1]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3_2_X_B ;
 wire \u_bg_seq.cnt[2] ;
 wire \u_bg_seq.cnt[2]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_bg_seq.cnt[2]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a21oi_2_Y_A1 ;
 wire \u_bg_seq.cnt[2]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a21oi_2_Y_B1 ;
 wire \u_bg_seq.cnt[3] ;
 wire \u_bg_seq.cnt[3]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_bg_seq.cnt[3]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X_C ;
 wire \u_bg_seq.cnt[4] ;
 wire \u_bg_seq.cnt[4]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_bg_seq.cnt[4]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o21a_2_X_A2 ;
 wire \u_bg_seq.cnt[4]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o21a_2_X_B1 ;
 wire \u_bg_seq.cnt[5] ;
 wire \u_bg_seq.cnt[5]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_bg_seq.cnt[5]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X_A_N ;
 wire \u_bg_seq.cnt[5]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X_B ;
 wire \u_bg_seq.cnt[6] ;
 wire \u_bg_seq.cnt[6]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_bg_seq.cnt[6]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X_B ;
 wire \u_bg_seq.cnt[7] ;
 wire \u_bg_seq.cnt[7]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_bg_seq.cnt[7]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a21boi_2_Y_A2 ;
 wire \u_bg_seq.cnt[7]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a21boi_2_Y_B1_N ;
 wire \u_bg_seq.cnt[8] ;
 wire \u_bg_seq.cnt[8]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_bg_seq.cnt[8]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X_A_N ;
 wire \u_bg_seq.cnt[8]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X_B ;
 wire \u_bg_seq.cnt[9] ;
 wire \u_bg_seq.cnt[9]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_bg_seq.cnt[9]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X_A_N ;
 wire \u_bg_seq.cnt[9]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X_C ;
 wire \u_bg_seq.hcnt[0] ;
 wire \u_bg_seq.hcnt[0]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_bg_seq.hcnt[0]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_A0 ;
 wire \u_bg_seq.hcnt[0]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_A1 ;
 wire \u_bg_seq.hcnt[10] ;
 wire \u_bg_seq.hcnt[10]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_bg_seq.hcnt[10]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a2bb2o_2_X_A1_N ;
 wire \u_bg_seq.hcnt[10]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a2bb2o_2_X_B1 ;
 wire \u_bg_seq.hcnt[11] ;
 wire \u_bg_seq.hcnt[11]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_bg_seq.hcnt[11]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o21a_2_X_A2 ;
 wire \u_bg_seq.hcnt[11]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o21a_2_X_A2_sky130_fd_sc_hd__nor2_2_Y_B ;
 wire \u_bg_seq.hcnt[11]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o21a_2_X_B1 ;
 wire \u_bg_seq.hcnt[12] ;
 wire \u_bg_seq.hcnt[12]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_bg_seq.hcnt[12]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o21a_2_X_A2 ;
 wire \u_bg_seq.hcnt[12]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o21a_2_X_B1 ;
 wire \u_bg_seq.hcnt[13] ;
 wire \u_bg_seq.hcnt[13]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_bg_seq.hcnt[13]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o31a_2_X_A1 ;
 wire \u_bg_seq.hcnt[13]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o31a_2_X_A1_sky130_fd_sc_hd__xnor2_2_A_B ;
 wire \u_bg_seq.hcnt[13]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o31a_2_X_A1_sky130_fd_sc_hd__xnor2_2_A_Y ;
 wire \u_bg_seq.hcnt[13]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o31a_2_X_A1_sky130_fd_sc_hd__xnor2_2_A_Y_sky130_fd_sc_hd__or4_2_A_B ;
 wire \u_bg_seq.hcnt[13]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o31a_2_X_A1_sky130_fd_sc_hd__xnor2_2_A_Y_sky130_fd_sc_hd__or4_2_A_B_sky130_fd_sc_hd__and3_2_X_C ;
 wire \u_bg_seq.hcnt[13]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o31a_2_X_A1_sky130_fd_sc_hd__xnor2_2_A_Y_sky130_fd_sc_hd__or4_2_A_C ;
 wire \u_bg_seq.hcnt[13]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o31a_2_X_A1_sky130_fd_sc_hd__xnor2_2_A_Y_sky130_fd_sc_hd__or4_2_A_D ;
 wire \u_bg_seq.hcnt[13]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o31a_2_X_A1_sky130_fd_sc_hd__xnor2_2_A_Y_sky130_fd_sc_hd__or4_2_A_X ;
 wire \u_bg_seq.hcnt[13]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o31a_2_X_B1 ;
 wire \u_bg_seq.hcnt[14] ;
 wire \u_bg_seq.hcnt[14]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_bg_seq.hcnt[14]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o22a_2_X_A2 ;
 wire \u_bg_seq.hcnt[14]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o22a_2_X_B1 ;
 wire \u_bg_seq.hcnt[15] ;
 wire \u_bg_seq.hcnt[15]_sky130_fd_sc_hd__a41o_2_B1_A2 ;
 wire \u_bg_seq.hcnt[15]_sky130_fd_sc_hd__a41o_2_B1_A4 ;
 wire \u_bg_seq.hcnt[15]_sky130_fd_sc_hd__a41o_2_B1_A4_sky130_fd_sc_hd__and3_2_X_C ;
 wire \u_bg_seq.hcnt[15]_sky130_fd_sc_hd__a41o_2_B1_X ;
 wire \u_bg_seq.hcnt[15]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y ;
 wire \u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_A1 ;
 wire \u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y ;
 wire \u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_B1 ;
 wire \u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_B1_sky130_fd_sc_hd__o21a_2_X_A1 ;
 wire \u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_B1_sky130_fd_sc_hd__o21a_2_X_A2 ;
 wire \u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_D1 ;
 wire \u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_D1_sky130_fd_sc_hd__a2bb2o_2_X_A2_N ;
 wire \u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X ;
 wire \u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_B ;
 wire \u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_B_sky130_fd_sc_hd__or4b_2_X_A ;
 wire \u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_B_sky130_fd_sc_hd__or4b_2_X_A_sky130_fd_sc_hd__xor2_2_X_B ;
 wire \u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_B_sky130_fd_sc_hd__or4b_2_X_B ;
 wire \u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_B_sky130_fd_sc_hd__or4b_2_X_B_sky130_fd_sc_hd__o21a_2_X_A2 ;
 wire \u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_B_sky130_fd_sc_hd__or4b_2_X_C ;
 wire \u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_B_sky130_fd_sc_hd__or4b_2_X_D_N ;
 wire \u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_C ;
 wire \u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_C_sky130_fd_sc_hd__or4b_2_X_A ;
 wire \u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_C_sky130_fd_sc_hd__or4b_2_X_A_sky130_fd_sc_hd__a21oi_2_Y_A1 ;
 wire \u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_C_sky130_fd_sc_hd__or4b_2_X_B ;
 wire \u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_C_sky130_fd_sc_hd__or4b_2_X_C ;
 wire \u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_C_sky130_fd_sc_hd__or4b_2_X_D_N ;
 wire \u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_C_sky130_fd_sc_hd__or4b_2_X_D_N_sky130_fd_sc_hd__o32a_2_X_B1 ;
 wire \u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_C_sky130_fd_sc_hd__or4b_2_X_D_N_sky130_fd_sc_hd__o32a_2_X_B2 ;
 wire \u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_D ;
 wire \u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_D_sky130_fd_sc_hd__or3b_2_X_A ;
 wire \u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_D_sky130_fd_sc_hd__or3b_2_X_A_sky130_fd_sc_hd__o211a_2_X_A1 ;
 wire \u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_D_sky130_fd_sc_hd__or3b_2_X_B ;
 wire \u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_D_sky130_fd_sc_hd__or3b_2_X_B_sky130_fd_sc_hd__xor2_2_X_B ;
 wire \u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_D_sky130_fd_sc_hd__or3b_2_X_C_N ;
 wire \u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_Y ;
 wire \u_bg_seq.hcnt[1] ;
 wire \u_bg_seq.hcnt[1]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_bg_seq.hcnt[1]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a32o_2_X_A2 ;
 wire \u_bg_seq.hcnt[1]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a32o_2_X_A3 ;
 wire \u_bg_seq.hcnt[2] ;
 wire \u_bg_seq.hcnt[2]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_bg_seq.hcnt[2]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a32o_2_X_A2 ;
 wire \u_bg_seq.hcnt[2]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a32o_2_X_A3 ;
 wire \u_bg_seq.hcnt[3] ;
 wire \u_bg_seq.hcnt[3]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_bg_seq.hcnt[3]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a32o_2_X_A2 ;
 wire \u_bg_seq.hcnt[3]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a32o_2_X_A3 ;
 wire \u_bg_seq.hcnt[4] ;
 wire \u_bg_seq.hcnt[4]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_bg_seq.hcnt[4]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a32o_2_X_A2 ;
 wire \u_bg_seq.hcnt[4]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a32o_2_X_A3 ;
 wire \u_bg_seq.hcnt[5] ;
 wire \u_bg_seq.hcnt[5]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_bg_seq.hcnt[5]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and2b_2_X_A_N ;
 wire \u_bg_seq.hcnt[5]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and2b_2_X_B ;
 wire \u_bg_seq.hcnt[6] ;
 wire \u_bg_seq.hcnt[6]_sky130_fd_sc_hd__and4_2_C_D ;
 wire \u_bg_seq.hcnt[6]_sky130_fd_sc_hd__and4_2_C_X ;
 wire \u_bg_seq.hcnt[6]_sky130_fd_sc_hd__and4_2_C_X_sky130_fd_sc_hd__and2_2_B_X ;
 wire \u_bg_seq.hcnt[6]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_bg_seq.hcnt[6]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a2bb2o_2_X_B1 ;
 wire \u_bg_seq.hcnt[6]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a2bb2o_2_X_B1_sky130_fd_sc_hd__and2_2_X_B ;
 wire \u_bg_seq.hcnt[6]_sky130_fd_sc_hd__inv_2_A_Y ;
 wire \u_bg_seq.hcnt[7] ;
 wire \u_bg_seq.hcnt[7]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_bg_seq.hcnt[7]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and2_2_X_A ;
 wire \u_bg_seq.hcnt[7]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and2_2_X_B ;
 wire \u_bg_seq.hcnt[8] ;
 wire \u_bg_seq.hcnt[8]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_bg_seq.hcnt[8]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a22o_2_X_B1 ;
 wire \u_bg_seq.hcnt[9] ;
 wire \u_bg_seq.hcnt[9]_sky130_fd_sc_hd__and4_2_C_X ;
 wire \u_bg_seq.hcnt[9]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_bg_seq.hcnt[9]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and2b_2_X_A_N ;
 wire \u_bg_seq.hcnt[9]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and2b_2_X_B ;
 wire \u_bg_seq.hcnt[9]_sky130_fd_sc_hd__xnor2_2_A_B ;
 wire \u_bg_seq.hcnt[9]_sky130_fd_sc_hd__xnor2_2_A_Y ;
 wire \u_bg_seq.hcnt[9]_sky130_fd_sc_hd__xnor2_2_A_Y_sky130_fd_sc_hd__a2111oi_2_D1_A2 ;
 wire \u_bg_seq.hcnt[9]_sky130_fd_sc_hd__xnor2_2_A_Y_sky130_fd_sc_hd__a2111oi_2_D1_C1 ;
 wire \u_bg_seq.hcnt[9]_sky130_fd_sc_hd__xnor2_2_A_Y_sky130_fd_sc_hd__a2111oi_2_D1_C1_sky130_fd_sc_hd__nor2_2_Y_B ;
 wire \u_bg_seq.hcnt[9]_sky130_fd_sc_hd__xnor2_2_A_Y_sky130_fd_sc_hd__a2111oi_2_D1_Y ;
 wire \u_bg_seq.hcnt[9]_sky130_fd_sc_hd__xnor2_2_A_Y_sky130_fd_sc_hd__a2111oi_2_D1_Y_sky130_fd_sc_hd__nand2_2_A_Y ;
 wire \u_bg_seq.hcnt[9]_sky130_fd_sc_hd__xnor2_2_A_Y_sky130_fd_sc_hd__a2111oi_2_D1_Y_sky130_fd_sc_hd__nand3_2_A_Y ;
 wire \u_bg_seq.state[0] ;
 wire \u_bg_seq.state[0]_sky130_fd_sc_hd__dfstp_2_Q_D ;
 wire \u_bg_seq.state[0]_sky130_fd_sc_hd__dfstp_2_Q_D_sky130_fd_sc_hd__a21o_2_X_B1 ;
 wire \u_bg_seq.state[0]_sky130_fd_sc_hd__dfstp_2_Q_D_sky130_fd_sc_hd__a21o_2_X_B1_sky130_fd_sc_hd__a211o_2_X_B1 ;
 wire \u_bg_seq.state[1] ;
 wire \u_bg_seq.state[1]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_bg_seq.state[1]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a31o_2_X_B1 ;
 wire \u_bg_seq.state[1]_sky130_fd_sc_hd__nand2_2_A_B ;
 wire \u_bg_seq.state[1]_sky130_fd_sc_hd__nand2_2_A_Y ;
 wire \u_bg_seq.state[2] ;
 wire \u_bg_seq.state[2]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_bg_seq.updates[0] ;
 wire \u_bg_seq.updates[0]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_bg_seq.updates[0]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3_2_X_B ;
 wire \u_bg_seq.updates[0]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3_2_X_C ;
 wire \u_bg_seq.updates[1] ;
 wire \u_bg_seq.updates[1]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_bg_seq.updates[1]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a21oi_2_Y_B1 ;
 wire \u_bg_seq.updates[1]_sky130_fd_sc_hd__inv_2_A_Y ;
 wire \u_bg_seq.updates[1]_sky130_fd_sc_hd__o2111a_2_C1_A2 ;
 wire \u_bg_seq.updates[1]_sky130_fd_sc_hd__o2111a_2_C1_X ;
 wire \u_bg_seq.updates[2] ;
 wire \u_bg_seq.updates[2]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_bg_seq.updates[2]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a21oi_2_Y_B1 ;
 wire \u_pwm0.phase[0] ;
 wire \u_pwm0.phase[0]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_pwm0.phase[0]_sky130_fd_sc_hd__inv_2_A_Y ;
 wire \u_pwm0.phase[1] ;
 wire \u_pwm0.phase[1]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_pwm0.phase[1]_sky130_fd_sc_hd__inv_2_A_Y ;
 wire \u_pwm0.phase[1]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__a22o_2_A2_X ;
 wire \u_pwm0.phase[1]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_A1_Y ;
 wire \u_pwm0.phase[1]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__or2_2_B_X ;
 wire \u_pwm0.phase[1]_sky130_fd_sc_hd__o211a_2_A1_C1 ;
 wire \u_pwm0.phase[2] ;
 wire \u_pwm0.phase[2]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_pwm0.phase[2]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a21oi_2_Y_B1 ;
 wire \u_pwm0.phase[3] ;
 wire \u_pwm0.phase[3]_sky130_fd_sc_hd__and3_2_A_X ;
 wire \u_pwm0.phase[3]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_pwm0.phase[3]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X_C ;
 wire \u_pwm0.phase[3]_sky130_fd_sc_hd__inv_2_A_Y ;
 wire \u_pwm0.phase[3]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__a22o_2_B2_X ;
 wire \u_pwm0.phase[3]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o22a_2_A2_B2 ;
 wire \u_pwm0.phase[3]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o22a_2_A2_X ;
 wire \u_pwm0.phase[4] ;
 wire \u_pwm0.phase[4]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_pwm0.phase[4]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__nor2_2_Y_B ;
 wire \u_pwm0.phase[5] ;
 wire \u_pwm0.phase[5]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_pwm0.phase[5]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a21oi_2_Y_B1 ;
 wire \u_pwm0.phase[6] ;
 wire \u_pwm0.phase[6]_sky130_fd_sc_hd__and3_2_A_C ;
 wire \u_pwm0.phase[6]_sky130_fd_sc_hd__and3_2_A_X ;
 wire \u_pwm0.phase[6]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_pwm0.phase[6]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X_C ;
 wire \u_pwm0.phase[7] ;
 wire \u_pwm0.phase[7]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_pwm0.phase[7]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a21oi_2_Y_B1 ;
 wire \u_pwm0.rst_n ;
 wire \u_pwm1.phase[0] ;
 wire \u_pwm1.phase[0]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_pwm1.phase[0]_sky130_fd_sc_hd__inv_2_A_Y ;
 wire \u_pwm1.phase[1] ;
 wire \u_pwm1.phase[1]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_pwm1.phase[1]_sky130_fd_sc_hd__inv_2_A_Y ;
 wire \u_pwm1.phase[1]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__a22o_2_A2_X ;
 wire \u_pwm1.phase[1]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_A1_Y ;
 wire \u_pwm1.phase[1]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o221a_2_B2_A2 ;
 wire \u_pwm1.phase[1]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o221a_2_B2_X ;
 wire \u_pwm1.phase[1]_sky130_fd_sc_hd__o211a_2_A1_C1 ;
 wire \u_pwm1.phase[2] ;
 wire \u_pwm1.phase[2]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_pwm1.phase[2]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a21oi_2_Y_B1 ;
 wire \u_pwm1.phase[3] ;
 wire \u_pwm1.phase[3]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_pwm1.phase[3]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X_A_N ;
 wire \u_pwm1.phase[3]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X_C ;
 wire \u_pwm1.phase[4] ;
 wire \u_pwm1.phase[4]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_pwm1.phase[4]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__nor2_2_Y_B ;
 wire \u_pwm1.phase[5] ;
 wire \u_pwm1.phase[5]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_pwm1.phase[5]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a21oi_2_Y_B1 ;
 wire \u_pwm1.phase[6] ;
 wire \u_pwm1.phase[6]_sky130_fd_sc_hd__and3_2_A_C ;
 wire \u_pwm1.phase[6]_sky130_fd_sc_hd__and3_2_A_X ;
 wire \u_pwm1.phase[6]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_pwm1.phase[6]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X_C ;
 wire \u_pwm1.phase[7] ;
 wire \u_pwm1.phase[7]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_pwm1.phase[7]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a21oi_2_Y_B1 ;
 wire \u_reg_bank.wr_addr[0] ;
 wire \u_reg_bank.wr_addr[0]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_reg_bank.wr_addr[1] ;
 wire \u_reg_bank.wr_addr[1]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_reg_bank.wr_addr[2] ;
 wire \u_reg_bank.wr_addr[2]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_reg_bank.wr_addr[3] ;
 wire \u_reg_bank.wr_addr[3]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_reg_bank.wr_addr[3]_sky130_fd_sc_hd__or4_2_A_X ;
 wire \u_reg_bank.wr_addr[3]_sky130_fd_sc_hd__or4_2_A_X_sky130_fd_sc_hd__or2_2_B_A ;
 wire \u_reg_bank.wr_addr[3]_sky130_fd_sc_hd__or4_2_A_X_sky130_fd_sc_hd__or3b_2_B_X ;
 wire \u_reg_bank.wr_addr[3]_sky130_fd_sc_hd__or4_2_A_X_sky130_fd_sc_hd__or3b_2_B_X_sky130_fd_sc_hd__or2_2_A_X ;
 wire \u_reg_bank.wr_addr[3]_sky130_fd_sc_hd__or4_2_A_X_sky130_fd_sc_hd__or3b_2_B_X_sky130_fd_sc_hd__or3b_2_A_X ;
 wire \u_reg_bank.wr_addr[4] ;
 wire \u_reg_bank.wr_addr[4]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_reg_bank.wr_addr[5] ;
 wire \u_reg_bank.wr_addr[5]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_reg_bank.wr_addr[5]_sky130_fd_sc_hd__or4b_2_A_X ;
 wire \u_reg_bank.wr_addr[5]_sky130_fd_sc_hd__or4b_2_A_X_sky130_fd_sc_hd__nor3_2_C_Y ;
 wire \u_reg_bank.wr_addr[6] ;
 wire \u_reg_bank.wr_addr[6]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_reg_bank.wr_data[0] ;
 wire \u_reg_bank.wr_data[0]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_reg_bank.wr_data[1] ;
 wire \u_reg_bank.wr_data[1]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_reg_bank.wr_data[2] ;
 wire \u_reg_bank.wr_data[2]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_reg_bank.wr_data[3] ;
 wire \u_reg_bank.wr_data[3]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_reg_bank.wr_data[4] ;
 wire \u_reg_bank.wr_data[4]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_reg_bank.wr_data[5] ;
 wire \u_reg_bank.wr_data[5]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_reg_bank.wr_data[6] ;
 wire \u_reg_bank.wr_data[6]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_reg_bank.wr_data[7] ;
 wire \u_reg_bank.wr_data[7]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_reg_bank.wr_en ;
 wire \u_reg_bank.wr_en_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_spi_slave.bit_count[0] ;
 wire \u_spi_slave.bit_count[0]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_spi_slave.bit_count[1] ;
 wire \u_spi_slave.bit_count[1]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_spi_slave.bit_count[1]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a32o_2_X_A2 ;
 wire \u_spi_slave.bit_count[2] ;
 wire \u_spi_slave.bit_count[2]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_spi_slave.bit_count[2]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o21a_2_X_A2 ;
 wire \u_spi_slave.bit_count[2]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o21a_2_X_B1 ;
 wire \u_spi_slave.bit_count[3] ;
 wire \u_spi_slave.bit_count[3]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_spi_slave.bit_count[4] ;
 wire \u_spi_slave.bit_count[4]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_spi_slave.cs_sync[0] ;
 wire \u_spi_slave.cs_sync[1] ;
 wire \u_spi_slave.cs_sync[2] ;
 wire \u_spi_slave.mosi_sync[0] ;
 wire \u_spi_slave.mosi_sync[1] ;
 wire \u_spi_slave.rw ;
 wire \u_spi_slave.rw_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_spi_slave.rw_sky130_fd_sc_hd__or3b_2_A_B ;
 wire \u_spi_slave.rw_sky130_fd_sc_hd__or3b_2_A_B_sky130_fd_sc_hd__nand2_2_Y_B ;
 wire \u_spi_slave.rw_sky130_fd_sc_hd__or3b_2_A_B_sky130_fd_sc_hd__or2_2_B_X ;
 wire \u_spi_slave.rw_sky130_fd_sc_hd__or3b_2_A_X ;
 wire \u_spi_slave.rx_shift[0] ;
 wire \u_spi_slave.rx_shift[0]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_spi_slave.rx_shift[1] ;
 wire \u_spi_slave.rx_shift[1]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_spi_slave.rx_shift[2] ;
 wire \u_spi_slave.rx_shift[2]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_spi_slave.rx_shift[3] ;
 wire \u_spi_slave.rx_shift[3]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_spi_slave.rx_shift[4] ;
 wire \u_spi_slave.rx_shift[4]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_spi_slave.rx_shift[5] ;
 wire \u_spi_slave.rx_shift[5]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_spi_slave.rx_shift[6] ;
 wire \u_spi_slave.rx_shift[6]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_spi_slave.sck_sync[0] ;
 wire \u_spi_slave.sck_sync[1] ;
 wire \u_spi_slave.sck_sync[2] ;
 wire \u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_A_X ;
 wire \u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_A_X_sky130_fd_sc_hd__and2_2_B_X ;
 wire \u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_A_X_sky130_fd_sc_hd__nor2_2_B_Y ;
 wire \u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_C_N_B ;
 wire \u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_C_N_B_sky130_fd_sc_hd__nor3_2_C_Y ;
 wire \u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_C_N_B_sky130_fd_sc_hd__or3_2_C_B ;
 wire \u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_C_N_B_sky130_fd_sc_hd__or3_2_C_X ;
 wire \u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_C_N_X ;
 wire \u_spi_slave.tx_shift[0] ;
 wire \u_spi_slave.tx_shift[0]_sky130_fd_sc_hd__a2bb2o_2_B2_A1_N ;
 wire \u_spi_slave.tx_shift[0]_sky130_fd_sc_hd__a2bb2o_2_B2_A1_N_sky130_fd_sc_hd__nor2_2_Y_B ;
 wire \u_spi_slave.tx_shift[0]_sky130_fd_sc_hd__a2bb2o_2_B2_A2_N ;
 wire \u_spi_slave.tx_shift[0]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_spi_slave.tx_shift[0]_sky130_fd_sc_hd__o22a_2_A1_B2 ;
 wire \u_spi_slave.tx_shift[0]_sky130_fd_sc_hd__o22a_2_A1_B2_sky130_fd_sc_hd__a221o_2_X_C1 ;
 wire \u_spi_slave.tx_shift[0]_sky130_fd_sc_hd__o22a_2_A1_X ;
 wire \u_spi_slave.tx_shift[1] ;
 wire \u_spi_slave.tx_shift[1]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_spi_slave.tx_shift[1]_sky130_fd_sc_hd__mux2_1_A0_S ;
 wire \u_spi_slave.tx_shift[1]_sky130_fd_sc_hd__o21a_2_A1_X ;
 wire \u_spi_slave.tx_shift[2] ;
 wire \u_spi_slave.tx_shift[2]_sky130_fd_sc_hd__a22o_2_A1_A2 ;
 wire \u_spi_slave.tx_shift[2]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_spi_slave.tx_shift[3] ;
 wire \u_spi_slave.tx_shift[3]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_spi_slave.tx_shift[3]_sky130_fd_sc_hd__o221a_2_A1_B1 ;
 wire \u_spi_slave.tx_shift[3]_sky130_fd_sc_hd__o221a_2_A1_C1 ;
 wire \u_spi_slave.tx_shift[3]_sky130_fd_sc_hd__o221a_2_A1_C1_sky130_fd_sc_hd__a211o_2_X_B1 ;
 wire \u_spi_slave.tx_shift[3]_sky130_fd_sc_hd__o221a_2_A1_C1_sky130_fd_sc_hd__a211o_2_X_C1 ;
 wire \u_spi_slave.tx_shift[4] ;
 wire \u_spi_slave.tx_shift[4]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_spi_slave.tx_shift[4]_sky130_fd_sc_hd__o221a_2_A1_C1 ;
 wire \u_spi_slave.tx_shift[4]_sky130_fd_sc_hd__o221a_2_A1_C1_sky130_fd_sc_hd__or3_2_X_B ;
 wire \u_spi_slave.tx_shift[4]_sky130_fd_sc_hd__o221a_2_A1_C1_sky130_fd_sc_hd__or3_2_X_C ;
 wire \u_spi_slave.tx_shift[5] ;
 wire \u_spi_slave.tx_shift[5]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_spi_slave.tx_shift[5]_sky130_fd_sc_hd__o221a_2_A1_C1 ;
 wire \u_spi_slave.tx_shift[5]_sky130_fd_sc_hd__o221a_2_A1_C1_sky130_fd_sc_hd__a211o_2_X_C1 ;
 wire \u_spi_slave.tx_shift[6] ;
 wire \u_spi_slave.tx_shift[6]_sky130_fd_sc_hd__a21o_2_A1_X ;
 wire \u_spi_slave.tx_shift[6]_sky130_fd_sc_hd__dfrtp_2_Q_D ;
 wire \u_spi_slave.tx_shift[6]_sky130_fd_sc_hd__o221a_2_A1_C1 ;
 wire \u_spi_slave.tx_shift[6]_sky130_fd_sc_hd__o221a_2_A1_C1_sky130_fd_sc_hd__a211o_2_X_C1 ;
 wire net31;
 wire clknet_0_clk;
 wire clknet_4_0_0_clk;
 wire clknet_4_1_0_clk;
 wire clknet_4_2_0_clk;
 wire clknet_4_3_0_clk;
 wire clknet_4_4_0_clk;
 wire clknet_4_5_0_clk;
 wire clknet_4_6_0_clk;
 wire clknet_4_7_0_clk;
 wire clknet_4_8_0_clk;
 wire clknet_4_9_0_clk;
 wire clknet_4_10_0_clk;
 wire clknet_4_11_0_clk;
 wire clknet_4_12_0_clk;
 wire clknet_4_13_0_clk;
 wire clknet_4_14_0_clk;
 wire clknet_4_15_0_clk;
 wire clknet_0_pwm0_clk;
 wire clknet_1_0__leaf_pwm0_clk;
 wire clknet_1_1__leaf_pwm0_clk;
 wire clknet_0_pwm1_clk;
 wire clknet_1_0__leaf_pwm1_clk;
 wire clknet_1_1__leaf_pwm1_clk;
 wire net32;
 wire net33;
 wire net34;
 wire net35;
 wire net36;
 wire net37;
 wire net38;
 wire net39;
 wire net40;
 wire net41;
 wire net42;
 wire net43;
 wire net44;
 wire net45;
 wire net46;
 wire net47;
 wire net48;
 wire net49;
 wire net50;
 wire net51;
 wire net52;
 wire net53;
 wire net54;
 wire net55;
 wire net56;
 wire net57;
 wire net58;
 wire net59;
 wire net60;
 wire net61;
 wire net62;
 wire net63;
 wire net64;
 wire net65;
 wire net66;
 wire net67;
 wire net68;
 wire net69;
 wire net70;
 wire net71;
 wire net72;
 wire net73;
 wire net74;
 wire net75;
 wire net76;
 wire net77;
 wire net78;
 wire net79;
 wire net80;
 wire net81;
 wire net82;
 wire net83;
 wire net84;
 wire net85;
 wire net86;
 wire net87;
 wire net88;
 wire net89;
 wire net90;
 wire net91;
 wire net92;
 wire net93;
 wire net94;
 wire net95;
 wire net96;
 wire net97;
 wire net98;
 wire net99;
 wire net100;
 wire net101;
 wire net102;
 wire net103;
 wire net104;
 wire net105;
 wire net106;
 wire net107;
 wire net108;

 sky130_fd_sc_hd__diode_2 ANTENNA_1 (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 ANTENNA_10 (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 ANTENNA_11 (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 ANTENNA_12 (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 ANTENNA_13 (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 ANTENNA_14 (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 ANTENNA_15 (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 ANTENNA_16 (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 ANTENNA_17 (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 ANTENNA_18 (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 ANTENNA_19 (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 ANTENNA_2 (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 ANTENNA_20 (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 ANTENNA_3 (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 ANTENNA_4 (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 ANTENNA_5 (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 ANTENNA_6 (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 ANTENNA_7 (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 ANTENNA_8 (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 ANTENNA_9 (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 ANTENNA_bg_burst_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_S (.DIODE(\u_reg_bank.wr_addr[5]_sky130_fd_sc_hd__or4b_2_A_X_sky130_fd_sc_hd__nor3_2_C_Y ));
 sky130_fd_sc_hd__diode_2 ANTENNA_bg_burst_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_bg_div_sel[0]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_A1  (.DIODE(\u_reg_bank.wr_data[0] ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_bg_div_sel[0]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_S  (.DIODE(\u_reg_bank.wr_addr[5]_sky130_fd_sc_hd__or4b_2_A_X_sky130_fd_sc_hd__nor3_2_C_Y ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_bg_div_sel[0]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net3));
 sky130_fd_sc_hd__diode_2 \ANTENNA_bg_div_sel[1]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_S  (.DIODE(\u_reg_bank.wr_addr[5]_sky130_fd_sc_hd__or4b_2_A_X_sky130_fd_sc_hd__nor3_2_C_Y ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_bg_div_sel[1]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net3));
 sky130_fd_sc_hd__diode_2 \ANTENNA_bg_div_sel[2]_sky130_fd_sc_hd__dfstp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_S  (.DIODE(\u_reg_bank.wr_addr[5]_sky130_fd_sc_hd__or4b_2_A_X_sky130_fd_sc_hd__nor3_2_C_Y ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_bg_div_sel[2]_sky130_fd_sc_hd__dfstp_2_Q_SET_B  (.DIODE(net3));
 sky130_fd_sc_hd__diode_2 ANTENNA_bg_en_sky130_fd_sc_hd__dfstp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_S (.DIODE(dbl_en_sky130_fd_sc_hd__mux2_1_A1_S_sky130_fd_sc_hd__or3_2_X_B_sky130_fd_sc_hd__nor2_2_B_Y));
 sky130_fd_sc_hd__diode_2 ANTENNA_bg_en_sky130_fd_sc_hd__dfstp_2_Q_SET_B (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_bg_hold_exp[0]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_S  (.DIODE(\u_reg_bank.wr_addr[5]_sky130_fd_sc_hd__or4b_2_A_X_sky130_fd_sc_hd__nor3_2_C_Y ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_bg_hold_exp[0]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_bg_hold_exp[1]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_A1  (.DIODE(\u_reg_bank.wr_data[5] ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_bg_hold_exp[1]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_S  (.DIODE(\u_reg_bank.wr_addr[5]_sky130_fd_sc_hd__or4b_2_A_X_sky130_fd_sc_hd__nor3_2_C_Y ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_bg_hold_exp[1]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_bg_hold_exp[2]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_S  (.DIODE(\u_reg_bank.wr_addr[5]_sky130_fd_sc_hd__or4b_2_A_X_sky130_fd_sc_hd__nor3_2_C_Y ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_bg_hold_exp[2]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_bg_hold_exp[3]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_S  (.DIODE(\u_reg_bank.wr_addr[5]_sky130_fd_sc_hd__or4b_2_A_X_sky130_fd_sc_hd__nor3_2_C_Y ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_bg_hold_exp[3]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 ANTENNA_bg_ok_combined_sky130_fd_sc_hd__a22o_2_B2_X_sky130_fd_sc_hd__a221o_2_C1_A1 (.DIODE(\pwm0_duty[0] ));
 sky130_fd_sc_hd__diode_2 ANTENNA_bg_ok_combined_sky130_fd_sc_hd__a22o_2_B2_X_sky130_fd_sc_hd__a221o_2_C1_A2 (.DIODE(bias_en_sky130_fd_sc_hd__a22o_2_B2_A2));
 sky130_fd_sc_hd__diode_2 ANTENNA_bg_ok_combined_sky130_fd_sc_hd__and2_2_X_A (.DIODE(net13));
 sky130_fd_sc_hd__diode_2 ANTENNA_bg_trim_sky130_fd_sc_hd__dfrtp_2_Q_1_D_sky130_fd_sc_hd__mux2_1_X_S (.DIODE(dbl_en_sky130_fd_sc_hd__mux2_1_A1_S_sky130_fd_sc_hd__or3_2_X_B_sky130_fd_sc_hd__nor2_2_B_Y));
 sky130_fd_sc_hd__diode_2 ANTENNA_bg_trim_sky130_fd_sc_hd__dfrtp_2_Q_1_RESET_B (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 ANTENNA_bg_trim_sky130_fd_sc_hd__dfrtp_2_Q_2_D_sky130_fd_sc_hd__mux2_1_X_A1 (.DIODE(\u_reg_bank.wr_data[0] ));
 sky130_fd_sc_hd__diode_2 ANTENNA_bg_trim_sky130_fd_sc_hd__dfrtp_2_Q_2_D_sky130_fd_sc_hd__mux2_1_X_S (.DIODE(dbl_en_sky130_fd_sc_hd__mux2_1_A1_S_sky130_fd_sc_hd__or3_2_X_B_sky130_fd_sc_hd__nor2_2_B_Y));
 sky130_fd_sc_hd__diode_2 ANTENNA_bg_trim_sky130_fd_sc_hd__dfrtp_2_Q_2_RESET_B (.DIODE(net3));
 sky130_fd_sc_hd__diode_2 ANTENNA_bg_trim_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_S (.DIODE(dbl_en_sky130_fd_sc_hd__mux2_1_A1_S_sky130_fd_sc_hd__or3_2_X_B_sky130_fd_sc_hd__nor2_2_B_Y));
 sky130_fd_sc_hd__diode_2 ANTENNA_bg_trim_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B (.DIODE(net3));
 sky130_fd_sc_hd__diode_2 ANTENNA_bg_trim_sky130_fd_sc_hd__dfstp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_S (.DIODE(dbl_en_sky130_fd_sc_hd__mux2_1_A1_S_sky130_fd_sc_hd__or3_2_X_B_sky130_fd_sc_hd__nor2_2_B_Y));
 sky130_fd_sc_hd__diode_2 ANTENNA_bg_trim_sky130_fd_sc_hd__dfstp_2_Q_SET_B (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 ANTENNA_bg_valid_sky130_fd_sc_hd__a221o_2_A1_A1 (.DIODE(net13));
 sky130_fd_sc_hd__diode_2 ANTENNA_bg_valid_sky130_fd_sc_hd__a221o_2_A1_B2 (.DIODE(pwm0_width));
 sky130_fd_sc_hd__diode_2 ANTENNA_bg_valid_sky130_fd_sc_hd__a221o_2_A1_C1_sky130_fd_sc_hd__a22o_2_X_A1 (.DIODE(\pwm0_duty[1] ));
 sky130_fd_sc_hd__diode_2 ANTENNA_bg_valid_sky130_fd_sc_hd__a221o_2_A1_C1_sky130_fd_sc_hd__a22o_2_X_A2 (.DIODE(bias_en_sky130_fd_sc_hd__a22o_2_B2_A2));
 sky130_fd_sc_hd__diode_2 ANTENNA_bg_valid_sky130_fd_sc_hd__dfrtp_2_Q_Q (.DIODE(net13));
 sky130_fd_sc_hd__diode_2 ANTENNA_bg_valid_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B (.DIODE(net3));
 sky130_fd_sc_hd__diode_2 ANTENNA_bias_en_sky130_fd_sc_hd__a22o_2_B2_A2 (.DIODE(bias_en_sky130_fd_sc_hd__a22o_2_B2_A2));
 sky130_fd_sc_hd__diode_2 ANTENNA_bias_en_sky130_fd_sc_hd__a22o_2_B2_X_sky130_fd_sc_hd__o31a_2_A3_A1_sky130_fd_sc_hd__a22o_2_X_A2 (.DIODE(\rd_addr[5]_sky130_fd_sc_hd__or3_2_A_X_sky130_fd_sc_hd__nor2_2_A_Y ));
 sky130_fd_sc_hd__diode_2 ANTENNA_bias_en_sky130_fd_sc_hd__a22o_2_B2_X_sky130_fd_sc_hd__o31a_2_A3_A2_sky130_fd_sc_hd__and2_2_X_B (.DIODE(pwm1_clk_sel_sky130_fd_sc_hd__a211o_2_A1_B1_sky130_fd_sc_hd__a22o_2_X_B1));
 sky130_fd_sc_hd__diode_2 ANTENNA_bias_en_sky130_fd_sc_hd__dfstp_2_Q_SET_B (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 ANTENNA_bias_en_sky130_fd_sc_hd__mux2_1_A1_S (.DIODE(\u_reg_bank.wr_addr[3]_sky130_fd_sc_hd__or4_2_A_X_sky130_fd_sc_hd__or3b_2_B_X_sky130_fd_sc_hd__or3b_2_A_X ));
 sky130_fd_sc_hd__diode_2 ANTENNA_bias_ok_meta_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B (.DIODE(net3));
 sky130_fd_sc_hd__diode_2 ANTENNA_bias_ok_sync_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B (.DIODE(net3));
 sky130_fd_sc_hd__diode_2 ANTENNA_bias_trim_sky130_fd_sc_hd__dfrtp_2_Q_1_D_sky130_fd_sc_hd__mux2_1_X_S (.DIODE(\u_reg_bank.wr_addr[3]_sky130_fd_sc_hd__or4_2_A_X_sky130_fd_sc_hd__or3b_2_B_X_sky130_fd_sc_hd__or3b_2_A_X ));
 sky130_fd_sc_hd__diode_2 ANTENNA_bias_trim_sky130_fd_sc_hd__dfrtp_2_Q_1_RESET_B (.DIODE(net3));
 sky130_fd_sc_hd__diode_2 ANTENNA_bias_trim_sky130_fd_sc_hd__dfrtp_2_Q_2_D_sky130_fd_sc_hd__mux2_1_X_S (.DIODE(\u_reg_bank.wr_addr[3]_sky130_fd_sc_hd__or4_2_A_X_sky130_fd_sc_hd__or3b_2_B_X_sky130_fd_sc_hd__or3b_2_A_X ));
 sky130_fd_sc_hd__diode_2 ANTENNA_bias_trim_sky130_fd_sc_hd__dfrtp_2_Q_2_RESET_B (.DIODE(net3));
 sky130_fd_sc_hd__diode_2 ANTENNA_bias_trim_sky130_fd_sc_hd__dfrtp_2_Q_3_D_sky130_fd_sc_hd__mux2_1_X_A0 (.DIODE(\u_reg_bank.wr_data[0] ));
 sky130_fd_sc_hd__diode_2 ANTENNA_bias_trim_sky130_fd_sc_hd__dfrtp_2_Q_3_D_sky130_fd_sc_hd__mux2_1_X_S (.DIODE(\u_reg_bank.wr_addr[3]_sky130_fd_sc_hd__or4_2_A_X_sky130_fd_sc_hd__or3b_2_B_X_sky130_fd_sc_hd__or3b_2_A_X ));
 sky130_fd_sc_hd__diode_2 ANTENNA_bias_trim_sky130_fd_sc_hd__dfrtp_2_Q_3_RESET_B (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 ANTENNA_bias_trim_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_S (.DIODE(\u_reg_bank.wr_addr[3]_sky130_fd_sc_hd__or4_2_A_X_sky130_fd_sc_hd__or3b_2_B_X_sky130_fd_sc_hd__or3b_2_A_X ));
 sky130_fd_sc_hd__diode_2 ANTENNA_bias_trim_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 ANTENNA_bias_trim_sky130_fd_sc_hd__dfstp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_S (.DIODE(\u_reg_bank.wr_addr[3]_sky130_fd_sc_hd__or4_2_A_X_sky130_fd_sc_hd__or3b_2_B_X_sky130_fd_sc_hd__or3b_2_A_X ));
 sky130_fd_sc_hd__diode_2 ANTENNA_bias_trim_sky130_fd_sc_hd__dfstp_2_Q_SET_B (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 ANTENNA_cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_A_sky130_fd_sc_hd__and4bb_2_C_X_sky130_fd_sc_hd__nor2_2_A_Y (.DIODE(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_A_sky130_fd_sc_hd__and4bb_2_C_X_sky130_fd_sc_hd__nor2_2_A_Y));
 sky130_fd_sc_hd__diode_2 ANTENNA_cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_C_sky130_fd_sc_hd__and3_2_X_A (.DIODE(net2));
 sky130_fd_sc_hd__diode_2 ANTENNA_cap_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B (.DIODE(net3));
 sky130_fd_sc_hd__diode_2 ANTENNA_clkbuf_0_clk_A (.DIODE(clk));
 sky130_fd_sc_hd__diode_2 ANTENNA_clkbuf_0_clk_X (.DIODE(clknet_0_clk));
 sky130_fd_sc_hd__diode_2 ANTENNA_clkbuf_0_pwm0_clk_A (.DIODE(pwm0_clk));
 sky130_fd_sc_hd__diode_2 ANTENNA_clkbuf_0_pwm1_clk_A (.DIODE(pwm1_clk));
 sky130_fd_sc_hd__diode_2 ANTENNA_clkbuf_4_0_0_clk_A (.DIODE(clknet_0_clk));
 sky130_fd_sc_hd__diode_2 ANTENNA_clkbuf_4_10_0_clk_A (.DIODE(clknet_0_clk));
 sky130_fd_sc_hd__diode_2 ANTENNA_clkbuf_4_11_0_clk_A (.DIODE(clknet_0_clk));
 sky130_fd_sc_hd__diode_2 ANTENNA_clkbuf_4_12_0_clk_A (.DIODE(clknet_0_clk));
 sky130_fd_sc_hd__diode_2 ANTENNA_clkbuf_4_13_0_clk_A (.DIODE(clknet_0_clk));
 sky130_fd_sc_hd__diode_2 ANTENNA_clkbuf_4_14_0_clk_A (.DIODE(clknet_0_clk));
 sky130_fd_sc_hd__diode_2 ANTENNA_clkbuf_4_15_0_clk_A (.DIODE(clknet_0_clk));
 sky130_fd_sc_hd__diode_2 ANTENNA_clkbuf_4_1_0_clk_A (.DIODE(clknet_0_clk));
 sky130_fd_sc_hd__diode_2 ANTENNA_clkbuf_4_2_0_clk_A (.DIODE(clknet_0_clk));
 sky130_fd_sc_hd__diode_2 ANTENNA_clkbuf_4_3_0_clk_A (.DIODE(clknet_0_clk));
 sky130_fd_sc_hd__diode_2 ANTENNA_clkbuf_4_4_0_clk_A (.DIODE(clknet_0_clk));
 sky130_fd_sc_hd__diode_2 ANTENNA_clkbuf_4_5_0_clk_A (.DIODE(clknet_0_clk));
 sky130_fd_sc_hd__diode_2 ANTENNA_clkbuf_4_6_0_clk_A (.DIODE(clknet_0_clk));
 sky130_fd_sc_hd__diode_2 ANTENNA_clkbuf_4_7_0_clk_A (.DIODE(clknet_0_clk));
 sky130_fd_sc_hd__diode_2 ANTENNA_clkbuf_4_8_0_clk_A (.DIODE(clknet_0_clk));
 sky130_fd_sc_hd__diode_2 ANTENNA_clkbuf_4_9_0_clk_A (.DIODE(clknet_0_clk));
 sky130_fd_sc_hd__diode_2 ANTENNA_dbl_en_sky130_fd_sc_hd__and4b_2_C_X_sky130_fd_sc_hd__a221o_2_C1_A2 (.DIODE(\rd_addr[5]_sky130_fd_sc_hd__or3_2_A_X_sky130_fd_sc_hd__nor2_2_A_Y ));
 sky130_fd_sc_hd__diode_2 ANTENNA_dbl_en_sky130_fd_sc_hd__and4b_2_C_X_sky130_fd_sc_hd__a221o_2_C1_X_sky130_fd_sc_hd__a221o_2_C1_A2 (.DIODE(pwm1_clk_sel_sky130_fd_sc_hd__a211o_2_A1_B1_sky130_fd_sc_hd__a22o_2_X_B1));
 sky130_fd_sc_hd__diode_2 ANTENNA_dbl_en_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B (.DIODE(net3));
 sky130_fd_sc_hd__diode_2 ANTENNA_dbl_en_sky130_fd_sc_hd__mux2_1_A1_A0 (.DIODE(\u_reg_bank.wr_data[0] ));
 sky130_fd_sc_hd__diode_2 ANTENNA_dbl_en_sky130_fd_sc_hd__mux2_1_A1_S_sky130_fd_sc_hd__or3_2_X_B_sky130_fd_sc_hd__nor2_2_B_Y (.DIODE(dbl_en_sky130_fd_sc_hd__mux2_1_A1_S_sky130_fd_sc_hd__or3_2_X_B_sky130_fd_sc_hd__nor2_2_B_Y));
 sky130_fd_sc_hd__diode_2 ANTENNA_ena_sky130_fd_sc_hd__and2_2_A_A (.DIODE(net2));
 sky130_fd_sc_hd__diode_2 ANTENNA_ena_sky130_fd_sc_hd__nand2_2_A_A (.DIODE(net2));
 sky130_fd_sc_hd__diode_2 ANTENNA_i8_en_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3_2_X_A (.DIODE(net2));
 sky130_fd_sc_hd__diode_2 ANTENNA_i8_en_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B (.DIODE(net3));
 sky130_fd_sc_hd__diode_2 ANTENNA_input1_A (.DIODE(bias_ok));
 sky130_fd_sc_hd__diode_2 ANTENNA_input2_A (.DIODE(ena));
 sky130_fd_sc_hd__diode_2 ANTENNA_input2_X (.DIODE(net2));
 sky130_fd_sc_hd__diode_2 ANTENNA_input3_A (.DIODE(rst_n));
 sky130_fd_sc_hd__diode_2 ANTENNA_input3_X (.DIODE(net3));
 sky130_fd_sc_hd__diode_2 ANTENNA_input4_A (.DIODE(spi_cs_n));
 sky130_fd_sc_hd__diode_2 ANTENNA_input5_A (.DIODE(spi_mosi));
 sky130_fd_sc_hd__diode_2 ANTENNA_input6_A (.DIODE(spi_sck));
 sky130_fd_sc_hd__diode_2 ANTENNA_max_cap31_A (.DIODE(net3));
 sky130_fd_sc_hd__diode_2 ANTENNA_max_cap31_X (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 ANTENNA_ota_en_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B (.DIODE(net3));
 sky130_fd_sc_hd__diode_2 ANTENNA_output13_A (.DIODE(net13));
 sky130_fd_sc_hd__diode_2 ANTENNA_phi1_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3_2_X_C (.DIODE(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_A_sky130_fd_sc_hd__and4bb_2_C_X_sky130_fd_sc_hd__nor2_2_A_Y));
 sky130_fd_sc_hd__diode_2 ANTENNA_phi1_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B (.DIODE(net3));
 sky130_fd_sc_hd__diode_2 ANTENNA_phi2_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3_2_X_C (.DIODE(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_A_sky130_fd_sc_hd__and4bb_2_C_X_sky130_fd_sc_hd__nor2_2_A_Y));
 sky130_fd_sc_hd__diode_2 ANTENNA_phi2_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B (.DIODE(net3));
 sky130_fd_sc_hd__diode_2 ANTENNA_pwm0_clk_sel_sky130_fd_sc_hd__a221o_2_B2_A1 (.DIODE(\pwm0_duty[2] ));
 sky130_fd_sc_hd__diode_2 ANTENNA_pwm0_clk_sel_sky130_fd_sc_hd__a221o_2_B2_A2 (.DIODE(bias_en_sky130_fd_sc_hd__a22o_2_B2_A2));
 sky130_fd_sc_hd__diode_2 ANTENNA_pwm0_clk_sel_sky130_fd_sc_hd__a221o_2_B2_C1_sky130_fd_sc_hd__a221o_2_X_A2 (.DIODE(\rd_addr[5]_sky130_fd_sc_hd__or3_2_A_X_sky130_fd_sc_hd__nor2_2_A_Y ));
 sky130_fd_sc_hd__diode_2 ANTENNA_pwm0_clk_sel_sky130_fd_sc_hd__a221o_2_B2_C1_sky130_fd_sc_hd__a221o_2_X_C1 (.DIODE(\u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_C_N_B_sky130_fd_sc_hd__or3_2_C_X ));
 sky130_fd_sc_hd__diode_2 ANTENNA_pwm0_clk_sel_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B (.DIODE(net3));
 sky130_fd_sc_hd__diode_2 \ANTENNA_pwm0_duty[0]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_A0  (.DIODE(\u_reg_bank.wr_data[0] ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_pwm0_duty[0]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_A1  (.DIODE(\pwm0_duty[0] ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_pwm0_duty[0]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_S  (.DIODE(\u_reg_bank.wr_addr[3]_sky130_fd_sc_hd__or4_2_A_X_sky130_fd_sc_hd__or3b_2_B_X_sky130_fd_sc_hd__or2_2_A_X ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_pwm0_duty[0]_sky130_fd_sc_hd__dfrtp_2_Q_Q  (.DIODE(\pwm0_duty[0] ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_pwm0_duty[0]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_pwm0_duty[1]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_A1  (.DIODE(\pwm0_duty[1] ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_pwm0_duty[1]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_S  (.DIODE(\u_reg_bank.wr_addr[3]_sky130_fd_sc_hd__or4_2_A_X_sky130_fd_sc_hd__or3b_2_B_X_sky130_fd_sc_hd__or2_2_A_X ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_pwm0_duty[1]_sky130_fd_sc_hd__dfrtp_2_Q_Q  (.DIODE(\pwm0_duty[1] ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_pwm0_duty[1]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_pwm0_duty[2]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_A1  (.DIODE(\pwm0_duty[2] ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_pwm0_duty[2]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_S  (.DIODE(\u_reg_bank.wr_addr[3]_sky130_fd_sc_hd__or4_2_A_X_sky130_fd_sc_hd__or3b_2_B_X_sky130_fd_sc_hd__or2_2_A_X ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_pwm0_duty[2]_sky130_fd_sc_hd__dfrtp_2_Q_Q  (.DIODE(\pwm0_duty[2] ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_pwm0_duty[2]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_pwm0_duty[3]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_S  (.DIODE(\u_reg_bank.wr_addr[3]_sky130_fd_sc_hd__or4_2_A_X_sky130_fd_sc_hd__or3b_2_B_X_sky130_fd_sc_hd__or2_2_A_X ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_pwm0_duty[3]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_pwm0_duty[4]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_S  (.DIODE(\u_reg_bank.wr_addr[3]_sky130_fd_sc_hd__or4_2_A_X_sky130_fd_sc_hd__or3b_2_B_X_sky130_fd_sc_hd__or2_2_A_X ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_pwm0_duty[4]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_pwm0_duty[5]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_A0  (.DIODE(\u_reg_bank.wr_data[5] ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_pwm0_duty[5]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_S  (.DIODE(\u_reg_bank.wr_addr[3]_sky130_fd_sc_hd__or4_2_A_X_sky130_fd_sc_hd__or3b_2_B_X_sky130_fd_sc_hd__or2_2_A_X ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_pwm0_duty[5]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_pwm0_duty[6]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_S  (.DIODE(\u_reg_bank.wr_addr[3]_sky130_fd_sc_hd__or4_2_A_X_sky130_fd_sc_hd__or3b_2_B_X_sky130_fd_sc_hd__or2_2_A_X ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_pwm0_duty[6]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_pwm0_duty[7]_sky130_fd_sc_hd__dfstp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_S  (.DIODE(\u_reg_bank.wr_addr[3]_sky130_fd_sc_hd__or4_2_A_X_sky130_fd_sc_hd__or3b_2_B_X_sky130_fd_sc_hd__or2_2_A_X ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_pwm0_duty[7]_sky130_fd_sc_hd__dfstp_2_Q_SET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 ANTENNA_pwm0_enable_sky130_fd_sc_hd__and2_2_B_A (.DIODE(net2));
 sky130_fd_sc_hd__diode_2 ANTENNA_pwm0_enable_sky130_fd_sc_hd__and2_2_B_X (.DIODE(pwm0_enable_sky130_fd_sc_hd__and2_2_B_X));
 sky130_fd_sc_hd__diode_2 ANTENNA_pwm0_enable_sky130_fd_sc_hd__dfstp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_A1 (.DIODE(\u_reg_bank.wr_data[0] ));
 sky130_fd_sc_hd__diode_2 ANTENNA_pwm0_enable_sky130_fd_sc_hd__dfstp_2_Q_SET_B (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 ANTENNA_pwm0_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_A1_sky130_fd_sc_hd__a41o_2_B1_A2 (.DIODE(\pwm0_duty[2] ));
 sky130_fd_sc_hd__diode_2 ANTENNA_pwm0_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_A1_sky130_fd_sc_hd__a41o_2_B1_A3_sky130_fd_sc_hd__a21bo_2_X_A1 (.DIODE(\pwm0_duty[1] ));
 sky130_fd_sc_hd__diode_2 ANTENNA_pwm0_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_A1_sky130_fd_sc_hd__a41o_2_B1_A3_sky130_fd_sc_hd__a21bo_2_X_A2 (.DIODE(\pwm0_duty[0] ));
 sky130_fd_sc_hd__diode_2 ANTENNA_pwm0_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_A1_sky130_fd_sc_hd__a41o_2_B1_A3_sky130_fd_sc_hd__a21bo_2_X_B1_N (.DIODE(pwm0_width));
 sky130_fd_sc_hd__diode_2 ANTENNA_pwm0_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X_B1_sky130_fd_sc_hd__o221a_2_X_C1_sky130_fd_sc_hd__a21o_2_X_A1_sky130_fd_sc_hd__a32o_2_X_A1 (.DIODE(pwm0_width));
 sky130_fd_sc_hd__diode_2 ANTENNA_pwm0_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X_B1_sky130_fd_sc_hd__o221a_2_X_C1_sky130_fd_sc_hd__a21o_2_X_A1_sky130_fd_sc_hd__a32o_2_X_B1 (.DIODE(\pwm0_duty[2] ));
 sky130_fd_sc_hd__diode_2 ANTENNA_pwm0_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_C1 (.DIODE(pwm0_enable_sky130_fd_sc_hd__and2_2_B_X));
 sky130_fd_sc_hd__diode_2 ANTENNA_pwm0_out_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B (.DIODE(\u_pwm0.rst_n ));
 sky130_fd_sc_hd__diode_2 ANTENNA_pwm0_width_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_A0 (.DIODE(pwm0_width));
 sky130_fd_sc_hd__diode_2 ANTENNA_pwm0_width_sky130_fd_sc_hd__dfrtp_2_Q_Q (.DIODE(pwm0_width));
 sky130_fd_sc_hd__diode_2 ANTENNA_pwm0_width_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 ANTENNA_pwm1_clk_sel_sky130_fd_sc_hd__a211o_2_A1_B1_sky130_fd_sc_hd__a22o_2_X_B1 (.DIODE(pwm1_clk_sel_sky130_fd_sc_hd__a211o_2_A1_B1_sky130_fd_sc_hd__a22o_2_X_B1));
 sky130_fd_sc_hd__diode_2 ANTENNA_pwm1_clk_sel_sky130_fd_sc_hd__a211o_2_A1_B1_sky130_fd_sc_hd__a22o_2_X_B2 (.DIODE(\pwm1_duty[2] ));
 sky130_fd_sc_hd__diode_2 ANTENNA_pwm1_clk_sel_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B (.DIODE(net3));
 sky130_fd_sc_hd__diode_2 ANTENNA_pwm1_clk_sel_sky130_fd_sc_hd__mux2_1_A0_S_sky130_fd_sc_hd__nor3_2_Y_C_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__and4b_2_C_X (.DIODE(pwm1_clk_sel_sky130_fd_sc_hd__mux2_1_A0_S_sky130_fd_sc_hd__nor3_2_Y_C_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__and4b_2_C_X));
 sky130_fd_sc_hd__diode_2 \ANTENNA_pwm1_duty[0]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_A1  (.DIODE(\u_reg_bank.wr_data[0] ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_pwm1_duty[0]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_S  (.DIODE(pwm1_clk_sel_sky130_fd_sc_hd__mux2_1_A0_S_sky130_fd_sc_hd__nor3_2_Y_C_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__and4b_2_C_X));
 sky130_fd_sc_hd__diode_2 \ANTENNA_pwm1_duty[0]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_pwm1_duty[1]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_S  (.DIODE(pwm1_clk_sel_sky130_fd_sc_hd__mux2_1_A0_S_sky130_fd_sc_hd__nor3_2_Y_C_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__and4b_2_C_X));
 sky130_fd_sc_hd__diode_2 \ANTENNA_pwm1_duty[1]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_pwm1_duty[2]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_A0  (.DIODE(\pwm1_duty[2] ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_pwm1_duty[2]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_S  (.DIODE(pwm1_clk_sel_sky130_fd_sc_hd__mux2_1_A0_S_sky130_fd_sc_hd__nor3_2_Y_C_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__and4b_2_C_X));
 sky130_fd_sc_hd__diode_2 \ANTENNA_pwm1_duty[2]_sky130_fd_sc_hd__dfrtp_2_Q_Q  (.DIODE(\pwm1_duty[2] ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_pwm1_duty[2]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_pwm1_duty[3]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_S  (.DIODE(pwm1_clk_sel_sky130_fd_sc_hd__mux2_1_A0_S_sky130_fd_sc_hd__nor3_2_Y_C_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__and4b_2_C_X));
 sky130_fd_sc_hd__diode_2 \ANTENNA_pwm1_duty[3]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_pwm1_duty[4]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_S  (.DIODE(pwm1_clk_sel_sky130_fd_sc_hd__mux2_1_A0_S_sky130_fd_sc_hd__nor3_2_Y_C_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__and4b_2_C_X));
 sky130_fd_sc_hd__diode_2 \ANTENNA_pwm1_duty[4]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_pwm1_duty[5]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_A1  (.DIODE(\u_reg_bank.wr_data[5] ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_pwm1_duty[5]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_S  (.DIODE(pwm1_clk_sel_sky130_fd_sc_hd__mux2_1_A0_S_sky130_fd_sc_hd__nor3_2_Y_C_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__and4b_2_C_X));
 sky130_fd_sc_hd__diode_2 \ANTENNA_pwm1_duty[5]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_pwm1_duty[6]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_S  (.DIODE(pwm1_clk_sel_sky130_fd_sc_hd__mux2_1_A0_S_sky130_fd_sc_hd__nor3_2_Y_C_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__and4b_2_C_X));
 sky130_fd_sc_hd__diode_2 \ANTENNA_pwm1_duty[6]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_pwm1_duty[7]_sky130_fd_sc_hd__dfstp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_S  (.DIODE(pwm1_clk_sel_sky130_fd_sc_hd__mux2_1_A0_S_sky130_fd_sc_hd__nor3_2_Y_C_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__and4b_2_C_X));
 sky130_fd_sc_hd__diode_2 \ANTENNA_pwm1_duty[7]_sky130_fd_sc_hd__dfstp_2_Q_SET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 ANTENNA_pwm1_enable_sky130_fd_sc_hd__and2_2_B_A (.DIODE(net2));
 sky130_fd_sc_hd__diode_2 ANTENNA_pwm1_enable_sky130_fd_sc_hd__dfstp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_A1 (.DIODE(\u_reg_bank.wr_data[0] ));
 sky130_fd_sc_hd__diode_2 ANTENNA_pwm1_enable_sky130_fd_sc_hd__dfstp_2_Q_SET_B (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 ANTENNA_pwm1_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_A1_sky130_fd_sc_hd__a41o_2_B1_A4_sky130_fd_sc_hd__and3_2_X_C (.DIODE(\pwm1_duty[2] ));
 sky130_fd_sc_hd__diode_2 ANTENNA_pwm1_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X_B1_sky130_fd_sc_hd__o221a_2_X_C1_sky130_fd_sc_hd__a221o_2_X_B2_sky130_fd_sc_hd__a22o_2_X_A1 (.DIODE(\pwm1_duty[2] ));
 sky130_fd_sc_hd__diode_2 ANTENNA_pwm1_out_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B (.DIODE(\u_pwm0.rst_n ));
 sky130_fd_sc_hd__diode_2 ANTENNA_pwm1_width_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_rd_addr[0]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_rd_addr[1]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_rd_addr[2]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_rd_addr[3]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_rd_addr[4]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_rd_addr[5]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_rd_addr[5]_sky130_fd_sc_hd__or3_2_A_X_sky130_fd_sc_hd__nor2_2_A_Y  (.DIODE(\rd_addr[5]_sky130_fd_sc_hd__or3_2_A_X_sky130_fd_sc_hd__nor2_2_A_Y ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_rd_addr[5]_sky130_fd_sc_hd__or3_2_A_X_sky130_fd_sc_hd__nor3_2_C_Y_sky130_fd_sc_hd__and3_2_C_X  (.DIODE(bias_en_sky130_fd_sc_hd__a22o_2_B2_A2));
 sky130_fd_sc_hd__diode_2 \ANTENNA_rd_addr[5]_sky130_fd_sc_hd__or3_2_A_X_sky130_fd_sc_hd__nor3b_2_B_Y_sky130_fd_sc_hd__and3b_2_B_X  (.DIODE(pwm1_clk_sel_sky130_fd_sc_hd__a211o_2_A1_B1_sky130_fd_sc_hd__a22o_2_X_B1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_rd_addr[6]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 ANTENNA_spi_miso_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_bg_seq.cnt[0]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net3));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_bg_seq.cnt[10]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3_2_X_A  (.DIODE(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_A_sky130_fd_sc_hd__and4bb_2_C_X_sky130_fd_sc_hd__nor2_2_A_Y));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_bg_seq.cnt[10]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_bg_seq.cnt[11]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_bg_seq.cnt[1]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net3));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_bg_seq.cnt[2]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net3));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_bg_seq.cnt[3]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net3));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_bg_seq.cnt[4]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net3));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_bg_seq.cnt[5]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X_C  (.DIODE(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_A_sky130_fd_sc_hd__and4bb_2_C_X_sky130_fd_sc_hd__nor2_2_A_Y));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_bg_seq.cnt[5]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net3));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_bg_seq.cnt[6]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X_C  (.DIODE(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_A_sky130_fd_sc_hd__and4bb_2_C_X_sky130_fd_sc_hd__nor2_2_A_Y));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_bg_seq.cnt[6]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net3));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_bg_seq.cnt[7]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a21boi_2_Y_B1_N_sky130_fd_sc_hd__o21a_2_X_B1  (.DIODE(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_A_sky130_fd_sc_hd__and4bb_2_C_X_sky130_fd_sc_hd__nor2_2_A_Y));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_bg_seq.cnt[7]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net3));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_bg_seq.cnt[8]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X_C  (.DIODE(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_A_sky130_fd_sc_hd__and4bb_2_C_X_sky130_fd_sc_hd__nor2_2_A_Y));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_bg_seq.cnt[8]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net3));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_bg_seq.cnt[9]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X_B  (.DIODE(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_A_sky130_fd_sc_hd__and4bb_2_C_X_sky130_fd_sc_hd__nor2_2_A_Y));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_bg_seq.cnt[9]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_bg_seq.hcnt[0]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_bg_seq.hcnt[10]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_bg_seq.hcnt[11]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_bg_seq.hcnt[12]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_bg_seq.hcnt[13]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_bg_seq.hcnt[14]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_bg_seq.hcnt[15]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_bg_seq.hcnt[1]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_bg_seq.hcnt[2]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_bg_seq.hcnt[3]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_bg_seq.hcnt[4]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_bg_seq.hcnt[5]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_bg_seq.hcnt[6]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_bg_seq.hcnt[7]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_bg_seq.hcnt[8]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_bg_seq.hcnt[9]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_bg_seq.state[0]_sky130_fd_sc_hd__dfstp_2_Q_D_sky130_fd_sc_hd__a21o_2_X_B1_sky130_fd_sc_hd__a211o_2_X_A2  (.DIODE(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_A_sky130_fd_sc_hd__and4bb_2_C_X_sky130_fd_sc_hd__nor2_2_A_Y));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_bg_seq.state[0]_sky130_fd_sc_hd__dfstp_2_Q_SET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_bg_seq.state[1]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a31o_2_X_B1_sky130_fd_sc_hd__a22o_2_X_A2  (.DIODE(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_A_sky130_fd_sc_hd__and4bb_2_C_X_sky130_fd_sc_hd__nor2_2_A_Y));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_bg_seq.state[1]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_bg_seq.state[2]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a22o_2_X_B1  (.DIODE(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_A_sky130_fd_sc_hd__and4bb_2_C_X_sky130_fd_sc_hd__nor2_2_A_Y));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_bg_seq.state[2]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net3));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_bg_seq.updates[0]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net3));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_bg_seq.updates[1]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net3));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_bg_seq.updates[2]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net3));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_pwm0.phase[0]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3_2_X_A  (.DIODE(pwm0_width));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_pwm0.phase[0]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3_2_X_C  (.DIODE(pwm0_enable_sky130_fd_sc_hd__and2_2_B_X));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_pwm0.phase[0]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(\u_pwm0.rst_n ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_pwm0.phase[1]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(\u_pwm0.rst_n ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_pwm0.phase[1]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__a22o_2_A2_A1  (.DIODE(\pwm0_duty[1] ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_pwm0.phase[1]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__a22o_2_A2_B1  (.DIODE(\pwm0_duty[0] ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_pwm0.phase[1]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_A1_B1  (.DIODE(pwm0_width));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_pwm0.phase[1]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__or2_2_B_A  (.DIODE(\pwm0_duty[1] ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_pwm0.phase[1]_sky130_fd_sc_hd__o211a_2_A1_B1  (.DIODE(pwm0_enable_sky130_fd_sc_hd__and2_2_B_X));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_pwm0.phase[2]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a21oi_2_Y_B1_sky130_fd_sc_hd__o21ai_2_Y_B1  (.DIODE(pwm0_enable_sky130_fd_sc_hd__and2_2_B_X));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_pwm0.phase[2]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(\u_pwm0.rst_n ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_pwm0.phase[3]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X_B  (.DIODE(pwm0_enable_sky130_fd_sc_hd__and2_2_B_X));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_pwm0.phase[3]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(\u_pwm0.rst_n ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_pwm0.phase[3]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o22a_2_A2_B1  (.DIODE(\pwm0_duty[2] ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_pwm0.phase[4]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__nor2_2_Y_B_sky130_fd_sc_hd__o21ai_2_Y_B1  (.DIODE(pwm0_enable_sky130_fd_sc_hd__and2_2_B_X));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_pwm0.phase[4]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(\u_pwm0.rst_n ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_pwm0.phase[5]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a21oi_2_Y_B1_sky130_fd_sc_hd__o21ai_2_Y_B1  (.DIODE(pwm0_enable_sky130_fd_sc_hd__and2_2_B_X));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_pwm0.phase[5]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(\u_pwm0.rst_n ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_pwm0.phase[6]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X_B  (.DIODE(pwm0_enable_sky130_fd_sc_hd__and2_2_B_X));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_pwm0.phase[6]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(\u_pwm0.rst_n ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_pwm0.phase[7]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a21oi_2_Y_B1_sky130_fd_sc_hd__o21ai_2_Y_B1  (.DIODE(pwm0_enable_sky130_fd_sc_hd__and2_2_B_X));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_pwm0.phase[7]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(\u_pwm0.rst_n ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_pwm0.rst_n_sky130_fd_sc_hd__and2_2_X_A  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_pwm0.rst_n_sky130_fd_sc_hd__and2_2_X_B  (.DIODE(net2));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_pwm0.rst_n_sky130_fd_sc_hd__and2_2_X_X  (.DIODE(\u_pwm0.rst_n ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_pwm1.phase[0]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(\u_pwm0.rst_n ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_pwm1.phase[1]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(\u_pwm0.rst_n ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_pwm1.phase[1]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o221a_2_B2_A1  (.DIODE(\pwm1_duty[2] ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_pwm1.phase[2]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(\u_pwm0.rst_n ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_pwm1.phase[3]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(\u_pwm0.rst_n ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_pwm1.phase[4]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(\u_pwm0.rst_n ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_pwm1.phase[5]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(\u_pwm0.rst_n ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_pwm1.phase[6]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(\u_pwm0.rst_n ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_pwm1.phase[7]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(\u_pwm0.rst_n ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_reg_bank.wr_addr[0]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_S  (.DIODE(\u_spi_slave.rw_sky130_fd_sc_hd__or3b_2_A_X ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_reg_bank.wr_addr[0]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net3));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_reg_bank.wr_addr[1]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_S  (.DIODE(\u_spi_slave.rw_sky130_fd_sc_hd__or3b_2_A_X ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_reg_bank.wr_addr[1]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_reg_bank.wr_addr[2]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_S  (.DIODE(\u_spi_slave.rw_sky130_fd_sc_hd__or3b_2_A_X ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_reg_bank.wr_addr[2]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net3));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_reg_bank.wr_addr[3]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_S  (.DIODE(\u_spi_slave.rw_sky130_fd_sc_hd__or3b_2_A_X ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_reg_bank.wr_addr[3]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net3));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_reg_bank.wr_addr[3]_sky130_fd_sc_hd__or4_2_A_X_sky130_fd_sc_hd__or3b_2_B_X_sky130_fd_sc_hd__or2_2_A_X  (.DIODE(\u_reg_bank.wr_addr[3]_sky130_fd_sc_hd__or4_2_A_X_sky130_fd_sc_hd__or3b_2_B_X_sky130_fd_sc_hd__or2_2_A_X ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_reg_bank.wr_addr[3]_sky130_fd_sc_hd__or4_2_A_X_sky130_fd_sc_hd__or3b_2_B_X_sky130_fd_sc_hd__or3b_2_A_X  (.DIODE(\u_reg_bank.wr_addr[3]_sky130_fd_sc_hd__or4_2_A_X_sky130_fd_sc_hd__or3b_2_B_X_sky130_fd_sc_hd__or3b_2_A_X ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_reg_bank.wr_addr[4]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_S  (.DIODE(\u_spi_slave.rw_sky130_fd_sc_hd__or3b_2_A_X ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_reg_bank.wr_addr[4]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_reg_bank.wr_addr[5]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_S  (.DIODE(\u_spi_slave.rw_sky130_fd_sc_hd__or3b_2_A_X ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_reg_bank.wr_addr[5]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net3));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_reg_bank.wr_addr[5]_sky130_fd_sc_hd__or4b_2_A_X_sky130_fd_sc_hd__nor3_2_C_Y  (.DIODE(\u_reg_bank.wr_addr[5]_sky130_fd_sc_hd__or4b_2_A_X_sky130_fd_sc_hd__nor3_2_C_Y ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_reg_bank.wr_addr[6]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_S  (.DIODE(\u_spi_slave.rw_sky130_fd_sc_hd__or3b_2_A_X ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_reg_bank.wr_addr[6]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net3));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_reg_bank.wr_data[0]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_A1  (.DIODE(\u_reg_bank.wr_data[0] ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_reg_bank.wr_data[0]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_S  (.DIODE(\u_spi_slave.rw_sky130_fd_sc_hd__or3b_2_A_X ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_reg_bank.wr_data[0]_sky130_fd_sc_hd__dfrtp_2_Q_Q  (.DIODE(\u_reg_bank.wr_data[0] ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_reg_bank.wr_data[0]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net3));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_reg_bank.wr_data[1]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_S  (.DIODE(\u_spi_slave.rw_sky130_fd_sc_hd__or3b_2_A_X ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_reg_bank.wr_data[1]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_reg_bank.wr_data[2]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_S  (.DIODE(\u_spi_slave.rw_sky130_fd_sc_hd__or3b_2_A_X ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_reg_bank.wr_data[2]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_reg_bank.wr_data[3]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_S  (.DIODE(\u_spi_slave.rw_sky130_fd_sc_hd__or3b_2_A_X ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_reg_bank.wr_data[3]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_reg_bank.wr_data[4]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_S  (.DIODE(\u_spi_slave.rw_sky130_fd_sc_hd__or3b_2_A_X ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_reg_bank.wr_data[4]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_reg_bank.wr_data[5]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_A1  (.DIODE(\u_reg_bank.wr_data[5] ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_reg_bank.wr_data[5]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_S  (.DIODE(\u_spi_slave.rw_sky130_fd_sc_hd__or3b_2_A_X ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_reg_bank.wr_data[5]_sky130_fd_sc_hd__dfrtp_2_Q_Q  (.DIODE(\u_reg_bank.wr_data[5] ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_reg_bank.wr_data[5]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_reg_bank.wr_data[6]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_S  (.DIODE(\u_spi_slave.rw_sky130_fd_sc_hd__or3b_2_A_X ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_reg_bank.wr_data[6]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_reg_bank.wr_data[7]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_S  (.DIODE(\u_spi_slave.rw_sky130_fd_sc_hd__or3b_2_A_X ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_reg_bank.wr_data[7]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_reg_bank.wr_en_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__inv_2_Y_A  (.DIODE(\u_spi_slave.rw_sky130_fd_sc_hd__or3b_2_A_X ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_reg_bank.wr_en_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net3));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_spi_slave.bit_count[0]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_spi_slave.bit_count[1]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_spi_slave.bit_count[2]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_spi_slave.bit_count[3]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_spi_slave.bit_count[4]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_spi_slave.cs_sync[0]_sky130_fd_sc_hd__dfstp_2_Q_SET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_spi_slave.cs_sync[1]_sky130_fd_sc_hd__dfstp_2_Q_SET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_spi_slave.cs_sync[2]_sky130_fd_sc_hd__dfstp_2_Q_SET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_spi_slave.mosi_sync[0]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net3));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_spi_slave.mosi_sync[1]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net3));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_spi_slave.rw_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_spi_slave.rw_sky130_fd_sc_hd__or3b_2_A_X  (.DIODE(\u_spi_slave.rw_sky130_fd_sc_hd__or3b_2_A_X ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_spi_slave.rx_shift[0]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_spi_slave.rx_shift[1]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_spi_slave.rx_shift[2]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_spi_slave.rx_shift[3]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_spi_slave.rx_shift[4]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_spi_slave.rx_shift[5]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_spi_slave.rx_shift[6]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_spi_slave.sck_sync[0]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_spi_slave.sck_sync[1]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_C_N_B_sky130_fd_sc_hd__or3_2_C_X  (.DIODE(\u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_C_N_B_sky130_fd_sc_hd__or3_2_C_X ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_C_N_B_sky130_fd_sc_hd__or3_2_C_X_sky130_fd_sc_hd__nand2_2_A_A  (.DIODE(\u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_C_N_B_sky130_fd_sc_hd__or3_2_C_X ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_spi_slave.tx_shift[0]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_spi_slave.tx_shift[0]_sky130_fd_sc_hd__o22a_2_A1_B2_sky130_fd_sc_hd__a221o_2_X_B1  (.DIODE(pwm1_clk_sel_sky130_fd_sc_hd__a211o_2_A1_B1_sky130_fd_sc_hd__a22o_2_X_B1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_spi_slave.tx_shift[0]_sky130_fd_sc_hd__o22a_2_A1_B2_sky130_fd_sc_hd__a221o_2_X_C1_sky130_fd_sc_hd__a221o_2_X_A2  (.DIODE(\rd_addr[5]_sky130_fd_sc_hd__or3_2_A_X_sky130_fd_sc_hd__nor2_2_A_Y ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_spi_slave.tx_shift[0]_sky130_fd_sc_hd__o22a_2_A1_B2_sky130_fd_sc_hd__a221o_2_X_C1_sky130_fd_sc_hd__a221o_2_X_C1  (.DIODE(\u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_C_N_B_sky130_fd_sc_hd__or3_2_C_X ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_spi_slave.tx_shift[1]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_spi_slave.tx_shift[2]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_spi_slave.tx_shift[3]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_spi_slave.tx_shift[3]_sky130_fd_sc_hd__o221a_2_A1_C1_sky130_fd_sc_hd__a211o_2_X_A2  (.DIODE(pwm1_clk_sel_sky130_fd_sc_hd__a211o_2_A1_B1_sky130_fd_sc_hd__a22o_2_X_B1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_spi_slave.tx_shift[3]_sky130_fd_sc_hd__o221a_2_A1_C1_sky130_fd_sc_hd__a211o_2_X_B1_sky130_fd_sc_hd__a221o_2_X_A2  (.DIODE(\rd_addr[5]_sky130_fd_sc_hd__or3_2_A_X_sky130_fd_sc_hd__nor2_2_A_Y ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_spi_slave.tx_shift[3]_sky130_fd_sc_hd__o221a_2_A1_C1_sky130_fd_sc_hd__a211o_2_X_C1_sky130_fd_sc_hd__a22o_2_X_A2  (.DIODE(bias_en_sky130_fd_sc_hd__a22o_2_B2_A2));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_spi_slave.tx_shift[4]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_spi_slave.tx_shift[4]_sky130_fd_sc_hd__o221a_2_A1_C1_sky130_fd_sc_hd__or3_2_X_B_sky130_fd_sc_hd__a22o_2_X_A2  (.DIODE(bias_en_sky130_fd_sc_hd__a22o_2_B2_A2));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_spi_slave.tx_shift[4]_sky130_fd_sc_hd__o221a_2_A1_C1_sky130_fd_sc_hd__or3_2_X_C_sky130_fd_sc_hd__a22o_2_X_A2  (.DIODE(\rd_addr[5]_sky130_fd_sc_hd__or3_2_A_X_sky130_fd_sc_hd__nor2_2_A_Y ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_spi_slave.tx_shift[4]_sky130_fd_sc_hd__o221a_2_A1_C1_sky130_fd_sc_hd__or3_2_X_C_sky130_fd_sc_hd__a22o_2_X_B1  (.DIODE(pwm1_clk_sel_sky130_fd_sc_hd__a211o_2_A1_B1_sky130_fd_sc_hd__a22o_2_X_B1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_spi_slave.tx_shift[5]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_spi_slave.tx_shift[5]_sky130_fd_sc_hd__o221a_2_A1_C1_sky130_fd_sc_hd__a211o_2_X_A2  (.DIODE(\rd_addr[5]_sky130_fd_sc_hd__or3_2_A_X_sky130_fd_sc_hd__nor2_2_A_Y ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_spi_slave.tx_shift[5]_sky130_fd_sc_hd__o221a_2_A1_C1_sky130_fd_sc_hd__a211o_2_X_C1_sky130_fd_sc_hd__a22o_2_X_A2  (.DIODE(bias_en_sky130_fd_sc_hd__a22o_2_B2_A2));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_spi_slave.tx_shift[5]_sky130_fd_sc_hd__o221a_2_A1_C1_sky130_fd_sc_hd__a211o_2_X_C1_sky130_fd_sc_hd__a22o_2_X_B1  (.DIODE(pwm1_clk_sel_sky130_fd_sc_hd__a211o_2_A1_B1_sky130_fd_sc_hd__a22o_2_X_B1));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_spi_slave.tx_shift[6]_sky130_fd_sc_hd__a21o_2_A1_A2  (.DIODE(\u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_C_N_B_sky130_fd_sc_hd__or3_2_C_X ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_spi_slave.tx_shift[6]_sky130_fd_sc_hd__dfrtp_2_Q_RESET_B  (.DIODE(net31));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_spi_slave.tx_shift[6]_sky130_fd_sc_hd__o221a_2_A1_C1_sky130_fd_sc_hd__a211o_2_X_A2  (.DIODE(\rd_addr[5]_sky130_fd_sc_hd__or3_2_A_X_sky130_fd_sc_hd__nor2_2_A_Y ));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_spi_slave.tx_shift[6]_sky130_fd_sc_hd__o221a_2_A1_C1_sky130_fd_sc_hd__a211o_2_X_C1_sky130_fd_sc_hd__a22o_2_X_A2  (.DIODE(bias_en_sky130_fd_sc_hd__a22o_2_B2_A2));
 sky130_fd_sc_hd__diode_2 \ANTENNA_u_spi_slave.tx_shift[6]_sky130_fd_sc_hd__o221a_2_A1_C1_sky130_fd_sc_hd__a211o_2_X_C1_sky130_fd_sc_hd__a22o_2_X_B1  (.DIODE(pwm1_clk_sel_sky130_fd_sc_hd__a211o_2_A1_B1_sky130_fd_sc_hd__a22o_2_X_B1));
 sky130_fd_sc_hd__decap_3 FILLER_0_102 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_105 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_108 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_111 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_113 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_12 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_157 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_18 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_181 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_184 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_187 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_205 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_208 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_21 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_211 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_214 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_217 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_220 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_223 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_225 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_228 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_231 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_234 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_237 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_24 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_245 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_248 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_251 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_253 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_256 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_259 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_262 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_265 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_268 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_27 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_271 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_274 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_277 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_281 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_29 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_296 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_299 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_302 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_305 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_309 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_312 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_315 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_318 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_32 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_321 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_324 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_327 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_330 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_333 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_337 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_340 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_343 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_346 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_349 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_35 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_352 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_355 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_358 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_361 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_365 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_368 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_371 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_374 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_377 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_38 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_380 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_383 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_41 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_44 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_47 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_50 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_53 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_57 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_6 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_60 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_65 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_68 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_75 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_78 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_9 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_93 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_96 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_99 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_100 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_103 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_106 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_139 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_141 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_144 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_147 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_150 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_153 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_156 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_159 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_162 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_165 ();
 sky130_fd_sc_hd__fill_2 FILLER_10_210 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_232 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_235 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_238 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_241 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_244 ();
 sky130_fd_sc_hd__fill_2 FILLER_10_253 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_268 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_293 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_296 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_299 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_302 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_305 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_34 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_342 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_345 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_348 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_351 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_354 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_357 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_360 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_363 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_365 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_368 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_371 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_374 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_377 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_380 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_383 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_43 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_46 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_49 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_52 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_55 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_58 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_6 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_61 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_64 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_67 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_70 ();
 sky130_fd_sc_hd__fill_2 FILLER_10_82 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_85 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_88 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_9 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_91 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_94 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_97 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_103 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_106 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_109 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_11 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_113 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_116 ();
 sky130_fd_sc_hd__fill_2 FILLER_11_14 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_163 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_223 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_237 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_240 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_243 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_246 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_249 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_264 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_291 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_294 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_297 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_300 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_303 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_306 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_309 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_312 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_337 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_340 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_343 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_346 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_349 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_352 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_355 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_358 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_361 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_364 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_367 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_370 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_373 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_376 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_379 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_382 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_385 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_41 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_44 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_47 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_5 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_50 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_53 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_8 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_82 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_88 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_91 ();
 sky130_fd_sc_hd__fill_2 FILLER_11_94 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_102 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_105 ();
 sky130_fd_sc_hd__fill_2 FILLER_12_108 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_11 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_14 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_146 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_149 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_152 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_155 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_158 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_161 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_164 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_167 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_17 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_170 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_173 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_176 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_179 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_182 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_197 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_200 ();
 sky130_fd_sc_hd__fill_2 FILLER_12_203 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_218 ();
 sky130_fd_sc_hd__fill_2 FILLER_12_226 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_235 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_238 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_241 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_244 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_247 ();
 sky130_fd_sc_hd__fill_2 FILLER_12_250 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_253 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_256 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_267 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_27 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_286 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_289 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_292 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_295 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_298 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_301 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_304 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_307 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_309 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_31 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_312 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_315 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_318 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_321 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_331 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_334 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_337 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_34 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_340 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_343 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_346 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_349 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_352 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_355 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_358 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_361 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_365 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_368 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_371 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_374 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_377 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_380 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_383 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_48 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_55 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_71 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_74 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_77 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_80 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_83 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_85 ();
 sky130_fd_sc_hd__decap_3 FILLER_12_88 ();
 sky130_fd_sc_hd__fill_2 FILLER_12_91 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_108 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_11 ();
 sky130_fd_sc_hd__fill_1 FILLER_13_111 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_113 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_14 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_151 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_154 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_157 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_160 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_163 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_192 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_195 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_198 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_201 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_204 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_207 ();
 sky130_fd_sc_hd__fill_1 FILLER_13_210 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_230 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_233 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_236 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_239 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_242 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_245 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_248 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_251 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_254 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_257 ();
 sky130_fd_sc_hd__fill_2 FILLER_13_260 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_265 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_276 ();
 sky130_fd_sc_hd__fill_1 FILLER_13_279 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_281 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_284 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_287 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_290 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_293 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_296 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_299 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_302 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_305 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_308 ();
 sky130_fd_sc_hd__fill_1 FILLER_13_311 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_319 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_322 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_325 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_328 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_331 ();
 sky130_fd_sc_hd__fill_2 FILLER_13_334 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_337 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_340 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_343 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_346 ();
 sky130_fd_sc_hd__fill_2 FILLER_13_349 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_374 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_377 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_380 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_383 ();
 sky130_fd_sc_hd__fill_1 FILLER_13_44 ();
 sky130_fd_sc_hd__decap_3 FILLER_13_75 ();
 sky130_fd_sc_hd__fill_2 FILLER_13_83 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_106 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_109 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_112 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_115 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_118 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_132 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_135 ();
 sky130_fd_sc_hd__fill_2 FILLER_14_138 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_141 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_144 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_191 ();
 sky130_fd_sc_hd__fill_2 FILLER_14_194 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_197 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_200 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_203 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_206 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_209 ();
 sky130_fd_sc_hd__fill_2 FILLER_14_212 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_237 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_240 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_243 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_246 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_249 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_253 ();
 sky130_fd_sc_hd__fill_1 FILLER_14_256 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_261 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_264 ();
 sky130_fd_sc_hd__fill_2 FILLER_14_267 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_280 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_283 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_286 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_289 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_292 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_295 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_298 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_301 ();
 sky130_fd_sc_hd__fill_1 FILLER_14_31 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_330 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_333 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_336 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_339 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_342 ();
 sky130_fd_sc_hd__fill_2 FILLER_14_345 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_360 ();
 sky130_fd_sc_hd__fill_1 FILLER_14_363 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_365 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_368 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_371 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_374 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_377 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_380 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_383 ();
 sky130_fd_sc_hd__fill_1 FILLER_14_6 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_61 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_64 ();
 sky130_fd_sc_hd__fill_1 FILLER_14_67 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_70 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_73 ();
 sky130_fd_sc_hd__fill_2 FILLER_14_76 ();
 sky130_fd_sc_hd__fill_1 FILLER_14_85 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_102 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_105 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_108 ();
 sky130_fd_sc_hd__fill_1 FILLER_15_111 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_113 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_116 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_119 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_122 ();
 sky130_fd_sc_hd__fill_2 FILLER_15_125 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_152 ();
 sky130_fd_sc_hd__fill_2 FILLER_15_155 ();
 sky130_fd_sc_hd__fill_1 FILLER_15_171 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_183 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_186 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_189 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_192 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_195 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_198 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_236 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_239 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_242 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_245 ();
 sky130_fd_sc_hd__fill_1 FILLER_15_248 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_284 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_287 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_290 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_293 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_296 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_327 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_330 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_333 ();
 sky130_fd_sc_hd__fill_2 FILLER_15_337 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_34 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_37 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_372 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_375 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_378 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_381 ();
 sky130_fd_sc_hd__fill_2 FILLER_15_384 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_40 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_43 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_46 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_49 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_52 ();
 sky130_fd_sc_hd__fill_1 FILLER_15_55 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_57 ();
 sky130_fd_sc_hd__fill_1 FILLER_15_6 ();
 sky130_fd_sc_hd__fill_1 FILLER_15_60 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_63 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_77 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_80 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_83 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_93 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_96 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_99 ();
 sky130_fd_sc_hd__fill_2 FILLER_16_120 ();
 sky130_fd_sc_hd__decap_3 FILLER_16_158 ();
 sky130_fd_sc_hd__decap_3 FILLER_16_161 ();
 sky130_fd_sc_hd__decap_3 FILLER_16_164 ();
 sky130_fd_sc_hd__decap_3 FILLER_16_167 ();
 sky130_fd_sc_hd__fill_2 FILLER_16_170 ();
 sky130_fd_sc_hd__decap_3 FILLER_16_183 ();
 sky130_fd_sc_hd__decap_3 FILLER_16_186 ();
 sky130_fd_sc_hd__decap_3 FILLER_16_189 ();
 sky130_fd_sc_hd__decap_3 FILLER_16_192 ();
 sky130_fd_sc_hd__fill_1 FILLER_16_195 ();
 sky130_fd_sc_hd__decap_3 FILLER_16_197 ();
 sky130_fd_sc_hd__decap_3 FILLER_16_200 ();
 sky130_fd_sc_hd__fill_2 FILLER_16_203 ();
 sky130_fd_sc_hd__decap_3 FILLER_16_237 ();
 sky130_fd_sc_hd__decap_3 FILLER_16_240 ();
 sky130_fd_sc_hd__decap_3 FILLER_16_243 ();
 sky130_fd_sc_hd__decap_3 FILLER_16_246 ();
 sky130_fd_sc_hd__decap_3 FILLER_16_249 ();
 sky130_fd_sc_hd__decap_3 FILLER_16_253 ();
 sky130_fd_sc_hd__decap_3 FILLER_16_256 ();
 sky130_fd_sc_hd__decap_3 FILLER_16_289 ();
 sky130_fd_sc_hd__decap_3 FILLER_16_292 ();
 sky130_fd_sc_hd__decap_3 FILLER_16_295 ();
 sky130_fd_sc_hd__fill_1 FILLER_16_298 ();
 sky130_fd_sc_hd__decap_3 FILLER_16_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_16_329 ();
 sky130_fd_sc_hd__decap_3 FILLER_16_332 ();
 sky130_fd_sc_hd__decap_3 FILLER_16_335 ();
 sky130_fd_sc_hd__decap_3 FILLER_16_338 ();
 sky130_fd_sc_hd__decap_3 FILLER_16_341 ();
 sky130_fd_sc_hd__fill_2 FILLER_16_344 ();
 sky130_fd_sc_hd__fill_2 FILLER_16_362 ();
 sky130_fd_sc_hd__fill_2 FILLER_16_37 ();
 sky130_fd_sc_hd__fill_1 FILLER_16_385 ();
 sky130_fd_sc_hd__decap_3 FILLER_16_6 ();
 sky130_fd_sc_hd__fill_1 FILLER_16_62 ();
 sky130_fd_sc_hd__decap_3 FILLER_16_85 ();
 sky130_fd_sc_hd__decap_3 FILLER_16_88 ();
 sky130_fd_sc_hd__fill_1 FILLER_16_9 ();
 sky130_fd_sc_hd__decap_3 FILLER_16_91 ();
 sky130_fd_sc_hd__fill_1 FILLER_16_94 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_100 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_103 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_106 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_109 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_113 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_139 ();
 sky130_fd_sc_hd__fill_1 FILLER_17_142 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_169 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_172 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_175 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_178 ();
 sky130_fd_sc_hd__fill_1 FILLER_17_192 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_203 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_206 ();
 sky130_fd_sc_hd__fill_2 FILLER_17_209 ();
 sky130_fd_sc_hd__fill_2 FILLER_17_225 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_252 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_255 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_258 ();
 sky130_fd_sc_hd__fill_2 FILLER_17_261 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_290 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_293 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_296 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_299 ();
 sky130_fd_sc_hd__fill_2 FILLER_17_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_17_302 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_332 ();
 sky130_fd_sc_hd__fill_1 FILLER_17_335 ();
 sky130_fd_sc_hd__fill_2 FILLER_17_337 ();
 sky130_fd_sc_hd__fill_1 FILLER_17_345 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_377 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_380 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_383 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_57 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_60 ();
 sky130_fd_sc_hd__fill_2 FILLER_17_63 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_88 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_91 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_94 ();
 sky130_fd_sc_hd__decap_3 FILLER_17_97 ();
 sky130_fd_sc_hd__decap_3 FILLER_18_109 ();
 sky130_fd_sc_hd__decap_3 FILLER_18_112 ();
 sky130_fd_sc_hd__fill_1 FILLER_18_115 ();
 sky130_fd_sc_hd__fill_1 FILLER_18_139 ();
 sky130_fd_sc_hd__fill_1 FILLER_18_141 ();
 sky130_fd_sc_hd__decap_3 FILLER_18_165 ();
 sky130_fd_sc_hd__decap_3 FILLER_18_168 ();
 sky130_fd_sc_hd__fill_2 FILLER_18_171 ();
 sky130_fd_sc_hd__decap_3 FILLER_18_197 ();
 sky130_fd_sc_hd__decap_3 FILLER_18_200 ();
 sky130_fd_sc_hd__decap_3 FILLER_18_203 ();
 sky130_fd_sc_hd__decap_3 FILLER_18_206 ();
 sky130_fd_sc_hd__fill_1 FILLER_18_209 ();
 sky130_fd_sc_hd__decap_3 FILLER_18_242 ();
 sky130_fd_sc_hd__decap_3 FILLER_18_245 ();
 sky130_fd_sc_hd__fill_2 FILLER_18_248 ();
 sky130_fd_sc_hd__decap_3 FILLER_18_259 ();
 sky130_fd_sc_hd__decap_3 FILLER_18_262 ();
 sky130_fd_sc_hd__decap_3 FILLER_18_265 ();
 sky130_fd_sc_hd__decap_3 FILLER_18_268 ();
 sky130_fd_sc_hd__fill_1 FILLER_18_271 ();
 sky130_fd_sc_hd__decap_3 FILLER_18_282 ();
 sky130_fd_sc_hd__fill_1 FILLER_18_285 ();
 sky130_fd_sc_hd__decap_3 FILLER_18_296 ();
 sky130_fd_sc_hd__fill_2 FILLER_18_299 ();
 sky130_fd_sc_hd__fill_1 FILLER_18_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_18_309 ();
 sky130_fd_sc_hd__fill_1 FILLER_18_319 ();
 sky130_fd_sc_hd__fill_1 FILLER_18_351 ();
 sky130_fd_sc_hd__fill_2 FILLER_18_362 ();
 sky130_fd_sc_hd__decap_3 FILLER_18_365 ();
 sky130_fd_sc_hd__decap_3 FILLER_18_368 ();
 sky130_fd_sc_hd__decap_3 FILLER_18_371 ();
 sky130_fd_sc_hd__decap_3 FILLER_18_374 ();
 sky130_fd_sc_hd__decap_3 FILLER_18_377 ();
 sky130_fd_sc_hd__decap_3 FILLER_18_380 ();
 sky130_fd_sc_hd__decap_3 FILLER_18_383 ();
 sky130_fd_sc_hd__decap_3 FILLER_18_39 ();
 sky130_fd_sc_hd__decap_3 FILLER_18_42 ();
 sky130_fd_sc_hd__decap_3 FILLER_18_47 ();
 sky130_fd_sc_hd__decap_3 FILLER_18_50 ();
 sky130_fd_sc_hd__decap_3 FILLER_18_53 ();
 sky130_fd_sc_hd__fill_2 FILLER_18_56 ();
 sky130_fd_sc_hd__fill_2 FILLER_18_82 ();
 sky130_fd_sc_hd__fill_1 FILLER_18_95 ();
 sky130_fd_sc_hd__decap_3 FILLER_19_104 ();
 sky130_fd_sc_hd__decap_3 FILLER_19_107 ();
 sky130_fd_sc_hd__fill_2 FILLER_19_110 ();
 sky130_fd_sc_hd__decap_3 FILLER_19_113 ();
 sky130_fd_sc_hd__decap_3 FILLER_19_116 ();
 sky130_fd_sc_hd__fill_2 FILLER_19_119 ();
 sky130_fd_sc_hd__decap_3 FILLER_19_132 ();
 sky130_fd_sc_hd__decap_3 FILLER_19_135 ();
 sky130_fd_sc_hd__decap_3 FILLER_19_169 ();
 sky130_fd_sc_hd__decap_3 FILLER_19_172 ();
 sky130_fd_sc_hd__decap_3 FILLER_19_175 ();
 sky130_fd_sc_hd__fill_1 FILLER_19_178 ();
 sky130_fd_sc_hd__fill_1 FILLER_19_190 ();
 sky130_fd_sc_hd__decap_3 FILLER_19_199 ();
 sky130_fd_sc_hd__decap_3 FILLER_19_202 ();
 sky130_fd_sc_hd__decap_3 FILLER_19_205 ();
 sky130_fd_sc_hd__decap_3 FILLER_19_208 ();
 sky130_fd_sc_hd__decap_3 FILLER_19_211 ();
 sky130_fd_sc_hd__decap_3 FILLER_19_218 ();
 sky130_fd_sc_hd__decap_3 FILLER_19_221 ();
 sky130_fd_sc_hd__decap_3 FILLER_19_225 ();
 sky130_fd_sc_hd__fill_2 FILLER_19_228 ();
 sky130_fd_sc_hd__decap_3 FILLER_19_242 ();
 sky130_fd_sc_hd__fill_1 FILLER_19_245 ();
 sky130_fd_sc_hd__decap_3 FILLER_19_254 ();
 sky130_fd_sc_hd__decap_3 FILLER_19_257 ();
 sky130_fd_sc_hd__decap_3 FILLER_19_273 ();
 sky130_fd_sc_hd__decap_3 FILLER_19_276 ();
 sky130_fd_sc_hd__fill_1 FILLER_19_279 ();
 sky130_fd_sc_hd__decap_3 FILLER_19_289 ();
 sky130_fd_sc_hd__decap_3 FILLER_19_292 ();
 sky130_fd_sc_hd__decap_3 FILLER_19_295 ();
 sky130_fd_sc_hd__decap_3 FILLER_19_298 ();
 sky130_fd_sc_hd__fill_2 FILLER_19_309 ();
 sky130_fd_sc_hd__decap_3 FILLER_19_329 ();
 sky130_fd_sc_hd__decap_3 FILLER_19_332 ();
 sky130_fd_sc_hd__fill_1 FILLER_19_335 ();
 sky130_fd_sc_hd__decap_3 FILLER_19_337 ();
 sky130_fd_sc_hd__decap_3 FILLER_19_340 ();
 sky130_fd_sc_hd__fill_1 FILLER_19_343 ();
 sky130_fd_sc_hd__decap_3 FILLER_19_375 ();
 sky130_fd_sc_hd__decap_3 FILLER_19_378 ();
 sky130_fd_sc_hd__decap_3 FILLER_19_381 ();
 sky130_fd_sc_hd__fill_2 FILLER_19_384 ();
 sky130_fd_sc_hd__decap_3 FILLER_19_53 ();
 sky130_fd_sc_hd__fill_2 FILLER_19_80 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_109 ();
 sky130_fd_sc_hd__fill_1 FILLER_1_113 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_12 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_1_165 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_18 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_190 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_193 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_196 ();
 sky130_fd_sc_hd__fill_2 FILLER_1_199 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_21 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_225 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_228 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_24 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_262 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_265 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_268 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_27 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_271 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_274 ();
 sky130_fd_sc_hd__fill_1 FILLER_1_277 ();
 sky130_fd_sc_hd__fill_1 FILLER_1_283 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_30 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_305 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_308 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_311 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_314 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_317 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_320 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_323 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_326 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_329 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_33 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_332 ();
 sky130_fd_sc_hd__fill_1 FILLER_1_335 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_337 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_340 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_343 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_346 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_349 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_352 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_355 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_358 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_36 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_361 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_364 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_367 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_370 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_373 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_376 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_379 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_382 ();
 sky130_fd_sc_hd__fill_1 FILLER_1_385 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_39 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_42 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_45 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_48 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_51 ();
 sky130_fd_sc_hd__fill_2 FILLER_1_54 ();
 sky130_fd_sc_hd__fill_1 FILLER_1_57 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_6 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_9 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_110 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_113 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_116 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_119 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_122 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_125 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_128 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_131 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_134 ();
 sky130_fd_sc_hd__fill_1 FILLER_20_137 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_152 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_155 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_158 ();
 sky130_fd_sc_hd__fill_2 FILLER_20_184 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_197 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_200 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_203 ();
 sky130_fd_sc_hd__fill_1 FILLER_20_206 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_227 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_230 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_233 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_236 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_239 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_242 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_245 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_248 ();
 sky130_fd_sc_hd__fill_1 FILLER_20_251 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_253 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_256 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_259 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_262 ();
 sky130_fd_sc_hd__fill_1 FILLER_20_27 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_288 ();
 sky130_fd_sc_hd__fill_2 FILLER_20_29 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_291 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_294 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_297 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_300 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_303 ();
 sky130_fd_sc_hd__fill_2 FILLER_20_306 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_309 ();
 sky130_fd_sc_hd__fill_2 FILLER_20_312 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_337 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_340 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_343 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_346 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_349 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_352 ();
 sky130_fd_sc_hd__fill_1 FILLER_20_42 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_60 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_63 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_66 ();
 sky130_fd_sc_hd__decap_3 FILLER_20_69 ();
 sky130_fd_sc_hd__fill_2 FILLER_20_72 ();
 sky130_fd_sc_hd__fill_2 FILLER_20_96 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_101 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_104 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_107 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_11 ();
 sky130_fd_sc_hd__fill_2 FILLER_21_110 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_113 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_116 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_119 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_122 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_125 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_128 ();
 sky130_fd_sc_hd__fill_1 FILLER_21_131 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_14 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_146 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_154 ();
 sky130_fd_sc_hd__fill_1 FILLER_21_157 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_186 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_189 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_192 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_195 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_198 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_231 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_234 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_237 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_240 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_243 ();
 sky130_fd_sc_hd__fill_2 FILLER_21_246 ();
 sky130_fd_sc_hd__fill_2 FILLER_21_262 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_275 ();
 sky130_fd_sc_hd__fill_2 FILLER_21_278 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_289 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_292 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_295 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_298 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_30 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_301 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_304 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_307 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_310 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_313 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_316 ();
 sky130_fd_sc_hd__fill_2 FILLER_21_321 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_326 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_329 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_332 ();
 sky130_fd_sc_hd__fill_1 FILLER_21_335 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_337 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_340 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_343 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_346 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_349 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_352 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_355 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_358 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_361 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_364 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_367 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_370 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_373 ();
 sky130_fd_sc_hd__fill_2 FILLER_21_376 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_57 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_60 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_63 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_66 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_69 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_72 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_75 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_78 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_81 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_84 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_87 ();
 sky130_fd_sc_hd__decap_3 FILLER_21_90 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_106 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_109 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_112 ();
 sky130_fd_sc_hd__fill_2 FILLER_22_115 ();
 sky130_fd_sc_hd__fill_2 FILLER_22_152 ();
 sky130_fd_sc_hd__fill_1 FILLER_22_160 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_191 ();
 sky130_fd_sc_hd__fill_2 FILLER_22_194 ();
 sky130_fd_sc_hd__fill_2 FILLER_22_197 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_210 ();
 sky130_fd_sc_hd__fill_2 FILLER_22_213 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_225 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_228 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_237 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_240 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_243 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_246 ();
 sky130_fd_sc_hd__fill_1 FILLER_22_249 ();
 sky130_fd_sc_hd__fill_1 FILLER_22_261 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_293 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_296 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_299 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_22_302 ();
 sky130_fd_sc_hd__fill_1 FILLER_22_317 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_342 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_345 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_348 ();
 sky130_fd_sc_hd__fill_2 FILLER_22_351 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_365 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_368 ();
 sky130_fd_sc_hd__fill_1 FILLER_22_37 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_371 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_374 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_377 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_380 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_383 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_45 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_48 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_59 ();
 sky130_fd_sc_hd__fill_1 FILLER_22_6 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_62 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_65 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_68 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_71 ();
 sky130_fd_sc_hd__fill_1 FILLER_22_74 ();
 sky130_fd_sc_hd__decap_3 FILLER_22_95 ();
 sky130_fd_sc_hd__decap_3 FILLER_23_11 ();
 sky130_fd_sc_hd__decap_3 FILLER_23_115 ();
 sky130_fd_sc_hd__fill_2 FILLER_23_118 ();
 sky130_fd_sc_hd__decap_3 FILLER_23_150 ();
 sky130_fd_sc_hd__decap_3 FILLER_23_153 ();
 sky130_fd_sc_hd__decap_3 FILLER_23_156 ();
 sky130_fd_sc_hd__fill_1 FILLER_23_159 ();
 sky130_fd_sc_hd__decap_3 FILLER_23_164 ();
 sky130_fd_sc_hd__fill_1 FILLER_23_167 ();
 sky130_fd_sc_hd__decap_3 FILLER_23_169 ();
 sky130_fd_sc_hd__decap_3 FILLER_23_172 ();
 sky130_fd_sc_hd__decap_3 FILLER_23_175 ();
 sky130_fd_sc_hd__fill_1 FILLER_23_178 ();
 sky130_fd_sc_hd__fill_1 FILLER_23_202 ();
 sky130_fd_sc_hd__decap_3 FILLER_23_225 ();
 sky130_fd_sc_hd__fill_2 FILLER_23_228 ();
 sky130_fd_sc_hd__decap_3 FILLER_23_239 ();
 sky130_fd_sc_hd__decap_3 FILLER_23_242 ();
 sky130_fd_sc_hd__fill_2 FILLER_23_245 ();
 sky130_fd_sc_hd__fill_1 FILLER_23_260 ();
 sky130_fd_sc_hd__decap_3 FILLER_23_271 ();
 sky130_fd_sc_hd__decap_3 FILLER_23_274 ();
 sky130_fd_sc_hd__decap_3 FILLER_23_277 ();
 sky130_fd_sc_hd__decap_3 FILLER_23_281 ();
 sky130_fd_sc_hd__decap_3 FILLER_23_284 ();
 sky130_fd_sc_hd__decap_3 FILLER_23_287 ();
 sky130_fd_sc_hd__decap_3 FILLER_23_290 ();
 sky130_fd_sc_hd__decap_3 FILLER_23_293 ();
 sky130_fd_sc_hd__decap_3 FILLER_23_296 ();
 sky130_fd_sc_hd__fill_2 FILLER_23_301 ();
 sky130_fd_sc_hd__decap_3 FILLER_23_31 ();
 sky130_fd_sc_hd__fill_1 FILLER_23_335 ();
 sky130_fd_sc_hd__decap_3 FILLER_23_337 ();
 sky130_fd_sc_hd__decap_3 FILLER_23_34 ();
 sky130_fd_sc_hd__decap_3 FILLER_23_340 ();
 sky130_fd_sc_hd__decap_3 FILLER_23_343 ();
 sky130_fd_sc_hd__decap_3 FILLER_23_376 ();
 sky130_fd_sc_hd__decap_3 FILLER_23_379 ();
 sky130_fd_sc_hd__decap_3 FILLER_23_382 ();
 sky130_fd_sc_hd__fill_1 FILLER_23_385 ();
 sky130_fd_sc_hd__decap_3 FILLER_23_53 ();
 sky130_fd_sc_hd__decap_3 FILLER_23_57 ();
 sky130_fd_sc_hd__decap_3 FILLER_23_60 ();
 sky130_fd_sc_hd__decap_3 FILLER_23_63 ();
 sky130_fd_sc_hd__decap_3 FILLER_23_66 ();
 sky130_fd_sc_hd__decap_3 FILLER_23_69 ();
 sky130_fd_sc_hd__decap_3 FILLER_23_72 ();
 sky130_fd_sc_hd__decap_3 FILLER_23_75 ();
 sky130_fd_sc_hd__decap_3 FILLER_23_78 ();
 sky130_fd_sc_hd__decap_3 FILLER_23_81 ();
 sky130_fd_sc_hd__decap_3 FILLER_23_84 ();
 sky130_fd_sc_hd__decap_3 FILLER_23_87 ();
 sky130_fd_sc_hd__fill_1 FILLER_23_90 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_108 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_111 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_114 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_117 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_120 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_123 ();
 sky130_fd_sc_hd__fill_1 FILLER_24_128 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_141 ();
 sky130_fd_sc_hd__fill_1 FILLER_24_144 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_149 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_152 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_155 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_158 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_161 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_164 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_167 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_170 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_173 ();
 sky130_fd_sc_hd__fill_2 FILLER_24_176 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_190 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_193 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_205 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_208 ();
 sky130_fd_sc_hd__fill_2 FILLER_24_211 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_220 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_223 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_226 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_274 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_277 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_280 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_283 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_286 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_289 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_292 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_24_31 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_330 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_333 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_336 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_339 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_342 ();
 sky130_fd_sc_hd__fill_1 FILLER_24_363 ();
 sky130_fd_sc_hd__fill_1 FILLER_24_46 ();
 sky130_fd_sc_hd__fill_1 FILLER_24_6 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_61 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_64 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_67 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_70 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_73 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_76 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_79 ();
 sky130_fd_sc_hd__fill_2 FILLER_24_82 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_85 ();
 sky130_fd_sc_hd__decap_3 FILLER_24_88 ();
 sky130_fd_sc_hd__fill_1 FILLER_24_91 ();
 sky130_fd_sc_hd__decap_3 FILLER_25_115 ();
 sky130_fd_sc_hd__decap_3 FILLER_25_118 ();
 sky130_fd_sc_hd__decap_3 FILLER_25_12 ();
 sky130_fd_sc_hd__decap_3 FILLER_25_121 ();
 sky130_fd_sc_hd__decap_3 FILLER_25_15 ();
 sky130_fd_sc_hd__decap_3 FILLER_25_158 ();
 sky130_fd_sc_hd__decap_3 FILLER_25_161 ();
 sky130_fd_sc_hd__decap_3 FILLER_25_164 ();
 sky130_fd_sc_hd__fill_1 FILLER_25_167 ();
 sky130_fd_sc_hd__decap_3 FILLER_25_169 ();
 sky130_fd_sc_hd__fill_1 FILLER_25_172 ();
 sky130_fd_sc_hd__decap_3 FILLER_25_18 ();
 sky130_fd_sc_hd__decap_3 FILLER_25_192 ();
 sky130_fd_sc_hd__decap_3 FILLER_25_195 ();
 sky130_fd_sc_hd__decap_3 FILLER_25_198 ();
 sky130_fd_sc_hd__decap_3 FILLER_25_201 ();
 sky130_fd_sc_hd__decap_3 FILLER_25_204 ();
 sky130_fd_sc_hd__decap_3 FILLER_25_207 ();
 sky130_fd_sc_hd__decap_3 FILLER_25_21 ();
 sky130_fd_sc_hd__decap_3 FILLER_25_210 ();
 sky130_fd_sc_hd__decap_3 FILLER_25_213 ();
 sky130_fd_sc_hd__decap_3 FILLER_25_216 ();
 sky130_fd_sc_hd__decap_3 FILLER_25_219 ();
 sky130_fd_sc_hd__decap_3 FILLER_25_233 ();
 sky130_fd_sc_hd__decap_3 FILLER_25_236 ();
 sky130_fd_sc_hd__fill_2 FILLER_25_239 ();
 sky130_fd_sc_hd__decap_3 FILLER_25_24 ();
 sky130_fd_sc_hd__fill_1 FILLER_25_27 ();
 sky130_fd_sc_hd__decap_3 FILLER_25_274 ();
 sky130_fd_sc_hd__decap_3 FILLER_25_277 ();
 sky130_fd_sc_hd__decap_3 FILLER_25_281 ();
 sky130_fd_sc_hd__decap_3 FILLER_25_284 ();
 sky130_fd_sc_hd__decap_3 FILLER_25_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_25_316 ();
 sky130_fd_sc_hd__fill_1 FILLER_25_319 ();
 sky130_fd_sc_hd__decap_3 FILLER_25_322 ();
 sky130_fd_sc_hd__decap_3 FILLER_25_325 ();
 sky130_fd_sc_hd__decap_3 FILLER_25_328 ();
 sky130_fd_sc_hd__decap_3 FILLER_25_331 ();
 sky130_fd_sc_hd__fill_2 FILLER_25_334 ();
 sky130_fd_sc_hd__decap_3 FILLER_25_337 ();
 sky130_fd_sc_hd__decap_3 FILLER_25_340 ();
 sky130_fd_sc_hd__decap_3 FILLER_25_343 ();
 sky130_fd_sc_hd__fill_2 FILLER_25_346 ();
 sky130_fd_sc_hd__fill_2 FILLER_25_376 ();
 sky130_fd_sc_hd__decap_3 FILLER_25_53 ();
 sky130_fd_sc_hd__decap_3 FILLER_25_57 ();
 sky130_fd_sc_hd__decap_3 FILLER_25_6 ();
 sky130_fd_sc_hd__decap_3 FILLER_25_60 ();
 sky130_fd_sc_hd__decap_3 FILLER_25_63 ();
 sky130_fd_sc_hd__decap_3 FILLER_25_66 ();
 sky130_fd_sc_hd__decap_3 FILLER_25_69 ();
 sky130_fd_sc_hd__decap_3 FILLER_25_72 ();
 sky130_fd_sc_hd__fill_1 FILLER_25_75 ();
 sky130_fd_sc_hd__decap_3 FILLER_25_86 ();
 sky130_fd_sc_hd__decap_3 FILLER_25_9 ();
 sky130_fd_sc_hd__decap_3 FILLER_26_11 ();
 sky130_fd_sc_hd__decap_3 FILLER_26_14 ();
 sky130_fd_sc_hd__fill_1 FILLER_26_164 ();
 sky130_fd_sc_hd__fill_1 FILLER_26_17 ();
 sky130_fd_sc_hd__decap_3 FILLER_26_197 ();
 sky130_fd_sc_hd__decap_3 FILLER_26_200 ();
 sky130_fd_sc_hd__decap_3 FILLER_26_203 ();
 sky130_fd_sc_hd__decap_3 FILLER_26_206 ();
 sky130_fd_sc_hd__fill_2 FILLER_26_209 ();
 sky130_fd_sc_hd__decap_3 FILLER_26_213 ();
 sky130_fd_sc_hd__decap_3 FILLER_26_23 ();
 sky130_fd_sc_hd__decap_3 FILLER_26_233 ();
 sky130_fd_sc_hd__fill_1 FILLER_26_236 ();
 sky130_fd_sc_hd__decap_3 FILLER_26_245 ();
 sky130_fd_sc_hd__fill_2 FILLER_26_248 ();
 sky130_fd_sc_hd__fill_2 FILLER_26_26 ();
 sky130_fd_sc_hd__decap_3 FILLER_26_274 ();
 sky130_fd_sc_hd__decap_3 FILLER_26_277 ();
 sky130_fd_sc_hd__decap_3 FILLER_26_280 ();
 sky130_fd_sc_hd__decap_3 FILLER_26_283 ();
 sky130_fd_sc_hd__decap_3 FILLER_26_286 ();
 sky130_fd_sc_hd__fill_2 FILLER_26_289 ();
 sky130_fd_sc_hd__fill_1 FILLER_26_31 ();
 sky130_fd_sc_hd__decap_3 FILLER_26_316 ();
 sky130_fd_sc_hd__decap_3 FILLER_26_319 ();
 sky130_fd_sc_hd__decap_3 FILLER_26_322 ();
 sky130_fd_sc_hd__decap_3 FILLER_26_325 ();
 sky130_fd_sc_hd__decap_3 FILLER_26_328 ();
 sky130_fd_sc_hd__decap_3 FILLER_26_331 ();
 sky130_fd_sc_hd__fill_1 FILLER_26_334 ();
 sky130_fd_sc_hd__fill_1 FILLER_26_363 ();
 sky130_fd_sc_hd__fill_1 FILLER_26_385 ();
 sky130_fd_sc_hd__decap_3 FILLER_26_61 ();
 sky130_fd_sc_hd__decap_3 FILLER_26_64 ();
 sky130_fd_sc_hd__decap_3 FILLER_26_67 ();
 sky130_fd_sc_hd__fill_1 FILLER_26_85 ();
 sky130_fd_sc_hd__decap_3 FILLER_27_100 ();
 sky130_fd_sc_hd__decap_3 FILLER_27_103 ();
 sky130_fd_sc_hd__decap_3 FILLER_27_106 ();
 sky130_fd_sc_hd__decap_3 FILLER_27_109 ();
 sky130_fd_sc_hd__decap_3 FILLER_27_113 ();
 sky130_fd_sc_hd__decap_3 FILLER_27_116 ();
 sky130_fd_sc_hd__decap_3 FILLER_27_119 ();
 sky130_fd_sc_hd__fill_1 FILLER_27_122 ();
 sky130_fd_sc_hd__fill_2 FILLER_27_125 ();
 sky130_fd_sc_hd__fill_1 FILLER_27_140 ();
 sky130_fd_sc_hd__decap_3 FILLER_27_164 ();
 sky130_fd_sc_hd__fill_1 FILLER_27_167 ();
 sky130_fd_sc_hd__decap_3 FILLER_27_169 ();
 sky130_fd_sc_hd__decap_3 FILLER_27_172 ();
 sky130_fd_sc_hd__fill_1 FILLER_27_175 ();
 sky130_fd_sc_hd__decap_3 FILLER_27_199 ();
 sky130_fd_sc_hd__fill_1 FILLER_27_202 ();
 sky130_fd_sc_hd__decap_3 FILLER_27_246 ();
 sky130_fd_sc_hd__decap_3 FILLER_27_249 ();
 sky130_fd_sc_hd__fill_1 FILLER_27_254 ();
 sky130_fd_sc_hd__fill_2 FILLER_27_278 ();
 sky130_fd_sc_hd__decap_3 FILLER_27_281 ();
 sky130_fd_sc_hd__fill_2 FILLER_27_284 ();
 sky130_fd_sc_hd__decap_3 FILLER_27_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_27_310 ();
 sky130_fd_sc_hd__decap_3 FILLER_27_313 ();
 sky130_fd_sc_hd__decap_3 FILLER_27_316 ();
 sky130_fd_sc_hd__decap_3 FILLER_27_319 ();
 sky130_fd_sc_hd__decap_3 FILLER_27_322 ();
 sky130_fd_sc_hd__decap_3 FILLER_27_325 ();
 sky130_fd_sc_hd__decap_3 FILLER_27_328 ();
 sky130_fd_sc_hd__decap_3 FILLER_27_331 ();
 sky130_fd_sc_hd__fill_2 FILLER_27_334 ();
 sky130_fd_sc_hd__decap_3 FILLER_27_337 ();
 sky130_fd_sc_hd__decap_3 FILLER_27_340 ();
 sky130_fd_sc_hd__decap_3 FILLER_27_343 ();
 sky130_fd_sc_hd__fill_1 FILLER_27_349 ();
 sky130_fd_sc_hd__fill_1 FILLER_27_35 ();
 sky130_fd_sc_hd__fill_2 FILLER_27_376 ();
 sky130_fd_sc_hd__decap_3 FILLER_27_40 ();
 sky130_fd_sc_hd__fill_2 FILLER_27_43 ();
 sky130_fd_sc_hd__fill_1 FILLER_27_59 ();
 sky130_fd_sc_hd__decap_3 FILLER_27_6 ();
 sky130_fd_sc_hd__fill_1 FILLER_27_83 ();
 sky130_fd_sc_hd__fill_1 FILLER_27_9 ();
 sky130_fd_sc_hd__decap_3 FILLER_27_94 ();
 sky130_fd_sc_hd__decap_3 FILLER_27_97 ();
 sky130_fd_sc_hd__decap_3 FILLER_28_111 ();
 sky130_fd_sc_hd__decap_3 FILLER_28_114 ();
 sky130_fd_sc_hd__decap_3 FILLER_28_117 ();
 sky130_fd_sc_hd__decap_3 FILLER_28_120 ();
 sky130_fd_sc_hd__fill_1 FILLER_28_123 ();
 sky130_fd_sc_hd__fill_1 FILLER_28_137 ();
 sky130_fd_sc_hd__fill_1 FILLER_28_141 ();
 sky130_fd_sc_hd__decap_3 FILLER_28_150 ();
 sky130_fd_sc_hd__decap_3 FILLER_28_153 ();
 sky130_fd_sc_hd__decap_3 FILLER_28_156 ();
 sky130_fd_sc_hd__decap_3 FILLER_28_159 ();
 sky130_fd_sc_hd__decap_3 FILLER_28_162 ();
 sky130_fd_sc_hd__decap_3 FILLER_28_165 ();
 sky130_fd_sc_hd__decap_3 FILLER_28_168 ();
 sky130_fd_sc_hd__decap_3 FILLER_28_171 ();
 sky130_fd_sc_hd__decap_3 FILLER_28_174 ();
 sky130_fd_sc_hd__decap_3 FILLER_28_177 ();
 sky130_fd_sc_hd__decap_3 FILLER_28_231 ();
 sky130_fd_sc_hd__decap_3 FILLER_28_234 ();
 sky130_fd_sc_hd__decap_3 FILLER_28_237 ();
 sky130_fd_sc_hd__decap_3 FILLER_28_240 ();
 sky130_fd_sc_hd__decap_3 FILLER_28_243 ();
 sky130_fd_sc_hd__fill_1 FILLER_28_246 ();
 sky130_fd_sc_hd__fill_1 FILLER_28_253 ();
 sky130_fd_sc_hd__fill_1 FILLER_28_289 ();
 sky130_fd_sc_hd__decap_3 FILLER_28_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_28_327 ();
 sky130_fd_sc_hd__decap_3 FILLER_28_335 ();
 sky130_fd_sc_hd__decap_3 FILLER_28_338 ();
 sky130_fd_sc_hd__fill_1 FILLER_28_365 ();
 sky130_fd_sc_hd__fill_1 FILLER_28_6 ();
 sky130_fd_sc_hd__decap_3 FILLER_28_81 ();
 sky130_fd_sc_hd__decap_3 FILLER_28_93 ();
 sky130_fd_sc_hd__decap_3 FILLER_28_96 ();
 sky130_fd_sc_hd__fill_1 FILLER_28_99 ();
 sky130_fd_sc_hd__decap_3 FILLER_29_113 ();
 sky130_fd_sc_hd__decap_3 FILLER_29_116 ();
 sky130_fd_sc_hd__decap_3 FILLER_29_119 ();
 sky130_fd_sc_hd__fill_2 FILLER_29_12 ();
 sky130_fd_sc_hd__fill_2 FILLER_29_122 ();
 sky130_fd_sc_hd__decap_3 FILLER_29_148 ();
 sky130_fd_sc_hd__decap_3 FILLER_29_151 ();
 sky130_fd_sc_hd__decap_3 FILLER_29_154 ();
 sky130_fd_sc_hd__decap_3 FILLER_29_157 ();
 sky130_fd_sc_hd__decap_3 FILLER_29_160 ();
 sky130_fd_sc_hd__decap_3 FILLER_29_163 ();
 sky130_fd_sc_hd__fill_2 FILLER_29_166 ();
 sky130_fd_sc_hd__decap_3 FILLER_29_171 ();
 sky130_fd_sc_hd__decap_3 FILLER_29_174 ();
 sky130_fd_sc_hd__fill_1 FILLER_29_177 ();
 sky130_fd_sc_hd__decap_3 FILLER_29_219 ();
 sky130_fd_sc_hd__fill_2 FILLER_29_222 ();
 sky130_fd_sc_hd__decap_3 FILLER_29_225 ();
 sky130_fd_sc_hd__decap_3 FILLER_29_228 ();
 sky130_fd_sc_hd__decap_3 FILLER_29_231 ();
 sky130_fd_sc_hd__decap_3 FILLER_29_234 ();
 sky130_fd_sc_hd__decap_3 FILLER_29_237 ();
 sky130_fd_sc_hd__decap_3 FILLER_29_240 ();
 sky130_fd_sc_hd__fill_2 FILLER_29_245 ();
 sky130_fd_sc_hd__fill_1 FILLER_29_252 ();
 sky130_fd_sc_hd__fill_2 FILLER_29_278 ();
 sky130_fd_sc_hd__decap_3 FILLER_29_281 ();
 sky130_fd_sc_hd__decap_3 FILLER_29_284 ();
 sky130_fd_sc_hd__decap_3 FILLER_29_287 ();
 sky130_fd_sc_hd__decap_3 FILLER_29_290 ();
 sky130_fd_sc_hd__decap_3 FILLER_29_293 ();
 sky130_fd_sc_hd__decap_3 FILLER_29_296 ();
 sky130_fd_sc_hd__decap_3 FILLER_29_299 ();
 sky130_fd_sc_hd__decap_3 FILLER_29_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_29_302 ();
 sky130_fd_sc_hd__decap_3 FILLER_29_305 ();
 sky130_fd_sc_hd__decap_3 FILLER_29_308 ();
 sky130_fd_sc_hd__fill_2 FILLER_29_311 ();
 sky130_fd_sc_hd__decap_3 FILLER_29_337 ();
 sky130_fd_sc_hd__fill_2 FILLER_29_340 ();
 sky130_fd_sc_hd__fill_1 FILLER_29_37 ();
 sky130_fd_sc_hd__decap_3 FILLER_29_6 ();
 sky130_fd_sc_hd__decap_3 FILLER_29_81 ();
 sky130_fd_sc_hd__decap_3 FILLER_29_84 ();
 sky130_fd_sc_hd__fill_2 FILLER_29_87 ();
 sky130_fd_sc_hd__decap_3 FILLER_29_9 ();
 sky130_fd_sc_hd__fill_2 FILLER_2_100 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_12 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_131 ();
 sky130_fd_sc_hd__fill_2 FILLER_2_141 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_15 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_176 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_179 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_18 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_182 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_185 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_188 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_191 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_21 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_225 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_237 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_24 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_248 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_251 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_259 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_262 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_265 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_268 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_27 ();
 sky130_fd_sc_hd__fill_2 FILLER_2_271 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_29 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_2_306 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_309 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_312 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_315 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_318 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_32 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_321 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_324 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_327 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_330 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_333 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_336 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_339 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_342 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_345 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_348 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_35 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_351 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_354 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_357 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_360 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_363 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_365 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_368 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_371 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_374 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_377 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_38 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_380 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_383 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_41 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_44 ();
 sky130_fd_sc_hd__fill_2 FILLER_2_47 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_6 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_9 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_94 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_97 ();
 sky130_fd_sc_hd__decap_3 FILLER_30_108 ();
 sky130_fd_sc_hd__decap_3 FILLER_30_111 ();
 sky130_fd_sc_hd__fill_1 FILLER_30_114 ();
 sky130_fd_sc_hd__decap_3 FILLER_30_12 ();
 sky130_fd_sc_hd__fill_1 FILLER_30_141 ();
 sky130_fd_sc_hd__fill_2 FILLER_30_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_30_167 ();
 sky130_fd_sc_hd__fill_1 FILLER_30_195 ();
 sky130_fd_sc_hd__fill_2 FILLER_30_199 ();
 sky130_fd_sc_hd__decap_3 FILLER_30_226 ();
 sky130_fd_sc_hd__decap_3 FILLER_30_229 ();
 sky130_fd_sc_hd__decap_3 FILLER_30_232 ();
 sky130_fd_sc_hd__decap_3 FILLER_30_235 ();
 sky130_fd_sc_hd__fill_1 FILLER_30_238 ();
 sky130_fd_sc_hd__fill_1 FILLER_30_244 ();
 sky130_fd_sc_hd__fill_1 FILLER_30_255 ();
 sky130_fd_sc_hd__decap_3 FILLER_30_284 ();
 sky130_fd_sc_hd__decap_3 FILLER_30_287 ();
 sky130_fd_sc_hd__decap_3 FILLER_30_290 ();
 sky130_fd_sc_hd__decap_3 FILLER_30_293 ();
 sky130_fd_sc_hd__decap_3 FILLER_30_296 ();
 sky130_fd_sc_hd__decap_3 FILLER_30_299 ();
 sky130_fd_sc_hd__decap_3 FILLER_30_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_30_302 ();
 sky130_fd_sc_hd__decap_3 FILLER_30_305 ();
 sky130_fd_sc_hd__decap_3 FILLER_30_309 ();
 sky130_fd_sc_hd__decap_3 FILLER_30_312 ();
 sky130_fd_sc_hd__decap_3 FILLER_30_315 ();
 sky130_fd_sc_hd__decap_3 FILLER_30_318 ();
 sky130_fd_sc_hd__decap_3 FILLER_30_330 ();
 sky130_fd_sc_hd__decap_3 FILLER_30_333 ();
 sky130_fd_sc_hd__decap_3 FILLER_30_336 ();
 sky130_fd_sc_hd__decap_3 FILLER_30_339 ();
 sky130_fd_sc_hd__decap_3 FILLER_30_342 ();
 sky130_fd_sc_hd__decap_3 FILLER_30_351 ();
 sky130_fd_sc_hd__fill_1 FILLER_30_354 ();
 sky130_fd_sc_hd__decap_3 FILLER_30_372 ();
 sky130_fd_sc_hd__decap_3 FILLER_30_375 ();
 sky130_fd_sc_hd__decap_3 FILLER_30_378 ();
 sky130_fd_sc_hd__decap_3 FILLER_30_381 ();
 sky130_fd_sc_hd__fill_2 FILLER_30_384 ();
 sky130_fd_sc_hd__fill_1 FILLER_30_48 ();
 sky130_fd_sc_hd__decap_3 FILLER_30_6 ();
 sky130_fd_sc_hd__fill_2 FILLER_30_80 ();
 sky130_fd_sc_hd__decap_3 FILLER_30_9 ();
 sky130_fd_sc_hd__fill_2 FILLER_31_110 ();
 sky130_fd_sc_hd__fill_2 FILLER_31_113 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_12 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_149 ();
 sky130_fd_sc_hd__fill_1 FILLER_31_15 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_152 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_155 ();
 sky130_fd_sc_hd__fill_1 FILLER_31_158 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_225 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_228 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_231 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_234 ();
 sky130_fd_sc_hd__fill_2 FILLER_31_237 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_273 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_276 ();
 sky130_fd_sc_hd__fill_1 FILLER_31_279 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_281 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_284 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_287 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_290 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_293 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_296 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_299 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_302 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_305 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_308 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_311 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_314 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_317 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_320 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_323 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_326 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_329 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_332 ();
 sky130_fd_sc_hd__fill_1 FILLER_31_335 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_337 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_340 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_343 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_346 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_349 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_352 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_366 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_369 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_372 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_375 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_378 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_381 ();
 sky130_fd_sc_hd__fill_2 FILLER_31_384 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_47 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_50 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_53 ();
 sky130_fd_sc_hd__fill_1 FILLER_31_59 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_6 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_9 ();
 sky130_fd_sc_hd__decap_3 FILLER_32_110 ();
 sky130_fd_sc_hd__decap_3 FILLER_32_113 ();
 sky130_fd_sc_hd__decap_3 FILLER_32_116 ();
 sky130_fd_sc_hd__fill_1 FILLER_32_119 ();
 sky130_fd_sc_hd__decap_3 FILLER_32_12 ();
 sky130_fd_sc_hd__fill_1 FILLER_32_141 ();
 sky130_fd_sc_hd__fill_1 FILLER_32_146 ();
 sky130_fd_sc_hd__decap_3 FILLER_32_15 ();
 sky130_fd_sc_hd__fill_2 FILLER_32_18 ();
 sky130_fd_sc_hd__fill_2 FILLER_32_194 ();
 sky130_fd_sc_hd__decap_3 FILLER_32_197 ();
 sky130_fd_sc_hd__fill_1 FILLER_32_200 ();
 sky130_fd_sc_hd__decap_3 FILLER_32_203 ();
 sky130_fd_sc_hd__decap_3 FILLER_32_206 ();
 sky130_fd_sc_hd__fill_1 FILLER_32_209 ();
 sky130_fd_sc_hd__decap_3 FILLER_32_221 ();
 sky130_fd_sc_hd__decap_3 FILLER_32_224 ();
 sky130_fd_sc_hd__fill_1 FILLER_32_227 ();
 sky130_fd_sc_hd__decap_3 FILLER_32_236 ();
 sky130_fd_sc_hd__decap_3 FILLER_32_239 ();
 sky130_fd_sc_hd__decap_3 FILLER_32_242 ();
 sky130_fd_sc_hd__fill_1 FILLER_32_245 ();
 sky130_fd_sc_hd__decap_3 FILLER_32_277 ();
 sky130_fd_sc_hd__decap_3 FILLER_32_280 ();
 sky130_fd_sc_hd__fill_1 FILLER_32_283 ();
 sky130_fd_sc_hd__decap_3 FILLER_32_286 ();
 sky130_fd_sc_hd__decap_3 FILLER_32_289 ();
 sky130_fd_sc_hd__fill_1 FILLER_32_29 ();
 sky130_fd_sc_hd__decap_3 FILLER_32_292 ();
 sky130_fd_sc_hd__decap_3 FILLER_32_295 ();
 sky130_fd_sc_hd__decap_3 FILLER_32_298 ();
 sky130_fd_sc_hd__decap_3 FILLER_32_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_32_301 ();
 sky130_fd_sc_hd__decap_3 FILLER_32_304 ();
 sky130_fd_sc_hd__fill_1 FILLER_32_307 ();
 sky130_fd_sc_hd__decap_3 FILLER_32_309 ();
 sky130_fd_sc_hd__decap_3 FILLER_32_312 ();
 sky130_fd_sc_hd__decap_3 FILLER_32_315 ();
 sky130_fd_sc_hd__decap_3 FILLER_32_318 ();
 sky130_fd_sc_hd__decap_3 FILLER_32_321 ();
 sky130_fd_sc_hd__decap_3 FILLER_32_324 ();
 sky130_fd_sc_hd__decap_3 FILLER_32_327 ();
 sky130_fd_sc_hd__decap_3 FILLER_32_330 ();
 sky130_fd_sc_hd__decap_3 FILLER_32_333 ();
 sky130_fd_sc_hd__decap_3 FILLER_32_336 ();
 sky130_fd_sc_hd__decap_3 FILLER_32_339 ();
 sky130_fd_sc_hd__decap_3 FILLER_32_342 ();
 sky130_fd_sc_hd__decap_3 FILLER_32_345 ();
 sky130_fd_sc_hd__decap_3 FILLER_32_348 ();
 sky130_fd_sc_hd__decap_3 FILLER_32_351 ();
 sky130_fd_sc_hd__decap_3 FILLER_32_354 ();
 sky130_fd_sc_hd__decap_3 FILLER_32_357 ();
 sky130_fd_sc_hd__decap_3 FILLER_32_360 ();
 sky130_fd_sc_hd__fill_1 FILLER_32_363 ();
 sky130_fd_sc_hd__decap_3 FILLER_32_365 ();
 sky130_fd_sc_hd__decap_3 FILLER_32_368 ();
 sky130_fd_sc_hd__decap_3 FILLER_32_371 ();
 sky130_fd_sc_hd__decap_3 FILLER_32_374 ();
 sky130_fd_sc_hd__decap_3 FILLER_32_377 ();
 sky130_fd_sc_hd__decap_3 FILLER_32_380 ();
 sky130_fd_sc_hd__decap_3 FILLER_32_383 ();
 sky130_fd_sc_hd__fill_2 FILLER_32_56 ();
 sky130_fd_sc_hd__decap_3 FILLER_32_6 ();
 sky130_fd_sc_hd__decap_3 FILLER_32_68 ();
 sky130_fd_sc_hd__decap_3 FILLER_32_71 ();
 sky130_fd_sc_hd__fill_1 FILLER_32_74 ();
 sky130_fd_sc_hd__fill_2 FILLER_32_85 ();
 sky130_fd_sc_hd__decap_3 FILLER_32_89 ();
 sky130_fd_sc_hd__decap_3 FILLER_32_9 ();
 sky130_fd_sc_hd__fill_1 FILLER_33_102 ();
 sky130_fd_sc_hd__decap_3 FILLER_33_105 ();
 sky130_fd_sc_hd__decap_3 FILLER_33_108 ();
 sky130_fd_sc_hd__fill_1 FILLER_33_111 ();
 sky130_fd_sc_hd__fill_1 FILLER_33_113 ();
 sky130_fd_sc_hd__decap_3 FILLER_33_12 ();
 sky130_fd_sc_hd__decap_3 FILLER_33_122 ();
 sky130_fd_sc_hd__fill_2 FILLER_33_125 ();
 sky130_fd_sc_hd__decap_3 FILLER_33_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_33_169 ();
 sky130_fd_sc_hd__decap_3 FILLER_33_200 ();
 sky130_fd_sc_hd__decap_3 FILLER_33_203 ();
 sky130_fd_sc_hd__decap_3 FILLER_33_206 ();
 sky130_fd_sc_hd__decap_3 FILLER_33_209 ();
 sky130_fd_sc_hd__decap_3 FILLER_33_212 ();
 sky130_fd_sc_hd__decap_3 FILLER_33_215 ();
 sky130_fd_sc_hd__decap_3 FILLER_33_218 ();
 sky130_fd_sc_hd__decap_3 FILLER_33_221 ();
 sky130_fd_sc_hd__decap_3 FILLER_33_233 ();
 sky130_fd_sc_hd__decap_3 FILLER_33_236 ();
 sky130_fd_sc_hd__decap_3 FILLER_33_244 ();
 sky130_fd_sc_hd__decap_3 FILLER_33_247 ();
 sky130_fd_sc_hd__decap_3 FILLER_33_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_33_304 ();
 sky130_fd_sc_hd__decap_3 FILLER_33_307 ();
 sky130_fd_sc_hd__decap_3 FILLER_33_310 ();
 sky130_fd_sc_hd__decap_3 FILLER_33_313 ();
 sky130_fd_sc_hd__decap_3 FILLER_33_316 ();
 sky130_fd_sc_hd__decap_3 FILLER_33_319 ();
 sky130_fd_sc_hd__decap_3 FILLER_33_322 ();
 sky130_fd_sc_hd__decap_3 FILLER_33_325 ();
 sky130_fd_sc_hd__decap_3 FILLER_33_328 ();
 sky130_fd_sc_hd__decap_3 FILLER_33_331 ();
 sky130_fd_sc_hd__fill_2 FILLER_33_334 ();
 sky130_fd_sc_hd__decap_3 FILLER_33_337 ();
 sky130_fd_sc_hd__decap_3 FILLER_33_340 ();
 sky130_fd_sc_hd__decap_3 FILLER_33_343 ();
 sky130_fd_sc_hd__decap_3 FILLER_33_346 ();
 sky130_fd_sc_hd__decap_3 FILLER_33_349 ();
 sky130_fd_sc_hd__decap_3 FILLER_33_352 ();
 sky130_fd_sc_hd__decap_3 FILLER_33_355 ();
 sky130_fd_sc_hd__decap_3 FILLER_33_358 ();
 sky130_fd_sc_hd__decap_3 FILLER_33_361 ();
 sky130_fd_sc_hd__decap_3 FILLER_33_364 ();
 sky130_fd_sc_hd__decap_3 FILLER_33_367 ();
 sky130_fd_sc_hd__decap_3 FILLER_33_370 ();
 sky130_fd_sc_hd__decap_3 FILLER_33_373 ();
 sky130_fd_sc_hd__decap_3 FILLER_33_376 ();
 sky130_fd_sc_hd__decap_3 FILLER_33_379 ();
 sky130_fd_sc_hd__decap_3 FILLER_33_382 ();
 sky130_fd_sc_hd__fill_1 FILLER_33_385 ();
 sky130_fd_sc_hd__decap_3 FILLER_33_52 ();
 sky130_fd_sc_hd__fill_1 FILLER_33_55 ();
 sky130_fd_sc_hd__decap_3 FILLER_33_57 ();
 sky130_fd_sc_hd__decap_3 FILLER_33_6 ();
 sky130_fd_sc_hd__decap_3 FILLER_33_60 ();
 sky130_fd_sc_hd__decap_3 FILLER_33_86 ();
 sky130_fd_sc_hd__fill_2 FILLER_33_89 ();
 sky130_fd_sc_hd__decap_3 FILLER_33_9 ();
 sky130_fd_sc_hd__decap_3 FILLER_33_99 ();
 sky130_fd_sc_hd__decap_3 FILLER_34_11 ();
 sky130_fd_sc_hd__decap_3 FILLER_34_126 ();
 sky130_fd_sc_hd__decap_3 FILLER_34_129 ();
 sky130_fd_sc_hd__decap_3 FILLER_34_132 ();
 sky130_fd_sc_hd__decap_3 FILLER_34_135 ();
 sky130_fd_sc_hd__fill_2 FILLER_34_138 ();
 sky130_fd_sc_hd__decap_3 FILLER_34_14 ();
 sky130_fd_sc_hd__fill_1 FILLER_34_149 ();
 sky130_fd_sc_hd__decap_3 FILLER_34_17 ();
 sky130_fd_sc_hd__fill_2 FILLER_34_181 ();
 sky130_fd_sc_hd__decap_3 FILLER_34_191 ();
 sky130_fd_sc_hd__fill_2 FILLER_34_194 ();
 sky130_fd_sc_hd__decap_3 FILLER_34_197 ();
 sky130_fd_sc_hd__decap_3 FILLER_34_20 ();
 sky130_fd_sc_hd__decap_3 FILLER_34_200 ();
 sky130_fd_sc_hd__decap_3 FILLER_34_203 ();
 sky130_fd_sc_hd__decap_3 FILLER_34_23 ();
 sky130_fd_sc_hd__fill_1 FILLER_34_251 ();
 sky130_fd_sc_hd__fill_2 FILLER_34_26 ();
 sky130_fd_sc_hd__decap_3 FILLER_34_267 ();
 sky130_fd_sc_hd__decap_3 FILLER_34_270 ();
 sky130_fd_sc_hd__decap_3 FILLER_34_273 ();
 sky130_fd_sc_hd__fill_2 FILLER_34_276 ();
 sky130_fd_sc_hd__fill_1 FILLER_34_307 ();
 sky130_fd_sc_hd__decap_3 FILLER_34_317 ();
 sky130_fd_sc_hd__decap_3 FILLER_34_320 ();
 sky130_fd_sc_hd__decap_3 FILLER_34_323 ();
 sky130_fd_sc_hd__decap_3 FILLER_34_326 ();
 sky130_fd_sc_hd__decap_3 FILLER_34_329 ();
 sky130_fd_sc_hd__decap_3 FILLER_34_332 ();
 sky130_fd_sc_hd__decap_3 FILLER_34_335 ();
 sky130_fd_sc_hd__decap_3 FILLER_34_338 ();
 sky130_fd_sc_hd__decap_3 FILLER_34_341 ();
 sky130_fd_sc_hd__decap_3 FILLER_34_344 ();
 sky130_fd_sc_hd__decap_3 FILLER_34_347 ();
 sky130_fd_sc_hd__decap_3 FILLER_34_350 ();
 sky130_fd_sc_hd__decap_3 FILLER_34_353 ();
 sky130_fd_sc_hd__decap_3 FILLER_34_356 ();
 sky130_fd_sc_hd__decap_3 FILLER_34_359 ();
 sky130_fd_sc_hd__fill_2 FILLER_34_362 ();
 sky130_fd_sc_hd__decap_3 FILLER_34_365 ();
 sky130_fd_sc_hd__decap_3 FILLER_34_368 ();
 sky130_fd_sc_hd__decap_3 FILLER_34_371 ();
 sky130_fd_sc_hd__decap_3 FILLER_34_374 ();
 sky130_fd_sc_hd__decap_3 FILLER_34_377 ();
 sky130_fd_sc_hd__decap_3 FILLER_34_380 ();
 sky130_fd_sc_hd__decap_3 FILLER_34_383 ();
 sky130_fd_sc_hd__decap_3 FILLER_34_5 ();
 sky130_fd_sc_hd__fill_2 FILLER_34_58 ();
 sky130_fd_sc_hd__decap_3 FILLER_34_8 ();
 sky130_fd_sc_hd__fill_1 FILLER_34_83 ();
 sky130_fd_sc_hd__fill_2 FILLER_34_93 ();
 sky130_fd_sc_hd__fill_1 FILLER_35_111 ();
 sky130_fd_sc_hd__fill_1 FILLER_35_137 ();
 sky130_fd_sc_hd__decap_3 FILLER_35_14 ();
 sky130_fd_sc_hd__decap_3 FILLER_35_163 ();
 sky130_fd_sc_hd__fill_2 FILLER_35_166 ();
 sky130_fd_sc_hd__fill_2 FILLER_35_17 ();
 sky130_fd_sc_hd__fill_1 FILLER_35_182 ();
 sky130_fd_sc_hd__decap_3 FILLER_35_196 ();
 sky130_fd_sc_hd__decap_3 FILLER_35_199 ();
 sky130_fd_sc_hd__decap_3 FILLER_35_202 ();
 sky130_fd_sc_hd__decap_3 FILLER_35_205 ();
 sky130_fd_sc_hd__decap_3 FILLER_35_234 ();
 sky130_fd_sc_hd__fill_1 FILLER_35_237 ();
 sky130_fd_sc_hd__decap_3 FILLER_35_270 ();
 sky130_fd_sc_hd__decap_3 FILLER_35_273 ();
 sky130_fd_sc_hd__fill_2 FILLER_35_276 ();
 sky130_fd_sc_hd__decap_3 FILLER_35_281 ();
 sky130_fd_sc_hd__decap_3 FILLER_35_284 ();
 sky130_fd_sc_hd__decap_3 FILLER_35_287 ();
 sky130_fd_sc_hd__decap_3 FILLER_35_290 ();
 sky130_fd_sc_hd__decap_3 FILLER_35_293 ();
 sky130_fd_sc_hd__decap_3 FILLER_35_296 ();
 sky130_fd_sc_hd__fill_1 FILLER_35_299 ();
 sky130_fd_sc_hd__decap_3 FILLER_35_323 ();
 sky130_fd_sc_hd__decap_3 FILLER_35_326 ();
 sky130_fd_sc_hd__decap_3 FILLER_35_329 ();
 sky130_fd_sc_hd__decap_3 FILLER_35_332 ();
 sky130_fd_sc_hd__fill_1 FILLER_35_335 ();
 sky130_fd_sc_hd__decap_3 FILLER_35_337 ();
 sky130_fd_sc_hd__decap_3 FILLER_35_340 ();
 sky130_fd_sc_hd__decap_3 FILLER_35_343 ();
 sky130_fd_sc_hd__decap_3 FILLER_35_346 ();
 sky130_fd_sc_hd__decap_3 FILLER_35_349 ();
 sky130_fd_sc_hd__decap_3 FILLER_35_352 ();
 sky130_fd_sc_hd__decap_3 FILLER_35_355 ();
 sky130_fd_sc_hd__decap_3 FILLER_35_358 ();
 sky130_fd_sc_hd__decap_3 FILLER_35_361 ();
 sky130_fd_sc_hd__decap_3 FILLER_35_364 ();
 sky130_fd_sc_hd__decap_3 FILLER_35_367 ();
 sky130_fd_sc_hd__decap_3 FILLER_35_370 ();
 sky130_fd_sc_hd__decap_3 FILLER_35_373 ();
 sky130_fd_sc_hd__decap_3 FILLER_35_376 ();
 sky130_fd_sc_hd__decap_3 FILLER_35_379 ();
 sky130_fd_sc_hd__decap_3 FILLER_35_382 ();
 sky130_fd_sc_hd__fill_1 FILLER_35_385 ();
 sky130_fd_sc_hd__fill_1 FILLER_35_55 ();
 sky130_fd_sc_hd__decap_3 FILLER_35_57 ();
 sky130_fd_sc_hd__decap_3 FILLER_35_60 ();
 sky130_fd_sc_hd__fill_2 FILLER_35_63 ();
 sky130_fd_sc_hd__decap_3 FILLER_35_88 ();
 sky130_fd_sc_hd__decap_3 FILLER_35_91 ();
 sky130_fd_sc_hd__fill_1 FILLER_35_94 ();
 sky130_fd_sc_hd__fill_1 FILLER_36_139 ();
 sky130_fd_sc_hd__fill_1 FILLER_36_141 ();
 sky130_fd_sc_hd__decap_3 FILLER_36_205 ();
 sky130_fd_sc_hd__decap_3 FILLER_36_208 ();
 sky130_fd_sc_hd__fill_1 FILLER_36_211 ();
 sky130_fd_sc_hd__fill_2 FILLER_36_250 ();
 sky130_fd_sc_hd__decap_3 FILLER_36_253 ();
 sky130_fd_sc_hd__decap_3 FILLER_36_264 ();
 sky130_fd_sc_hd__fill_1 FILLER_36_267 ();
 sky130_fd_sc_hd__decap_3 FILLER_36_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_36_307 ();
 sky130_fd_sc_hd__decap_3 FILLER_36_309 ();
 sky130_fd_sc_hd__fill_1 FILLER_36_31 ();
 sky130_fd_sc_hd__decap_3 FILLER_36_312 ();
 sky130_fd_sc_hd__decap_3 FILLER_36_315 ();
 sky130_fd_sc_hd__decap_3 FILLER_36_318 ();
 sky130_fd_sc_hd__decap_3 FILLER_36_321 ();
 sky130_fd_sc_hd__decap_3 FILLER_36_324 ();
 sky130_fd_sc_hd__decap_3 FILLER_36_327 ();
 sky130_fd_sc_hd__decap_3 FILLER_36_330 ();
 sky130_fd_sc_hd__decap_3 FILLER_36_333 ();
 sky130_fd_sc_hd__decap_3 FILLER_36_336 ();
 sky130_fd_sc_hd__decap_3 FILLER_36_339 ();
 sky130_fd_sc_hd__decap_3 FILLER_36_342 ();
 sky130_fd_sc_hd__decap_3 FILLER_36_345 ();
 sky130_fd_sc_hd__decap_3 FILLER_36_348 ();
 sky130_fd_sc_hd__decap_3 FILLER_36_351 ();
 sky130_fd_sc_hd__decap_3 FILLER_36_354 ();
 sky130_fd_sc_hd__decap_3 FILLER_36_357 ();
 sky130_fd_sc_hd__decap_3 FILLER_36_360 ();
 sky130_fd_sc_hd__fill_1 FILLER_36_363 ();
 sky130_fd_sc_hd__decap_3 FILLER_36_365 ();
 sky130_fd_sc_hd__decap_3 FILLER_36_368 ();
 sky130_fd_sc_hd__decap_3 FILLER_36_371 ();
 sky130_fd_sc_hd__decap_3 FILLER_36_374 ();
 sky130_fd_sc_hd__decap_3 FILLER_36_377 ();
 sky130_fd_sc_hd__decap_3 FILLER_36_380 ();
 sky130_fd_sc_hd__decap_3 FILLER_36_383 ();
 sky130_fd_sc_hd__decap_3 FILLER_36_43 ();
 sky130_fd_sc_hd__fill_2 FILLER_36_46 ();
 sky130_fd_sc_hd__decap_3 FILLER_36_56 ();
 sky130_fd_sc_hd__fill_2 FILLER_36_59 ();
 sky130_fd_sc_hd__fill_1 FILLER_36_6 ();
 sky130_fd_sc_hd__fill_1 FILLER_36_94 ();
 sky130_fd_sc_hd__decap_3 FILLER_37_11 ();
 sky130_fd_sc_hd__decap_3 FILLER_37_14 ();
 sky130_fd_sc_hd__decap_3 FILLER_37_155 ();
 sky130_fd_sc_hd__fill_2 FILLER_37_158 ();
 sky130_fd_sc_hd__fill_1 FILLER_37_169 ();
 sky130_fd_sc_hd__fill_2 FILLER_37_17 ();
 sky130_fd_sc_hd__decap_3 FILLER_37_192 ();
 sky130_fd_sc_hd__decap_3 FILLER_37_195 ();
 sky130_fd_sc_hd__decap_3 FILLER_37_198 ();
 sky130_fd_sc_hd__decap_3 FILLER_37_201 ();
 sky130_fd_sc_hd__decap_3 FILLER_37_204 ();
 sky130_fd_sc_hd__decap_3 FILLER_37_207 ();
 sky130_fd_sc_hd__decap_3 FILLER_37_210 ();
 sky130_fd_sc_hd__decap_3 FILLER_37_213 ();
 sky130_fd_sc_hd__fill_1 FILLER_37_216 ();
 sky130_fd_sc_hd__decap_3 FILLER_37_254 ();
 sky130_fd_sc_hd__decap_3 FILLER_37_257 ();
 sky130_fd_sc_hd__decap_3 FILLER_37_260 ();
 sky130_fd_sc_hd__decap_3 FILLER_37_263 ();
 sky130_fd_sc_hd__decap_3 FILLER_37_266 ();
 sky130_fd_sc_hd__decap_3 FILLER_37_269 ();
 sky130_fd_sc_hd__decap_3 FILLER_37_272 ();
 sky130_fd_sc_hd__decap_3 FILLER_37_275 ();
 sky130_fd_sc_hd__decap_3 FILLER_37_302 ();
 sky130_fd_sc_hd__decap_3 FILLER_37_305 ();
 sky130_fd_sc_hd__decap_3 FILLER_37_308 ();
 sky130_fd_sc_hd__decap_3 FILLER_37_311 ();
 sky130_fd_sc_hd__decap_3 FILLER_37_314 ();
 sky130_fd_sc_hd__decap_3 FILLER_37_317 ();
 sky130_fd_sc_hd__decap_3 FILLER_37_320 ();
 sky130_fd_sc_hd__decap_3 FILLER_37_323 ();
 sky130_fd_sc_hd__decap_3 FILLER_37_326 ();
 sky130_fd_sc_hd__decap_3 FILLER_37_329 ();
 sky130_fd_sc_hd__decap_3 FILLER_37_332 ();
 sky130_fd_sc_hd__fill_1 FILLER_37_335 ();
 sky130_fd_sc_hd__decap_3 FILLER_37_337 ();
 sky130_fd_sc_hd__decap_3 FILLER_37_340 ();
 sky130_fd_sc_hd__decap_3 FILLER_37_343 ();
 sky130_fd_sc_hd__decap_3 FILLER_37_346 ();
 sky130_fd_sc_hd__decap_3 FILLER_37_349 ();
 sky130_fd_sc_hd__decap_3 FILLER_37_352 ();
 sky130_fd_sc_hd__decap_3 FILLER_37_355 ();
 sky130_fd_sc_hd__decap_3 FILLER_37_358 ();
 sky130_fd_sc_hd__decap_3 FILLER_37_361 ();
 sky130_fd_sc_hd__decap_3 FILLER_37_364 ();
 sky130_fd_sc_hd__decap_3 FILLER_37_367 ();
 sky130_fd_sc_hd__decap_3 FILLER_37_370 ();
 sky130_fd_sc_hd__decap_3 FILLER_37_373 ();
 sky130_fd_sc_hd__decap_3 FILLER_37_376 ();
 sky130_fd_sc_hd__decap_3 FILLER_37_379 ();
 sky130_fd_sc_hd__decap_3 FILLER_37_382 ();
 sky130_fd_sc_hd__fill_1 FILLER_37_385 ();
 sky130_fd_sc_hd__decap_3 FILLER_37_5 ();
 sky130_fd_sc_hd__decap_3 FILLER_37_50 ();
 sky130_fd_sc_hd__decap_3 FILLER_37_53 ();
 sky130_fd_sc_hd__decap_3 FILLER_37_57 ();
 sky130_fd_sc_hd__decap_3 FILLER_37_60 ();
 sky130_fd_sc_hd__decap_3 FILLER_37_63 ();
 sky130_fd_sc_hd__fill_2 FILLER_37_66 ();
 sky130_fd_sc_hd__decap_3 FILLER_37_8 ();
 sky130_fd_sc_hd__decap_3 FILLER_37_85 ();
 sky130_fd_sc_hd__decap_3 FILLER_38_11 ();
 sky130_fd_sc_hd__decap_3 FILLER_38_113 ();
 sky130_fd_sc_hd__decap_3 FILLER_38_126 ();
 sky130_fd_sc_hd__decap_3 FILLER_38_129 ();
 sky130_fd_sc_hd__decap_3 FILLER_38_134 ();
 sky130_fd_sc_hd__decap_3 FILLER_38_137 ();
 sky130_fd_sc_hd__decap_3 FILLER_38_14 ();
 sky130_fd_sc_hd__fill_1 FILLER_38_141 ();
 sky130_fd_sc_hd__decap_3 FILLER_38_158 ();
 sky130_fd_sc_hd__decap_3 FILLER_38_161 ();
 sky130_fd_sc_hd__decap_3 FILLER_38_164 ();
 sky130_fd_sc_hd__fill_1 FILLER_38_167 ();
 sky130_fd_sc_hd__decap_3 FILLER_38_169 ();
 sky130_fd_sc_hd__decap_3 FILLER_38_17 ();
 sky130_fd_sc_hd__fill_1 FILLER_38_172 ();
 sky130_fd_sc_hd__decap_3 FILLER_38_175 ();
 sky130_fd_sc_hd__decap_3 FILLER_38_178 ();
 sky130_fd_sc_hd__decap_3 FILLER_38_181 ();
 sky130_fd_sc_hd__decap_3 FILLER_38_184 ();
 sky130_fd_sc_hd__decap_3 FILLER_38_187 ();
 sky130_fd_sc_hd__decap_3 FILLER_38_190 ();
 sky130_fd_sc_hd__decap_3 FILLER_38_193 ();
 sky130_fd_sc_hd__decap_3 FILLER_38_205 ();
 sky130_fd_sc_hd__decap_3 FILLER_38_208 ();
 sky130_fd_sc_hd__decap_3 FILLER_38_211 ();
 sky130_fd_sc_hd__decap_3 FILLER_38_214 ();
 sky130_fd_sc_hd__decap_3 FILLER_38_217 ();
 sky130_fd_sc_hd__decap_3 FILLER_38_220 ();
 sky130_fd_sc_hd__fill_1 FILLER_38_223 ();
 sky130_fd_sc_hd__fill_1 FILLER_38_225 ();
 sky130_fd_sc_hd__fill_1 FILLER_38_251 ();
 sky130_fd_sc_hd__decap_3 FILLER_38_253 ();
 sky130_fd_sc_hd__decap_3 FILLER_38_256 ();
 sky130_fd_sc_hd__decap_3 FILLER_38_267 ();
 sky130_fd_sc_hd__decap_3 FILLER_38_270 ();
 sky130_fd_sc_hd__decap_3 FILLER_38_273 ();
 sky130_fd_sc_hd__decap_3 FILLER_38_276 ();
 sky130_fd_sc_hd__fill_1 FILLER_38_279 ();
 sky130_fd_sc_hd__fill_2 FILLER_38_281 ();
 sky130_fd_sc_hd__decap_3 FILLER_38_303 ();
 sky130_fd_sc_hd__fill_2 FILLER_38_306 ();
 sky130_fd_sc_hd__decap_3 FILLER_38_309 ();
 sky130_fd_sc_hd__decap_3 FILLER_38_312 ();
 sky130_fd_sc_hd__decap_3 FILLER_38_315 ();
 sky130_fd_sc_hd__decap_3 FILLER_38_318 ();
 sky130_fd_sc_hd__decap_3 FILLER_38_321 ();
 sky130_fd_sc_hd__decap_3 FILLER_38_324 ();
 sky130_fd_sc_hd__decap_3 FILLER_38_327 ();
 sky130_fd_sc_hd__decap_3 FILLER_38_330 ();
 sky130_fd_sc_hd__decap_3 FILLER_38_333 ();
 sky130_fd_sc_hd__decap_3 FILLER_38_337 ();
 sky130_fd_sc_hd__decap_3 FILLER_38_340 ();
 sky130_fd_sc_hd__decap_3 FILLER_38_343 ();
 sky130_fd_sc_hd__decap_3 FILLER_38_346 ();
 sky130_fd_sc_hd__decap_3 FILLER_38_349 ();
 sky130_fd_sc_hd__decap_3 FILLER_38_352 ();
 sky130_fd_sc_hd__decap_3 FILLER_38_355 ();
 sky130_fd_sc_hd__decap_3 FILLER_38_358 ();
 sky130_fd_sc_hd__decap_3 FILLER_38_361 ();
 sky130_fd_sc_hd__decap_3 FILLER_38_365 ();
 sky130_fd_sc_hd__decap_3 FILLER_38_368 ();
 sky130_fd_sc_hd__fill_2 FILLER_38_37 ();
 sky130_fd_sc_hd__decap_3 FILLER_38_371 ();
 sky130_fd_sc_hd__decap_3 FILLER_38_374 ();
 sky130_fd_sc_hd__decap_3 FILLER_38_377 ();
 sky130_fd_sc_hd__decap_3 FILLER_38_380 ();
 sky130_fd_sc_hd__decap_3 FILLER_38_383 ();
 sky130_fd_sc_hd__decap_3 FILLER_38_47 ();
 sky130_fd_sc_hd__decap_3 FILLER_38_50 ();
 sky130_fd_sc_hd__decap_3 FILLER_38_53 ();
 sky130_fd_sc_hd__decap_3 FILLER_38_57 ();
 sky130_fd_sc_hd__decap_3 FILLER_38_60 ();
 sky130_fd_sc_hd__decap_3 FILLER_38_63 ();
 sky130_fd_sc_hd__decap_3 FILLER_38_66 ();
 sky130_fd_sc_hd__decap_3 FILLER_38_69 ();
 sky130_fd_sc_hd__decap_3 FILLER_38_72 ();
 sky130_fd_sc_hd__fill_1 FILLER_38_75 ();
 sky130_fd_sc_hd__decap_3 FILLER_38_93 ();
 sky130_fd_sc_hd__decap_3 FILLER_38_96 ();
 sky130_fd_sc_hd__decap_3 FILLER_38_99 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_102 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_105 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_108 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_111 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_113 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_12 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_147 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_15 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_150 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_153 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_171 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_174 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_177 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_18 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_180 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_183 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_21 ();
 sky130_fd_sc_hd__fill_2 FILLER_3_222 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_225 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_228 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_24 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_262 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_265 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_268 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_271 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_274 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_277 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_298 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_301 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_304 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_307 ();
 sky130_fd_sc_hd__fill_2 FILLER_3_310 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_335 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_337 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_340 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_343 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_346 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_349 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_352 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_355 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_358 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_361 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_364 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_367 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_370 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_373 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_376 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_379 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_382 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_385 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_50 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_53 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_57 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_6 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_9 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_99 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_102 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_105 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_108 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_111 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_114 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_117 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_12 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_149 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_15 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_165 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_168 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_171 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_174 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_177 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_18 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_180 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_183 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_186 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_197 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_21 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_216 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_219 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_222 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_225 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_228 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_231 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_234 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_237 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_24 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_251 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_253 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_256 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_259 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_262 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_265 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_27 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_278 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_287 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_29 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_294 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_297 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_300 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_303 ();
 sky130_fd_sc_hd__fill_2 FILLER_4_306 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_309 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_312 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_315 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_32 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_335 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_338 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_341 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_344 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_347 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_35 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_350 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_353 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_356 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_359 ();
 sky130_fd_sc_hd__fill_2 FILLER_4_362 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_365 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_368 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_371 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_374 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_377 ();
 sky130_fd_sc_hd__fill_2 FILLER_4_38 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_380 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_383 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_45 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_54 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_57 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_6 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_60 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_63 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_73 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_76 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_9 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_93 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_96 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_99 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_107 ();
 sky130_fd_sc_hd__fill_2 FILLER_5_110 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_113 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_12 ();
 sky130_fd_sc_hd__fill_2 FILLER_5_139 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_150 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_159 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_162 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_165 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_169 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_172 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_175 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_178 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_181 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_184 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_187 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_190 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_193 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_214 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_217 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_220 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_223 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_225 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_228 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_231 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_234 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_237 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_240 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_243 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_246 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_249 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_25 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_252 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_255 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_258 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_261 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_264 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_281 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_284 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_287 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_290 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_293 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_296 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_299 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_30 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_302 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_305 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_308 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_311 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_314 ();
 sky130_fd_sc_hd__fill_2 FILLER_5_317 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_331 ();
 sky130_fd_sc_hd__fill_2 FILLER_5_334 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_337 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_340 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_343 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_346 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_349 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_352 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_355 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_358 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_361 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_364 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_367 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_370 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_373 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_376 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_379 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_382 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_385 ();
 sky130_fd_sc_hd__fill_2 FILLER_5_54 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_57 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_6 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_60 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_63 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_66 ();
 sky130_fd_sc_hd__fill_2 FILLER_5_69 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_77 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_80 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_83 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_86 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_89 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_9 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_92 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_101 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_104 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_107 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_110 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_113 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_116 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_119 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_122 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_125 ();
 sky130_fd_sc_hd__fill_2 FILLER_6_128 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_141 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_150 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_153 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_156 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_159 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_162 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_165 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_168 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_171 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_174 ();
 sky130_fd_sc_hd__fill_2 FILLER_6_177 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_184 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_187 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_190 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_193 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_199 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_202 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_205 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_214 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_223 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_226 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_229 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_232 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_235 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_238 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_241 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_244 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_247 ();
 sky130_fd_sc_hd__fill_2 FILLER_6_250 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_253 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_256 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_270 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_288 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_291 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_294 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_297 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_300 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_303 ();
 sky130_fd_sc_hd__fill_2 FILLER_6_306 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_309 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_335 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_338 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_341 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_344 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_347 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_350 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_353 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_356 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_359 ();
 sky130_fd_sc_hd__fill_2 FILLER_6_362 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_365 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_368 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_371 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_374 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_377 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_380 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_383 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_58 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_6 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_61 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_64 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_67 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_70 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_73 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_76 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_79 ();
 sky130_fd_sc_hd__fill_2 FILLER_6_82 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_85 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_88 ();
 sky130_fd_sc_hd__fill_2 FILLER_6_91 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_98 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_106 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_109 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_113 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_116 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_119 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_12 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_122 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_125 ();
 sky130_fd_sc_hd__fill_2 FILLER_7_156 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_161 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_164 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_167 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_169 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_172 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_175 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_188 ();
 sky130_fd_sc_hd__fill_2 FILLER_7_20 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_225 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_228 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_231 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_234 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_237 ();
 sky130_fd_sc_hd__fill_2 FILLER_7_240 ();
 sky130_fd_sc_hd__fill_2 FILLER_7_25 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_259 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_262 ();
 sky130_fd_sc_hd__fill_2 FILLER_7_275 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_288 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_29 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_291 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_294 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_297 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_300 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_303 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_32 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_337 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_340 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_343 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_346 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_349 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_352 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_355 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_358 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_361 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_364 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_367 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_370 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_373 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_376 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_379 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_382 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_385 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_57 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_6 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_60 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_63 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_66 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_69 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_72 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_75 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_78 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_9 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_106 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_109 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_112 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_115 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_118 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_12 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_121 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_124 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_127 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_130 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_141 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_15 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_18 ();
 sky130_fd_sc_hd__fill_2 FILLER_8_197 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_21 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_211 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_214 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_230 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_233 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_236 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_239 ();
 sky130_fd_sc_hd__fill_2 FILLER_8_24 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_242 ();
 sky130_fd_sc_hd__fill_2 FILLER_8_245 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_270 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_273 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_287 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_290 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_293 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_296 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_299 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_302 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_305 ();
 sky130_fd_sc_hd__fill_2 FILLER_8_309 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_343 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_346 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_349 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_352 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_355 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_358 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_361 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_365 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_368 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_371 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_374 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_377 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_380 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_383 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_44 ();
 sky130_fd_sc_hd__fill_2 FILLER_8_47 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_6 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_65 ();
 sky130_fd_sc_hd__fill_2 FILLER_8_75 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_9 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_102 ();
 sky130_fd_sc_hd__fill_2 FILLER_9_105 ();
 sky130_fd_sc_hd__fill_2 FILLER_9_12 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_124 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_127 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_130 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_133 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_136 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_139 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_142 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_145 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_148 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_151 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_154 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_157 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_160 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_163 ();
 sky130_fd_sc_hd__fill_2 FILLER_9_166 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_204 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_211 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_214 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_217 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_220 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_223 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_225 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_228 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_231 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_234 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_237 ();
 sky130_fd_sc_hd__fill_2 FILLER_9_240 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_276 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_279 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_281 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_284 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_287 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_290 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_293 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_296 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_299 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_302 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_305 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_308 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_311 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_314 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_317 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_335 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_337 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_340 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_343 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_346 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_349 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_352 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_355 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_358 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_361 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_364 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_367 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_370 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_373 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_376 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_379 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_382 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_385 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_43 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_46 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_49 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_52 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_55 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_57 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_6 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_60 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_63 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_66 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_69 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_72 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_75 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_78 ();
 sky130_fd_sc_hd__fill_2 FILLER_9_81 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_85 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_9 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_99 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Left_39 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Right_0 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Left_49 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Right_10 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Left_50 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Right_11 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Left_51 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Right_12 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Left_52 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Right_13 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Left_53 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Right_14 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Left_54 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Right_15 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Left_55 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Right_16 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Left_56 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Right_17 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_18_Left_57 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_18_Right_18 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_19_Left_58 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_19_Right_19 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Left_40 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Right_1 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_20_Left_59 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_20_Right_20 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_21_Left_60 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_21_Right_21 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_22_Left_61 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_22_Right_22 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_23_Left_62 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_23_Right_23 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_24_Left_63 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_24_Right_24 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_25_Left_64 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_25_Right_25 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_26_Left_65 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_26_Right_26 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_27_Left_66 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_27_Right_27 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_28_Left_67 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_28_Right_28 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_29_Left_68 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_29_Right_29 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Left_41 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Right_2 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_30_Left_69 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_30_Right_30 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_31_Left_70 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_31_Right_31 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_32_Left_71 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_32_Right_32 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_33_Left_72 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_33_Right_33 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_34_Left_73 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_34_Right_34 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_35_Left_74 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_35_Right_35 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_36_Left_75 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_36_Right_36 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_37_Left_76 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_37_Right_37 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_38_Left_77 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_38_Right_38 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Left_42 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Right_3 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Left_43 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Right_4 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Left_44 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Right_5 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Left_45 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Right_6 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Left_46 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Right_7 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Left_47 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Right_8 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Left_48 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Right_9 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_78 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_79 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_80 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_81 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_82 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_83 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_84 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_85 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_86 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_87 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_88 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_89 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_90 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_149 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_150 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_151 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_152 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_153 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_154 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_155 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_156 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_157 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_158 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_159 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_160 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_161 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_162 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_163 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_164 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_165 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_166 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_167 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_168 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_169 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_170 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_171 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_172 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_173 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_174 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_175 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_176 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_177 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_178 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_179 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_180 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_181 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_182 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_183 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_184 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_185 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_186 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_187 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_188 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_189 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_190 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_191 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_192 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_193 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_194 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_195 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_196 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_197 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_198 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_199 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_200 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_201 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_202 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_203 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_204 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_205 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_206 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_207 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_208 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_209 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_210 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_211 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_212 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_213 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_91 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_92 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_93 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_94 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_95 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_96 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_214 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_215 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_216 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_217 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_218 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_219 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_220 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_221 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_222 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_223 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_224 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_225 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_226 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_227 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_228 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_229 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_230 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_231 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_232 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_233 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_234 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_235 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_236 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_237 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_238 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_239 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_240 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_241 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_242 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_243 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_244 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_245 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_246 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_247 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_248 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_249 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_250 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_251 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_252 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_253 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_254 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_255 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_256 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_257 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_258 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_259 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_260 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_261 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_262 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_263 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_264 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_265 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_266 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_267 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_268 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_269 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_270 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_271 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_272 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_273 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_274 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_275 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_276 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_277 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_278 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_100 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_101 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_102 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_103 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_97 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_98 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_99 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_279 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_280 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_281 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_282 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_283 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_284 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_285 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_286 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_287 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_288 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_289 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_290 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_291 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_292 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_293 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_294 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_295 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_296 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_297 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_298 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_299 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_300 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_301 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_302 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_303 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_304 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_305 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_306 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_307 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_308 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_309 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_310 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_311 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_312 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_313 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_314 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_315 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_316 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_317 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_318 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_319 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_320 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_321 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_322 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_323 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_324 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_325 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_326 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_327 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_328 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_329 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_330 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_331 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_332 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_333 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_334 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_335 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_336 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_337 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_338 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_339 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_340 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_341 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_342 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_343 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_104 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_105 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_106 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_107 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_108 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_109 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_110 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_111 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_112 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_113 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_114 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_115 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_116 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_117 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_118 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_119 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_120 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_121 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_122 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_123 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_124 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_125 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_126 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_127 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_128 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_129 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_130 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_131 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_132 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_133 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_134 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_135 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_136 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_137 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_138 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_139 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_140 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_141 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_142 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_143 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_144 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_145 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_146 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_147 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_148 ();
 sky130_fd_sc_hd__dfrtp_2 bg_burst_sky130_fd_sc_hd__dfrtp_2_Q (.CLK(clknet_4_3_0_clk),
    .D(bg_burst_sky130_fd_sc_hd__dfrtp_2_Q_D),
    .RESET_B(net31),
    .Q(bg_burst));
 sky130_fd_sc_hd__mux2_1 bg_burst_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X (.A0(net93),
    .A1(\u_reg_bank.wr_data[3] ),
    .S(\u_reg_bank.wr_addr[5]_sky130_fd_sc_hd__or4b_2_A_X_sky130_fd_sc_hd__nor3_2_C_Y ),
    .X(bg_burst_sky130_fd_sc_hd__dfrtp_2_Q_D));
 sky130_fd_sc_hd__dfrtp_2 \bg_div_sel[0]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_1_0_clk),
    .D(\bg_div_sel[0]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net3),
    .Q(\bg_div_sel[0] ));
 sky130_fd_sc_hd__mux2_1 \bg_div_sel[0]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X  (.A0(net89),
    .A1(\u_reg_bank.wr_data[0] ),
    .S(\u_reg_bank.wr_addr[5]_sky130_fd_sc_hd__or4b_2_A_X_sky130_fd_sc_hd__nor3_2_C_Y ),
    .X(\bg_div_sel[0]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__dfrtp_2 \bg_div_sel[1]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_1_0_clk),
    .D(\bg_div_sel[1]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net3),
    .Q(\bg_div_sel[1] ));
 sky130_fd_sc_hd__mux2_1 \bg_div_sel[1]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X  (.A0(\bg_div_sel[1] ),
    .A1(\u_reg_bank.wr_data[1] ),
    .S(\u_reg_bank.wr_addr[5]_sky130_fd_sc_hd__or4b_2_A_X_sky130_fd_sc_hd__nor3_2_C_Y ),
    .X(\bg_div_sel[1]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__dfstp_2 \bg_div_sel[2]_sky130_fd_sc_hd__dfstp_2_Q  (.CLK(clknet_4_1_0_clk),
    .D(\bg_div_sel[2]_sky130_fd_sc_hd__dfstp_2_Q_D ),
    .SET_B(net3),
    .Q(\bg_div_sel[2] ));
 sky130_fd_sc_hd__mux2_1 \bg_div_sel[2]_sky130_fd_sc_hd__dfstp_2_Q_D_sky130_fd_sc_hd__mux2_1_X  (.A0(\bg_div_sel[2] ),
    .A1(\u_reg_bank.wr_data[2] ),
    .S(\u_reg_bank.wr_addr[5]_sky130_fd_sc_hd__or4b_2_A_X_sky130_fd_sc_hd__nor3_2_C_Y ),
    .X(\bg_div_sel[2]_sky130_fd_sc_hd__dfstp_2_Q_D ));
 sky130_fd_sc_hd__dfstp_2 bg_en_sky130_fd_sc_hd__dfstp_2_Q (.CLK(clknet_4_9_0_clk),
    .D(bg_en_sky130_fd_sc_hd__dfstp_2_Q_D),
    .SET_B(net31),
    .Q(net7));
 sky130_fd_sc_hd__mux2_1 bg_en_sky130_fd_sc_hd__dfstp_2_Q_D_sky130_fd_sc_hd__mux2_1_X (.A0(net7),
    .A1(\u_reg_bank.wr_data[7] ),
    .S(dbl_en_sky130_fd_sc_hd__mux2_1_A1_S_sky130_fd_sc_hd__or3_2_X_B_sky130_fd_sc_hd__nor2_2_B_Y),
    .X(bg_en_sky130_fd_sc_hd__dfstp_2_Q_D));
 sky130_fd_sc_hd__dfrtp_2 \bg_hold_exp[0]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_11_0_clk),
    .D(\bg_hold_exp[0]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net31),
    .Q(\bg_hold_exp[0] ));
 sky130_fd_sc_hd__mux2_1 \bg_hold_exp[0]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X  (.A0(\bg_hold_exp[0] ),
    .A1(\u_reg_bank.wr_data[4] ),
    .S(\u_reg_bank.wr_addr[5]_sky130_fd_sc_hd__or4b_2_A_X_sky130_fd_sc_hd__nor3_2_C_Y ),
    .X(\bg_hold_exp[0]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__nor2_2 \bg_hold_exp[0]_sky130_fd_sc_hd__nor2_2_B  (.A(\bg_hold_exp[1] ),
    .B(\bg_hold_exp[0] ),
    .Y(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_B_sky130_fd_sc_hd__or4b_2_X_B_sky130_fd_sc_hd__o21a_2_X_A2 ));
 sky130_fd_sc_hd__dfrtp_2 \bg_hold_exp[1]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_9_0_clk),
    .D(\bg_hold_exp[1]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net31),
    .Q(\bg_hold_exp[1] ));
 sky130_fd_sc_hd__mux2_1 \bg_hold_exp[1]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X  (.A0(\bg_hold_exp[1] ),
    .A1(\u_reg_bank.wr_data[5] ),
    .S(\u_reg_bank.wr_addr[5]_sky130_fd_sc_hd__or4b_2_A_X_sky130_fd_sc_hd__nor3_2_C_Y ),
    .X(\bg_hold_exp[1]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__dfrtp_2 \bg_hold_exp[2]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_12_0_clk),
    .D(\bg_hold_exp[2]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net31),
    .Q(\bg_hold_exp[2] ));
 sky130_fd_sc_hd__mux2_1 \bg_hold_exp[2]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X  (.A0(\bg_hold_exp[2] ),
    .A1(\u_reg_bank.wr_data[6] ),
    .S(\u_reg_bank.wr_addr[5]_sky130_fd_sc_hd__or4b_2_A_X_sky130_fd_sc_hd__nor3_2_C_Y ),
    .X(\bg_hold_exp[2]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__dfrtp_2 \bg_hold_exp[3]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_9_0_clk),
    .D(\bg_hold_exp[3]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net31),
    .Q(\bg_hold_exp[3] ));
 sky130_fd_sc_hd__mux2_1 \bg_hold_exp[3]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X  (.A0(\bg_hold_exp[3] ),
    .A1(\u_reg_bank.wr_data[7] ),
    .S(\u_reg_bank.wr_addr[5]_sky130_fd_sc_hd__or4b_2_A_X_sky130_fd_sc_hd__nor3_2_C_Y ),
    .X(\bg_hold_exp[3]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__a22o_2 bg_ok_combined_sky130_fd_sc_hd__a22o_2_B2 (.A1(net15),
    .A2(bias_en_sky130_fd_sc_hd__a22o_2_B2_B1),
    .B1(bg_valid_sky130_fd_sc_hd__a221o_2_A1_A2),
    .B2(net8),
    .X(bg_ok_combined_sky130_fd_sc_hd__a22o_2_B2_X));
 sky130_fd_sc_hd__a221o_2 bg_ok_combined_sky130_fd_sc_hd__a22o_2_B2_X_sky130_fd_sc_hd__a221o_2_C1 (.A1(\pwm0_duty[0] ),
    .A2(bias_en_sky130_fd_sc_hd__a22o_2_B2_A2),
    .B1(bg_valid_sky130_fd_sc_hd__a221o_2_A1_B1),
    .B2(pwm0_enable),
    .C1(bg_ok_combined_sky130_fd_sc_hd__a22o_2_B2_X),
    .X(bg_ok_combined_sky130_fd_sc_hd__a22o_2_B2_X_sky130_fd_sc_hd__a221o_2_C1_X));
 sky130_fd_sc_hd__and2_2 bg_ok_combined_sky130_fd_sc_hd__and2_2_X (.A(net13),
    .B(bias_ok_sync),
    .X(net8));
 sky130_fd_sc_hd__dfrtp_2 bg_trim_sky130_fd_sc_hd__dfrtp_2_Q (.CLK(clknet_4_1_0_clk),
    .D(bg_trim_sky130_fd_sc_hd__dfrtp_2_Q_D),
    .RESET_B(net3),
    .Q(net11));
 sky130_fd_sc_hd__dfrtp_2 bg_trim_sky130_fd_sc_hd__dfrtp_2_Q_1 (.CLK(clknet_4_3_0_clk),
    .D(bg_trim_sky130_fd_sc_hd__dfrtp_2_Q_1_D),
    .RESET_B(net31),
    .Q(net10));
 sky130_fd_sc_hd__mux2_1 bg_trim_sky130_fd_sc_hd__dfrtp_2_Q_1_D_sky130_fd_sc_hd__mux2_1_X (.A0(net83),
    .A1(\u_reg_bank.wr_data[1] ),
    .S(dbl_en_sky130_fd_sc_hd__mux2_1_A1_S_sky130_fd_sc_hd__or3_2_X_B_sky130_fd_sc_hd__nor2_2_B_Y),
    .X(bg_trim_sky130_fd_sc_hd__dfrtp_2_Q_1_D));
 sky130_fd_sc_hd__dfrtp_2 bg_trim_sky130_fd_sc_hd__dfrtp_2_Q_2 (.CLK(clknet_4_1_0_clk),
    .D(bg_trim_sky130_fd_sc_hd__dfrtp_2_Q_2_D),
    .RESET_B(net3),
    .Q(net9));
 sky130_fd_sc_hd__mux2_1 bg_trim_sky130_fd_sc_hd__dfrtp_2_Q_2_D_sky130_fd_sc_hd__mux2_1_X (.A0(net72),
    .A1(\u_reg_bank.wr_data[0] ),
    .S(dbl_en_sky130_fd_sc_hd__mux2_1_A1_S_sky130_fd_sc_hd__or3_2_X_B_sky130_fd_sc_hd__nor2_2_B_Y),
    .X(bg_trim_sky130_fd_sc_hd__dfrtp_2_Q_2_D));
 sky130_fd_sc_hd__mux2_1 bg_trim_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X (.A0(net74),
    .A1(\u_reg_bank.wr_data[2] ),
    .S(dbl_en_sky130_fd_sc_hd__mux2_1_A1_S_sky130_fd_sc_hd__or3_2_X_B_sky130_fd_sc_hd__nor2_2_B_Y),
    .X(bg_trim_sky130_fd_sc_hd__dfrtp_2_Q_D));
 sky130_fd_sc_hd__dfstp_2 bg_trim_sky130_fd_sc_hd__dfstp_2_Q (.CLK(clknet_4_9_0_clk),
    .D(bg_trim_sky130_fd_sc_hd__dfstp_2_Q_D),
    .SET_B(net31),
    .Q(net12));
 sky130_fd_sc_hd__mux2_1 bg_trim_sky130_fd_sc_hd__dfstp_2_Q_D_sky130_fd_sc_hd__mux2_1_X (.A0(net12),
    .A1(\u_reg_bank.wr_data[3] ),
    .S(dbl_en_sky130_fd_sc_hd__mux2_1_A1_S_sky130_fd_sc_hd__or3_2_X_B_sky130_fd_sc_hd__nor2_2_B_Y),
    .X(bg_trim_sky130_fd_sc_hd__dfstp_2_Q_D));
 sky130_fd_sc_hd__a221o_2 bg_valid_sky130_fd_sc_hd__a221o_2_A1 (.A1(net13),
    .A2(bg_valid_sky130_fd_sc_hd__a221o_2_A1_A2),
    .B1(bg_valid_sky130_fd_sc_hd__a221o_2_A1_B1),
    .B2(pwm0_width),
    .C1(bg_valid_sky130_fd_sc_hd__a221o_2_A1_C1),
    .X(bg_valid_sky130_fd_sc_hd__a221o_2_A1_X));
 sky130_fd_sc_hd__and3_2 bg_valid_sky130_fd_sc_hd__a221o_2_A1_A2_sky130_fd_sc_hd__and3_2_X (.A(\rd_addr[0] ),
    .B(\rd_addr[1] ),
    .C(\rd_addr[5]_sky130_fd_sc_hd__or3_2_A_X_sky130_fd_sc_hd__nor3b_2_B_Y ),
    .X(bg_valid_sky130_fd_sc_hd__a221o_2_A1_A2));
 sky130_fd_sc_hd__nor3b_2 bg_valid_sky130_fd_sc_hd__a221o_2_A1_B1_sky130_fd_sc_hd__nor3b_2_Y (.A(\rd_addr[0] ),
    .B(\rd_addr[1] ),
    .C_N(\rd_addr[5]_sky130_fd_sc_hd__or3_2_A_X_sky130_fd_sc_hd__nor3b_2_B_Y ),
    .Y(bg_valid_sky130_fd_sc_hd__a221o_2_A1_B1));
 sky130_fd_sc_hd__a22o_2 bg_valid_sky130_fd_sc_hd__a221o_2_A1_C1_sky130_fd_sc_hd__a22o_2_X (.A1(\pwm0_duty[1] ),
    .A2(bias_en_sky130_fd_sc_hd__a22o_2_B2_A2),
    .B1(pwm1_clk_sel_sky130_fd_sc_hd__a211o_2_A1_A2),
    .B2(pwm1_width),
    .X(bg_valid_sky130_fd_sc_hd__a221o_2_A1_C1));
 sky130_fd_sc_hd__dfrtp_2 bg_valid_sky130_fd_sc_hd__dfrtp_2_Q (.CLK(clknet_4_2_0_clk),
    .D(bg_valid_sky130_fd_sc_hd__dfrtp_2_Q_D),
    .RESET_B(net3),
    .Q(net13));
 sky130_fd_sc_hd__and4b_2 bg_valid_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4b_2_X (.A_N(\u_bg_seq.updates[0] ),
    .B(\u_bg_seq.updates[1]_sky130_fd_sc_hd__inv_2_A_Y ),
    .C(\u_bg_seq.state[1]_sky130_fd_sc_hd__nand2_2_A_B ),
    .D(\u_bg_seq.updates[2] ),
    .X(bg_valid_sky130_fd_sc_hd__dfrtp_2_Q_D));
 sky130_fd_sc_hd__nor2_2 bg_valid_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__nor2_2_A (.A(bg_valid_sky130_fd_sc_hd__dfrtp_2_Q_D),
    .B(bg_valid_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__nor2_2_A_B),
    .Y(bg_valid_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__nor2_2_A_Y));
 sky130_fd_sc_hd__nor2_2 bg_valid_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__nor2_2_A_B_sky130_fd_sc_hd__nor2_2_Y (.A(\u_bg_seq.state[2] ),
    .B(\u_bg_seq.updates[1]_sky130_fd_sc_hd__o2111a_2_C1_A2 ),
    .Y(bg_valid_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__nor2_2_A_B));
 sky130_fd_sc_hd__o2bb2a_2 bg_valid_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__nor2_2_A_B_sky130_fd_sc_hd__o2bb2a_2_A2_N (.A1_N(ota_en_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o31a_2_X_A3_sky130_fd_sc_hd__nor2_2_Y_A),
    .A2_N(bg_valid_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__nor2_2_A_B),
    .B1(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_A_sky130_fd_sc_hd__and4bb_2_C_X),
    .B2(\u_bg_seq.updates[1]_sky130_fd_sc_hd__o2111a_2_C1_A2 ),
    .X(bg_valid_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__nor2_2_A_B_sky130_fd_sc_hd__o2bb2a_2_A2_N_X));
 sky130_fd_sc_hd__a22o_2 bias_en_sky130_fd_sc_hd__a22o_2_B2 (.A1(\pwm0_duty[7] ),
    .A2(bias_en_sky130_fd_sc_hd__a22o_2_B2_A2),
    .B1(bias_en_sky130_fd_sc_hd__a22o_2_B2_B1),
    .B2(net14),
    .X(bias_en_sky130_fd_sc_hd__a22o_2_B2_X));
 sky130_fd_sc_hd__o31a_2 bias_en_sky130_fd_sc_hd__a22o_2_B2_X_sky130_fd_sc_hd__o31a_2_A3 (.A1(bias_en_sky130_fd_sc_hd__a22o_2_B2_X_sky130_fd_sc_hd__o31a_2_A3_A1),
    .A2(bias_en_sky130_fd_sc_hd__a22o_2_B2_X_sky130_fd_sc_hd__o31a_2_A3_A2),
    .A3(bias_en_sky130_fd_sc_hd__a22o_2_B2_X),
    .B1(\u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_C_N_B_sky130_fd_sc_hd__nor3_2_C_Y ),
    .X(spi_miso_sky130_fd_sc_hd__o221a_2_A1_B2));
 sky130_fd_sc_hd__a22o_2 bias_en_sky130_fd_sc_hd__a22o_2_B2_X_sky130_fd_sc_hd__o31a_2_A3_A1_sky130_fd_sc_hd__a22o_2_X (.A1(\bg_hold_exp[3] ),
    .A2(\rd_addr[5]_sky130_fd_sc_hd__or3_2_A_X_sky130_fd_sc_hd__nor2_2_A_Y ),
    .B1(dbl_en_sky130_fd_sc_hd__and4b_2_C_X_sky130_fd_sc_hd__a221o_2_C1_B1),
    .B2(net7),
    .X(bias_en_sky130_fd_sc_hd__a22o_2_B2_X_sky130_fd_sc_hd__o31a_2_A3_A1));
 sky130_fd_sc_hd__and2_2 bias_en_sky130_fd_sc_hd__a22o_2_B2_X_sky130_fd_sc_hd__o31a_2_A3_A2_sky130_fd_sc_hd__and2_2_X (.A(\pwm1_duty[7] ),
    .B(pwm1_clk_sel_sky130_fd_sc_hd__a211o_2_A1_B1_sky130_fd_sc_hd__a22o_2_X_B1),
    .X(bias_en_sky130_fd_sc_hd__a22o_2_B2_X_sky130_fd_sc_hd__o31a_2_A3_A2));
 sky130_fd_sc_hd__dfstp_2 bias_en_sky130_fd_sc_hd__dfstp_2_Q (.CLK(clknet_4_13_0_clk),
    .D(bias_en_sky130_fd_sc_hd__dfstp_2_Q_D),
    .SET_B(net31),
    .Q(net14));
 sky130_fd_sc_hd__mux2_1 bias_en_sky130_fd_sc_hd__mux2_1_A1 (.A0(\u_reg_bank.wr_data[7] ),
    .A1(net14),
    .S(\u_reg_bank.wr_addr[3]_sky130_fd_sc_hd__or4_2_A_X_sky130_fd_sc_hd__or3b_2_B_X_sky130_fd_sc_hd__or3b_2_A_X ),
    .X(bias_en_sky130_fd_sc_hd__dfstp_2_Q_D));
 sky130_fd_sc_hd__dfrtp_2 bias_ok_meta_sky130_fd_sc_hd__dfrtp_2_Q (.CLK(clknet_4_1_0_clk),
    .D(net1),
    .RESET_B(net3),
    .Q(bias_ok_meta));
 sky130_fd_sc_hd__dfrtp_2 bias_ok_sync_sky130_fd_sc_hd__dfrtp_2_Q (.CLK(clknet_4_1_0_clk),
    .D(net35),
    .RESET_B(net3),
    .Q(bias_ok_sync));
 sky130_fd_sc_hd__dfrtp_2 bias_trim_sky130_fd_sc_hd__dfrtp_2_Q (.CLK(clknet_4_13_0_clk),
    .D(bias_trim_sky130_fd_sc_hd__dfrtp_2_Q_D),
    .RESET_B(net31),
    .Q(net18));
 sky130_fd_sc_hd__dfrtp_2 bias_trim_sky130_fd_sc_hd__dfrtp_2_Q_1 (.CLK(clknet_4_1_0_clk),
    .D(bias_trim_sky130_fd_sc_hd__dfrtp_2_Q_1_D),
    .RESET_B(net3),
    .Q(net17));
 sky130_fd_sc_hd__mux2_1 bias_trim_sky130_fd_sc_hd__dfrtp_2_Q_1_D_sky130_fd_sc_hd__mux2_1_X (.A0(\u_reg_bank.wr_data[2] ),
    .A1(net76),
    .S(\u_reg_bank.wr_addr[3]_sky130_fd_sc_hd__or4_2_A_X_sky130_fd_sc_hd__or3b_2_B_X_sky130_fd_sc_hd__or3b_2_A_X ),
    .X(bias_trim_sky130_fd_sc_hd__dfrtp_2_Q_1_D));
 sky130_fd_sc_hd__dfrtp_2 bias_trim_sky130_fd_sc_hd__dfrtp_2_Q_2 (.CLK(clknet_4_1_0_clk),
    .D(bias_trim_sky130_fd_sc_hd__dfrtp_2_Q_2_D),
    .RESET_B(net3),
    .Q(net16));
 sky130_fd_sc_hd__mux2_1 bias_trim_sky130_fd_sc_hd__dfrtp_2_Q_2_D_sky130_fd_sc_hd__mux2_1_X (.A0(\u_reg_bank.wr_data[1] ),
    .A1(net84),
    .S(\u_reg_bank.wr_addr[3]_sky130_fd_sc_hd__or4_2_A_X_sky130_fd_sc_hd__or3b_2_B_X_sky130_fd_sc_hd__or3b_2_A_X ),
    .X(bias_trim_sky130_fd_sc_hd__dfrtp_2_Q_2_D));
 sky130_fd_sc_hd__dfrtp_2 bias_trim_sky130_fd_sc_hd__dfrtp_2_Q_3 (.CLK(clknet_4_6_0_clk),
    .D(bias_trim_sky130_fd_sc_hd__dfrtp_2_Q_3_D),
    .RESET_B(net31),
    .Q(net15));
 sky130_fd_sc_hd__mux2_1 bias_trim_sky130_fd_sc_hd__dfrtp_2_Q_3_D_sky130_fd_sc_hd__mux2_1_X (.A0(\u_reg_bank.wr_data[0] ),
    .A1(net87),
    .S(\u_reg_bank.wr_addr[3]_sky130_fd_sc_hd__or4_2_A_X_sky130_fd_sc_hd__or3b_2_B_X_sky130_fd_sc_hd__or3b_2_A_X ),
    .X(bias_trim_sky130_fd_sc_hd__dfrtp_2_Q_3_D));
 sky130_fd_sc_hd__mux2_1 bias_trim_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X (.A0(\u_reg_bank.wr_data[3] ),
    .A1(net73),
    .S(\u_reg_bank.wr_addr[3]_sky130_fd_sc_hd__or4_2_A_X_sky130_fd_sc_hd__or3b_2_B_X_sky130_fd_sc_hd__or3b_2_A_X ),
    .X(bias_trim_sky130_fd_sc_hd__dfrtp_2_Q_D));
 sky130_fd_sc_hd__dfstp_2 bias_trim_sky130_fd_sc_hd__dfstp_2_Q (.CLK(clknet_4_13_0_clk),
    .D(bias_trim_sky130_fd_sc_hd__dfstp_2_Q_D),
    .SET_B(net31),
    .Q(net19));
 sky130_fd_sc_hd__mux2_1 bias_trim_sky130_fd_sc_hd__dfstp_2_Q_D_sky130_fd_sc_hd__mux2_1_X (.A0(\u_reg_bank.wr_data[4] ),
    .A1(net19),
    .S(\u_reg_bank.wr_addr[3]_sky130_fd_sc_hd__or4_2_A_X_sky130_fd_sc_hd__or3b_2_B_X_sky130_fd_sc_hd__or3b_2_A_X ),
    .X(bias_trim_sky130_fd_sc_hd__dfstp_2_Q_D));
 sky130_fd_sc_hd__dfrtp_2 cap_sky130_fd_sc_hd__dfrtp_2_Q (.CLK(clknet_4_2_0_clk),
    .D(cap_sky130_fd_sc_hd__dfrtp_2_Q_D),
    .RESET_B(net3),
    .Q(net20));
 sky130_fd_sc_hd__and4_2 cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X (.A(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_A),
    .B(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_B),
    .C(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_C),
    .D(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_D),
    .X(cap_sky130_fd_sc_hd__dfrtp_2_Q_D));
 sky130_fd_sc_hd__and4b_2 cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_A_sky130_fd_sc_hd__and4b_2_X (.A_N(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_A_sky130_fd_sc_hd__and4b_2_X_A_N),
    .B(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_A_sky130_fd_sc_hd__and4b_2_X_B),
    .C(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_A_sky130_fd_sc_hd__and4b_2_X_C),
    .D(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_A_sky130_fd_sc_hd__and4b_2_X_D),
    .X(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_A));
 sky130_fd_sc_hd__xnor2_2 cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_A_sky130_fd_sc_hd__and4b_2_X_B_sky130_fd_sc_hd__xnor2_2_Y (.A(\u_bg_seq.cnt[8] ),
    .B(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_A_sky130_fd_sc_hd__and4b_2_X_B_sky130_fd_sc_hd__xnor2_2_Y_B),
    .Y(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_A_sky130_fd_sc_hd__and4b_2_X_B));
 sky130_fd_sc_hd__o21a_2 cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_A_sky130_fd_sc_hd__and4b_2_X_B_sky130_fd_sc_hd__xnor2_2_Y_B_sky130_fd_sc_hd__o21a_2_X (.A1(\bg_div_sel[1] ),
    .A2(\bg_div_sel[0] ),
    .B1(\bg_div_sel[2] ),
    .X(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_A_sky130_fd_sc_hd__and4b_2_X_B_sky130_fd_sc_hd__xnor2_2_Y_B));
 sky130_fd_sc_hd__xnor2_2 cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_A_sky130_fd_sc_hd__and4b_2_X_C_sky130_fd_sc_hd__xnor2_2_Y (.A(\u_bg_seq.cnt[10] ),
    .B(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_A_sky130_fd_sc_hd__and4b_2_X_C_sky130_fd_sc_hd__xnor2_2_Y_B),
    .Y(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_A_sky130_fd_sc_hd__and4b_2_X_C));
 sky130_fd_sc_hd__and3_2 cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_A_sky130_fd_sc_hd__and4b_2_X_C_sky130_fd_sc_hd__xnor2_2_Y_B_sky130_fd_sc_hd__and3_2_X (.A(\bg_div_sel[2] ),
    .B(\bg_div_sel[1] ),
    .C(\bg_div_sel[0] ),
    .X(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_A_sky130_fd_sc_hd__and4b_2_X_C_sky130_fd_sc_hd__xnor2_2_Y_B));
 sky130_fd_sc_hd__a21o_2 cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_A_sky130_fd_sc_hd__and4b_2_X_D_sky130_fd_sc_hd__a21o_2_X (.A1(\bg_div_sel[2] ),
    .A2(\bg_div_sel[1] ),
    .B1(\u_bg_seq.cnt[11]_sky130_fd_sc_hd__a31o_2_B1_A1 ),
    .X(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_A_sky130_fd_sc_hd__and4b_2_X_D));
 sky130_fd_sc_hd__and4bb_2 cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_A_sky130_fd_sc_hd__and4bb_2_C (.A_N(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_B_sky130_fd_sc_hd__nor2_2_Y_A),
    .B_N(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_B_sky130_fd_sc_hd__nor2_2_Y_B),
    .C(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_A),
    .D(\u_bg_seq.cnt[4]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o21a_2_X_A2 ),
    .X(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_A_sky130_fd_sc_hd__and4bb_2_C_X));
 sky130_fd_sc_hd__nor2_2 cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_A_sky130_fd_sc_hd__and4bb_2_C_X_sky130_fd_sc_hd__nor2_2_A (.A(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_A_sky130_fd_sc_hd__and4bb_2_C_X),
    .B(\u_bg_seq.updates[1]_sky130_fd_sc_hd__o2111a_2_C1_A2 ),
    .Y(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_A_sky130_fd_sc_hd__and4bb_2_C_X_sky130_fd_sc_hd__nor2_2_A_Y));
 sky130_fd_sc_hd__or2_2 cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_A_sky130_fd_sc_hd__and4bb_2_C_X_sky130_fd_sc_hd__or2_2_A (.A(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_A_sky130_fd_sc_hd__and4bb_2_C_X),
    .B(\u_bg_seq.updates[1]_sky130_fd_sc_hd__o2111a_2_C1_A2 ),
    .X(\u_bg_seq.cnt[11]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__nor2_2_Y_A ));
 sky130_fd_sc_hd__nor2_2 cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_B_sky130_fd_sc_hd__nor2_2_Y (.A(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_B_sky130_fd_sc_hd__nor2_2_Y_A),
    .B(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_B_sky130_fd_sc_hd__nor2_2_Y_B),
    .Y(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_B));
 sky130_fd_sc_hd__a21boi_2 cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_B_sky130_fd_sc_hd__nor2_2_Y_A_sky130_fd_sc_hd__a21boi_2_Y (.A1(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_B_sky130_fd_sc_hd__nor2_2_Y_A_sky130_fd_sc_hd__a21boi_2_Y_A1),
    .A2(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_B_sky130_fd_sc_hd__nor2_2_Y_A_sky130_fd_sc_hd__a21boi_2_Y_A2),
    .B1_N(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_B_sky130_fd_sc_hd__nor2_2_Y_A_sky130_fd_sc_hd__a21boi_2_Y_B1_N),
    .Y(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_B_sky130_fd_sc_hd__nor2_2_Y_A));
 sky130_fd_sc_hd__o211a_2 cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_B_sky130_fd_sc_hd__nor2_2_Y_A_sky130_fd_sc_hd__a21boi_2_Y_A1_sky130_fd_sc_hd__o211a_2_X (.A1(\u_bg_seq.cnt[7] ),
    .A2(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_B_sky130_fd_sc_hd__nor2_2_Y_A_sky130_fd_sc_hd__a21boi_2_Y_A1_sky130_fd_sc_hd__o211a_2_X_A2),
    .B1(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_B_sky130_fd_sc_hd__nor2_2_Y_A_sky130_fd_sc_hd__a21boi_2_Y_A1_sky130_fd_sc_hd__o211a_2_X_B1),
    .C1(\u_bg_seq.cnt[5] ),
    .X(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_B_sky130_fd_sc_hd__nor2_2_Y_A_sky130_fd_sc_hd__a21boi_2_Y_A1));
 sky130_fd_sc_hd__and2b_2 cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_B_sky130_fd_sc_hd__nor2_2_Y_A_sky130_fd_sc_hd__a21boi_2_Y_A1_sky130_fd_sc_hd__o211a_2_X_A2_sky130_fd_sc_hd__and2b_2_X (.A_N(\bg_div_sel[2] ),
    .B(\bg_div_sel[1] ),
    .X(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_B_sky130_fd_sc_hd__nor2_2_Y_A_sky130_fd_sc_hd__a21boi_2_Y_A1_sky130_fd_sc_hd__o211a_2_X_A2));
 sky130_fd_sc_hd__nand2b_2 cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_B_sky130_fd_sc_hd__nor2_2_Y_A_sky130_fd_sc_hd__a21boi_2_Y_A1_sky130_fd_sc_hd__o211a_2_X_B1_sky130_fd_sc_hd__nand2b_2_Y (.A_N(\bg_div_sel[2] ),
    .B(\u_bg_seq.cnt[7] ),
    .Y(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_B_sky130_fd_sc_hd__nor2_2_Y_A_sky130_fd_sc_hd__a21boi_2_Y_A1_sky130_fd_sc_hd__o211a_2_X_B1));
 sky130_fd_sc_hd__xnor2_2 cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_B_sky130_fd_sc_hd__nor2_2_Y_A_sky130_fd_sc_hd__a21boi_2_Y_A2_sky130_fd_sc_hd__xnor2_2_Y (.A(\u_bg_seq.cnt[6] ),
    .B(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_B_sky130_fd_sc_hd__nor2_2_Y_B_sky130_fd_sc_hd__xor2_2_X_B_sky130_fd_sc_hd__or2_2_X_B),
    .Y(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_B_sky130_fd_sc_hd__nor2_2_Y_A_sky130_fd_sc_hd__a21boi_2_Y_A2));
 sky130_fd_sc_hd__xor2_2 cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_B_sky130_fd_sc_hd__nor2_2_Y_B_sky130_fd_sc_hd__xor2_2_X (.A(\u_bg_seq.cnt[4] ),
    .B(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_B_sky130_fd_sc_hd__nor2_2_Y_B_sky130_fd_sc_hd__xor2_2_X_B),
    .X(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_B_sky130_fd_sc_hd__nor2_2_Y_B));
 sky130_fd_sc_hd__or2_2 cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_B_sky130_fd_sc_hd__nor2_2_Y_B_sky130_fd_sc_hd__xor2_2_X_B_sky130_fd_sc_hd__or2_2_X (.A(\bg_div_sel[1] ),
    .B(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_B_sky130_fd_sc_hd__nor2_2_Y_B_sky130_fd_sc_hd__xor2_2_X_B_sky130_fd_sc_hd__or2_2_X_B),
    .X(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_B_sky130_fd_sc_hd__nor2_2_Y_B_sky130_fd_sc_hd__xor2_2_X_B));
 sky130_fd_sc_hd__or2_2 cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_B_sky130_fd_sc_hd__nor2_2_Y_B_sky130_fd_sc_hd__xor2_2_X_B_sky130_fd_sc_hd__or2_2_X_B_sky130_fd_sc_hd__or2_2_X (.A(\bg_div_sel[2] ),
    .B(\bg_div_sel[0] ),
    .X(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_B_sky130_fd_sc_hd__nor2_2_Y_B_sky130_fd_sc_hd__xor2_2_X_B_sky130_fd_sc_hd__or2_2_X_B));
 sky130_fd_sc_hd__and3_2 cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_C_sky130_fd_sc_hd__and3_2_X (.A(net2),
    .B(net7),
    .C(\u_bg_seq.state[2] ),
    .X(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_C));
 sky130_fd_sc_hd__and4b_2 cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_D_sky130_fd_sc_hd__and4b_2_X (.A_N(\u_bg_seq.cnt[1] ),
    .B(\u_bg_seq.cnt[3] ),
    .C(\u_bg_seq.cnt[2] ),
    .D(\u_bg_seq.cnt[0] ),
    .X(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_D));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_clk (.A(clk),
    .X(clknet_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_pwm0_clk (.A(pwm0_clk),
    .X(clknet_0_pwm0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_pwm1_clk (.A(pwm1_clk),
    .X(clknet_0_pwm1_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_0__f_pwm0_clk (.A(clknet_0_pwm0_clk),
    .X(clknet_1_0__leaf_pwm0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_0__f_pwm1_clk (.A(clknet_0_pwm1_clk),
    .X(clknet_1_0__leaf_pwm1_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_1__f_pwm0_clk (.A(clknet_0_pwm0_clk),
    .X(clknet_1_1__leaf_pwm0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_1__f_pwm1_clk (.A(clknet_0_pwm1_clk),
    .X(clknet_1_1__leaf_pwm1_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_4_0_0_clk (.A(clknet_0_clk),
    .X(clknet_4_0_0_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_4_10_0_clk (.A(clknet_0_clk),
    .X(clknet_4_10_0_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_4_11_0_clk (.A(clknet_0_clk),
    .X(clknet_4_11_0_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_4_12_0_clk (.A(clknet_0_clk),
    .X(clknet_4_12_0_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_4_13_0_clk (.A(clknet_0_clk),
    .X(clknet_4_13_0_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_4_14_0_clk (.A(clknet_0_clk),
    .X(clknet_4_14_0_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_4_15_0_clk (.A(clknet_0_clk),
    .X(clknet_4_15_0_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_4_1_0_clk (.A(clknet_0_clk),
    .X(clknet_4_1_0_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_4_2_0_clk (.A(clknet_0_clk),
    .X(clknet_4_2_0_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_4_3_0_clk (.A(clknet_0_clk),
    .X(clknet_4_3_0_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_4_4_0_clk (.A(clknet_0_clk),
    .X(clknet_4_4_0_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_4_5_0_clk (.A(clknet_0_clk),
    .X(clknet_4_5_0_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_4_6_0_clk (.A(clknet_0_clk),
    .X(clknet_4_6_0_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_4_7_0_clk (.A(clknet_0_clk),
    .X(clknet_4_7_0_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_4_8_0_clk (.A(clknet_0_clk),
    .X(clknet_4_8_0_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_4_9_0_clk (.A(clknet_0_clk),
    .X(clknet_4_9_0_clk));
 sky130_fd_sc_hd__clkinv_2 clkload0 (.A(clknet_4_0_0_clk));
 sky130_fd_sc_hd__clkbuf_4 clkload1 (.A(clknet_4_1_0_clk));
 sky130_fd_sc_hd__inv_6 clkload10 (.A(clknet_4_11_0_clk));
 sky130_fd_sc_hd__inv_4 clkload11 (.A(clknet_4_12_0_clk));
 sky130_fd_sc_hd__clkbuf_8 clkload12 (.A(clknet_4_13_0_clk));
 sky130_fd_sc_hd__inv_4 clkload13 (.A(clknet_4_14_0_clk));
 sky130_fd_sc_hd__bufinv_16 clkload14 (.A(clknet_4_15_0_clk));
 sky130_fd_sc_hd__clkbuf_4 clkload15 (.A(clknet_1_1__leaf_pwm0_clk));
 sky130_fd_sc_hd__clkbuf_4 clkload16 (.A(clknet_1_0__leaf_pwm1_clk));
 sky130_fd_sc_hd__clkbuf_8 clkload2 (.A(clknet_4_2_0_clk));
 sky130_fd_sc_hd__clkinv_2 clkload3 (.A(clknet_4_3_0_clk));
 sky130_fd_sc_hd__bufinv_16 clkload4 (.A(clknet_4_4_0_clk));
 sky130_fd_sc_hd__clkbuf_4 clkload5 (.A(clknet_4_5_0_clk));
 sky130_fd_sc_hd__bufinv_16 clkload6 (.A(clknet_4_6_0_clk));
 sky130_fd_sc_hd__inv_4 clkload7 (.A(clknet_4_8_0_clk));
 sky130_fd_sc_hd__bufinv_16 clkload8 (.A(clknet_4_9_0_clk));
 sky130_fd_sc_hd__inv_4 clkload9 (.A(clknet_4_10_0_clk));
 sky130_fd_sc_hd__and4b_2 dbl_en_sky130_fd_sc_hd__and4b_2_C (.A_N(\rd_addr[0] ),
    .B(\rd_addr[1] ),
    .C(net21),
    .D(\rd_addr[5]_sky130_fd_sc_hd__or3_2_A_X_sky130_fd_sc_hd__nor3_2_C_Y ),
    .X(dbl_en_sky130_fd_sc_hd__and4b_2_C_X));
 sky130_fd_sc_hd__a221o_2 dbl_en_sky130_fd_sc_hd__and4b_2_C_X_sky130_fd_sc_hd__a221o_2_C1 (.A1(\bg_div_sel[0] ),
    .A2(\rd_addr[5]_sky130_fd_sc_hd__or3_2_A_X_sky130_fd_sc_hd__nor2_2_A_Y ),
    .B1(dbl_en_sky130_fd_sc_hd__and4b_2_C_X_sky130_fd_sc_hd__a221o_2_C1_B1),
    .B2(net9),
    .C1(dbl_en_sky130_fd_sc_hd__and4b_2_C_X),
    .X(dbl_en_sky130_fd_sc_hd__and4b_2_C_X_sky130_fd_sc_hd__a221o_2_C1_X));
 sky130_fd_sc_hd__a221o_2 dbl_en_sky130_fd_sc_hd__and4b_2_C_X_sky130_fd_sc_hd__a221o_2_C1_X_sky130_fd_sc_hd__a221o_2_C1 (.A1(\pwm1_duty[0] ),
    .A2(pwm1_clk_sel_sky130_fd_sc_hd__a211o_2_A1_B1_sky130_fd_sc_hd__a22o_2_X_B1),
    .B1(pwm1_clk_sel_sky130_fd_sc_hd__a211o_2_A1_A2),
    .B2(pwm1_enable),
    .C1(dbl_en_sky130_fd_sc_hd__and4b_2_C_X_sky130_fd_sc_hd__a221o_2_C1_X),
    .X(\u_spi_slave.tx_shift[0]_sky130_fd_sc_hd__a2bb2o_2_B2_A1_N_sky130_fd_sc_hd__nor2_2_Y_B ));
 sky130_fd_sc_hd__dfrtp_2 dbl_en_sky130_fd_sc_hd__dfrtp_2_Q (.CLK(clknet_4_4_0_clk),
    .D(dbl_en_sky130_fd_sc_hd__dfrtp_2_Q_D),
    .RESET_B(net3),
    .Q(net21));
 sky130_fd_sc_hd__mux2_1 dbl_en_sky130_fd_sc_hd__mux2_1_A1 (.A0(\u_reg_bank.wr_data[0] ),
    .A1(net70),
    .S(dbl_en_sky130_fd_sc_hd__mux2_1_A1_S),
    .X(dbl_en_sky130_fd_sc_hd__dfrtp_2_Q_D));
 sky130_fd_sc_hd__or3_2 dbl_en_sky130_fd_sc_hd__mux2_1_A1_S_sky130_fd_sc_hd__or3_2_X (.A(\u_reg_bank.wr_addr[0] ),
    .B(dbl_en_sky130_fd_sc_hd__mux2_1_A1_S_sky130_fd_sc_hd__or3_2_X_B),
    .C(dbl_en_sky130_fd_sc_hd__mux2_1_A1_S_sky130_fd_sc_hd__or3_2_X_C),
    .X(dbl_en_sky130_fd_sc_hd__mux2_1_A1_S));
 sky130_fd_sc_hd__nor2_2 dbl_en_sky130_fd_sc_hd__mux2_1_A1_S_sky130_fd_sc_hd__or3_2_X_B_sky130_fd_sc_hd__nor2_2_B (.A(pwm0_clk_sel_sky130_fd_sc_hd__mux2_1_A0_S_sky130_fd_sc_hd__nor2_2_Y_A),
    .B(dbl_en_sky130_fd_sc_hd__mux2_1_A1_S_sky130_fd_sc_hd__or3_2_X_B),
    .Y(dbl_en_sky130_fd_sc_hd__mux2_1_A1_S_sky130_fd_sc_hd__or3_2_X_B_sky130_fd_sc_hd__nor2_2_B_Y));
 sky130_fd_sc_hd__or2_2 dbl_en_sky130_fd_sc_hd__mux2_1_A1_S_sky130_fd_sc_hd__or3_2_X_B_sky130_fd_sc_hd__or2_2_X (.A(\u_reg_bank.wr_addr[2] ),
    .B(\u_reg_bank.wr_addr[3]_sky130_fd_sc_hd__or4_2_A_X ),
    .X(dbl_en_sky130_fd_sc_hd__mux2_1_A1_S_sky130_fd_sc_hd__or3_2_X_B));
 sky130_fd_sc_hd__nand2_2 dbl_en_sky130_fd_sc_hd__mux2_1_A1_S_sky130_fd_sc_hd__or3_2_X_C_sky130_fd_sc_hd__nand2_2_Y (.A(\u_reg_bank.wr_addr[1] ),
    .B(\u_reg_bank.wr_en ),
    .Y(dbl_en_sky130_fd_sc_hd__mux2_1_A1_S_sky130_fd_sc_hd__or3_2_X_C));
 sky130_fd_sc_hd__and2_2 ena_sky130_fd_sc_hd__and2_2_A (.A(net2),
    .B(net7),
    .X(\u_bg_seq.state[1]_sky130_fd_sc_hd__nand2_2_A_B ));
 sky130_fd_sc_hd__nand2_2 ena_sky130_fd_sc_hd__nand2_2_A (.A(net2),
    .B(net7),
    .Y(\u_bg_seq.updates[1]_sky130_fd_sc_hd__o2111a_2_C1_A2 ));
 sky130_fd_sc_hd__dlygate4sd3_1 hold100 (.A(\pwm1_duty[6] ),
    .X(net100));
 sky130_fd_sc_hd__dlygate4sd3_1 hold101 (.A(\pwm1_duty[3] ),
    .X(net101));
 sky130_fd_sc_hd__dlygate4sd3_1 hold102 (.A(\pwm1_duty[5] ),
    .X(net102));
 sky130_fd_sc_hd__dlygate4sd3_1 hold103 (.A(\u_spi_slave.bit_count[3] ),
    .X(net103));
 sky130_fd_sc_hd__dlygate4sd3_1 hold104 (.A(\pwm0_duty[5] ),
    .X(net104));
 sky130_fd_sc_hd__dlygate4sd3_1 hold105 (.A(\pwm0_duty[4] ),
    .X(net105));
 sky130_fd_sc_hd__dlygate4sd3_1 hold106 (.A(\u_reg_bank.wr_addr[0] ),
    .X(net106));
 sky130_fd_sc_hd__dlygate4sd3_1 hold107 (.A(\rd_addr[2] ),
    .X(net107));
 sky130_fd_sc_hd__dlygate4sd3_1 hold108 (.A(\u_bg_seq.state[2] ),
    .X(net108));
 sky130_fd_sc_hd__dlygate4sd3_1 hold32 (.A(\u_spi_slave.mosi_sync[0] ),
    .X(net32));
 sky130_fd_sc_hd__dlygate4sd3_1 hold33 (.A(\u_spi_slave.cs_sync[1] ),
    .X(net33));
 sky130_fd_sc_hd__dlygate4sd3_1 hold34 (.A(\u_spi_slave.sck_sync[0] ),
    .X(net34));
 sky130_fd_sc_hd__dlygate4sd3_1 hold35 (.A(bias_ok_meta),
    .X(net35));
 sky130_fd_sc_hd__dlygate4sd3_1 hold36 (.A(\u_spi_slave.cs_sync[0] ),
    .X(net36));
 sky130_fd_sc_hd__dlygate4sd3_1 hold37 (.A(\u_spi_slave.sck_sync[1] ),
    .X(net37));
 sky130_fd_sc_hd__dlygate4sd3_1 hold38 (.A(\u_bg_seq.updates[2] ),
    .X(net38));
 sky130_fd_sc_hd__dlygate4sd3_1 hold39 (.A(\u_spi_slave.bit_count[4] ),
    .X(net39));
 sky130_fd_sc_hd__dlygate4sd3_1 hold40 (.A(\u_bg_seq.cnt[0] ),
    .X(net40));
 sky130_fd_sc_hd__dlygate4sd3_1 hold41 (.A(\u_spi_slave.tx_shift[1] ),
    .X(net41));
 sky130_fd_sc_hd__dlygate4sd3_1 hold42 (.A(\u_spi_slave.rw ),
    .X(net42));
 sky130_fd_sc_hd__dlygate4sd3_1 hold43 (.A(\u_spi_slave.rw_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .X(net43));
 sky130_fd_sc_hd__dlygate4sd3_1 hold44 (.A(\u_spi_slave.tx_shift[2] ),
    .X(net44));
 sky130_fd_sc_hd__dlygate4sd3_1 hold45 (.A(\u_spi_slave.rx_shift[6] ),
    .X(net45));
 sky130_fd_sc_hd__dlygate4sd3_1 hold46 (.A(\u_spi_slave.rx_shift[6]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .X(net46));
 sky130_fd_sc_hd__dlygate4sd3_1 hold47 (.A(\u_reg_bank.wr_addr[3] ),
    .X(net47));
 sky130_fd_sc_hd__dlygate4sd3_1 hold48 (.A(\u_reg_bank.wr_addr[6] ),
    .X(net48));
 sky130_fd_sc_hd__dlygate4sd3_1 hold49 (.A(\u_reg_bank.wr_addr[6]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .X(net49));
 sky130_fd_sc_hd__dlygate4sd3_1 hold50 (.A(\u_reg_bank.wr_addr[4] ),
    .X(net50));
 sky130_fd_sc_hd__dlygate4sd3_1 hold51 (.A(\u_reg_bank.wr_addr[4]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .X(net51));
 sky130_fd_sc_hd__dlygate4sd3_1 hold52 (.A(\rd_addr[6] ),
    .X(net52));
 sky130_fd_sc_hd__dlygate4sd3_1 hold53 (.A(\rd_addr[6]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .X(net53));
 sky130_fd_sc_hd__dlygate4sd3_1 hold54 (.A(\u_reg_bank.wr_addr[5] ),
    .X(net54));
 sky130_fd_sc_hd__dlygate4sd3_1 hold55 (.A(\u_reg_bank.wr_addr[5]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .X(net55));
 sky130_fd_sc_hd__dlygate4sd3_1 hold56 (.A(\u_bg_seq.cnt[7] ),
    .X(net56));
 sky130_fd_sc_hd__dlygate4sd3_1 hold57 (.A(\u_spi_slave.tx_shift[0] ),
    .X(net57));
 sky130_fd_sc_hd__dlygate4sd3_1 hold58 (.A(\rd_addr[5] ),
    .X(net58));
 sky130_fd_sc_hd__dlygate4sd3_1 hold59 (.A(\rd_addr[5]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .X(net59));
 sky130_fd_sc_hd__dlygate4sd3_1 hold60 (.A(\rd_addr[4] ),
    .X(net60));
 sky130_fd_sc_hd__dlygate4sd3_1 hold61 (.A(\rd_addr[4]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .X(net61));
 sky130_fd_sc_hd__dlygate4sd3_1 hold62 (.A(\u_spi_slave.tx_shift[5] ),
    .X(net62));
 sky130_fd_sc_hd__dlygate4sd3_1 hold63 (.A(\u_spi_slave.tx_shift[6]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .X(net63));
 sky130_fd_sc_hd__dlygate4sd3_1 hold64 (.A(\u_spi_slave.tx_shift[3] ),
    .X(net64));
 sky130_fd_sc_hd__dlygate4sd3_1 hold65 (.A(\u_spi_slave.rx_shift[0] ),
    .X(net65));
 sky130_fd_sc_hd__dlygate4sd3_1 hold66 (.A(\u_spi_slave.rx_shift[0]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .X(net66));
 sky130_fd_sc_hd__dlygate4sd3_1 hold67 (.A(\u_spi_slave.tx_shift[4] ),
    .X(net67));
 sky130_fd_sc_hd__dlygate4sd3_1 hold68 (.A(\u_bg_seq.hcnt[14] ),
    .X(net68));
 sky130_fd_sc_hd__dlygate4sd3_1 hold69 (.A(\u_spi_slave.bit_count[1] ),
    .X(net69));
 sky130_fd_sc_hd__dlygate4sd3_1 hold70 (.A(net21),
    .X(net70));
 sky130_fd_sc_hd__dlygate4sd3_1 hold71 (.A(\u_spi_slave.rx_shift[1] ),
    .X(net71));
 sky130_fd_sc_hd__dlygate4sd3_1 hold72 (.A(net9),
    .X(net72));
 sky130_fd_sc_hd__dlygate4sd3_1 hold73 (.A(net18),
    .X(net73));
 sky130_fd_sc_hd__dlygate4sd3_1 hold74 (.A(net11),
    .X(net74));
 sky130_fd_sc_hd__dlygate4sd3_1 hold75 (.A(\pwm1_duty[4] ),
    .X(net75));
 sky130_fd_sc_hd__dlygate4sd3_1 hold76 (.A(net17),
    .X(net76));
 sky130_fd_sc_hd__dlygate4sd3_1 hold77 (.A(net28),
    .X(net77));
 sky130_fd_sc_hd__dlygate4sd3_1 hold78 (.A(\u_spi_slave.rx_shift[4] ),
    .X(net78));
 sky130_fd_sc_hd__dlygate4sd3_1 hold79 (.A(\u_spi_slave.rx_shift[4]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .X(net79));
 sky130_fd_sc_hd__dlygate4sd3_1 hold80 (.A(net26),
    .X(net80));
 sky130_fd_sc_hd__dlygate4sd3_1 hold81 (.A(\u_spi_slave.rx_shift[2] ),
    .X(net81));
 sky130_fd_sc_hd__dlygate4sd3_1 hold82 (.A(\u_spi_slave.rx_shift[3] ),
    .X(net82));
 sky130_fd_sc_hd__dlygate4sd3_1 hold83 (.A(net10),
    .X(net83));
 sky130_fd_sc_hd__dlygate4sd3_1 hold84 (.A(net16),
    .X(net84));
 sky130_fd_sc_hd__dlygate4sd3_1 hold85 (.A(\rd_addr[2] ),
    .X(net85));
 sky130_fd_sc_hd__dlygate4sd3_1 hold86 (.A(\u_spi_slave.rx_shift[5] ),
    .X(net86));
 sky130_fd_sc_hd__dlygate4sd3_1 hold87 (.A(net15),
    .X(net87));
 sky130_fd_sc_hd__dlygate4sd3_1 hold88 (.A(\u_bg_seq.updates[1] ),
    .X(net88));
 sky130_fd_sc_hd__dlygate4sd3_1 hold89 (.A(\bg_div_sel[0] ),
    .X(net89));
 sky130_fd_sc_hd__dlygate4sd3_1 hold90 (.A(net30),
    .X(net90));
 sky130_fd_sc_hd__dlygate4sd3_1 hold91 (.A(\u_spi_slave.bit_count[2] ),
    .X(net91));
 sky130_fd_sc_hd__dlygate4sd3_1 hold92 (.A(\u_spi_slave.mosi_sync[1] ),
    .X(net92));
 sky130_fd_sc_hd__dlygate4sd3_1 hold93 (.A(bg_burst),
    .X(net93));
 sky130_fd_sc_hd__dlygate4sd3_1 hold94 (.A(\u_reg_bank.wr_data[4] ),
    .X(net94));
 sky130_fd_sc_hd__dlygate4sd3_1 hold95 (.A(\u_spi_slave.bit_count[0] ),
    .X(net95));
 sky130_fd_sc_hd__dlygate4sd3_1 hold96 (.A(\u_reg_bank.wr_addr[1] ),
    .X(net96));
 sky130_fd_sc_hd__dlygate4sd3_1 hold97 (.A(\u_bg_seq.hcnt[3] ),
    .X(net97));
 sky130_fd_sc_hd__dlygate4sd3_1 hold98 (.A(\pwm1_duty[0] ),
    .X(net98));
 sky130_fd_sc_hd__dlygate4sd3_1 hold99 (.A(\u_bg_seq.state[2] ),
    .X(net99));
 sky130_fd_sc_hd__dfrtp_2 i8_en_sky130_fd_sc_hd__dfrtp_2_Q (.CLK(clknet_4_8_0_clk),
    .D(i8_en_sky130_fd_sc_hd__dfrtp_2_Q_D),
    .RESET_B(net3),
    .Q(net22));
 sky130_fd_sc_hd__and3_2 i8_en_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3_2_X (.A(net2),
    .B(net7),
    .C(\u_bg_seq.state[0] ),
    .X(i8_en_sky130_fd_sc_hd__dfrtp_2_Q_D));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input1 (.A(bias_ok),
    .X(net1));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input2 (.A(ena),
    .X(net2));
 sky130_fd_sc_hd__buf_6 input3 (.A(rst_n),
    .X(net3));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input4 (.A(spi_cs_n),
    .X(net4));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input5 (.A(spi_mosi),
    .X(net5));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input6 (.A(spi_sck),
    .X(net6));
 sky130_fd_sc_hd__clkbuf_16 max_cap31 (.A(net3),
    .X(net31));
 sky130_fd_sc_hd__dfrtp_2 ota_en_sky130_fd_sc_hd__dfrtp_2_Q (.CLK(clknet_4_2_0_clk),
    .D(ota_en_sky130_fd_sc_hd__dfrtp_2_Q_D),
    .RESET_B(net3),
    .Q(net23));
 sky130_fd_sc_hd__o31a_2 ota_en_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o31a_2_X (.A1(\u_bg_seq.state[0] ),
    .A2(net99),
    .A3(ota_en_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o31a_2_X_A3),
    .B1(\u_bg_seq.state[1]_sky130_fd_sc_hd__nand2_2_A_B ),
    .X(ota_en_sky130_fd_sc_hd__dfrtp_2_Q_D));
 sky130_fd_sc_hd__nor2_2 ota_en_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o31a_2_X_A3_sky130_fd_sc_hd__nor2_2_Y (.A(ota_en_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o31a_2_X_A3_sky130_fd_sc_hd__nor2_2_Y_A),
    .B(\u_bg_seq.hcnt[9]_sky130_fd_sc_hd__xnor2_2_A_Y_sky130_fd_sc_hd__a2111oi_2_D1_Y_sky130_fd_sc_hd__nand2_2_A_Y ),
    .Y(ota_en_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o31a_2_X_A3));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output10 (.A(net10),
    .X(bg_trim[1]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output11 (.A(net11),
    .X(bg_trim[2]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output12 (.A(net12),
    .X(bg_trim[3]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output13 (.A(net13),
    .X(bg_valid));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output14 (.A(net14),
    .X(bias_en));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output15 (.A(net15),
    .X(bias_trim[0]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output16 (.A(net16),
    .X(bias_trim[1]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output17 (.A(net17),
    .X(bias_trim[2]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output18 (.A(net18),
    .X(bias_trim[3]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output19 (.A(net19),
    .X(bias_trim[4]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output20 (.A(net20),
    .X(cap));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output21 (.A(net21),
    .X(dbl_en));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output22 (.A(net22),
    .X(i8_en));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output23 (.A(net23),
    .X(ota_en));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output24 (.A(net24),
    .X(phi1));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output25 (.A(net25),
    .X(phi2));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output26 (.A(net26),
    .X(pwm0_clk_sel));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output27 (.A(net27),
    .X(pwm0_out));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output28 (.A(net28),
    .X(pwm1_clk_sel));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output29 (.A(net29),
    .X(pwm1_out));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output30 (.A(net30),
    .X(spi_miso));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output7 (.A(net7),
    .X(bg_en));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output8 (.A(net8),
    .X(bg_ok_combined));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output9 (.A(net9),
    .X(bg_trim[0]));
 sky130_fd_sc_hd__dfrtp_2 phi1_sky130_fd_sc_hd__dfrtp_2_Q (.CLK(clknet_4_2_0_clk),
    .D(phi1_sky130_fd_sc_hd__dfrtp_2_Q_D),
    .RESET_B(net3),
    .Q(net24));
 sky130_fd_sc_hd__and3_2 phi1_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3_2_X (.A(\u_bg_seq.state[0] ),
    .B(phi2_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3_2_X_B),
    .C(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_A_sky130_fd_sc_hd__and4bb_2_C_X_sky130_fd_sc_hd__nor2_2_A_Y),
    .X(phi1_sky130_fd_sc_hd__dfrtp_2_Q_D));
 sky130_fd_sc_hd__dfrtp_2 phi2_sky130_fd_sc_hd__dfrtp_2_Q (.CLK(clknet_4_2_0_clk),
    .D(phi2_sky130_fd_sc_hd__dfrtp_2_Q_D),
    .RESET_B(net3),
    .Q(net25));
 sky130_fd_sc_hd__and3_2 phi2_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3_2_X (.A(net108),
    .B(phi2_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3_2_X_B),
    .C(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_A_sky130_fd_sc_hd__and4bb_2_C_X_sky130_fd_sc_hd__nor2_2_A_Y),
    .X(phi2_sky130_fd_sc_hd__dfrtp_2_Q_D));
 sky130_fd_sc_hd__or4_2 phi2_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3_2_X_B_sky130_fd_sc_hd__or4_2_X (.A(phi2_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3_2_X_B_sky130_fd_sc_hd__or4_2_X_A),
    .B(phi2_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3_2_X_B_sky130_fd_sc_hd__or4_2_X_B),
    .C(\u_bg_seq.cnt[1]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3_2_X_A ),
    .D(phi2_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3_2_X_B_sky130_fd_sc_hd__or4_2_X_D),
    .X(phi2_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3_2_X_B));
 sky130_fd_sc_hd__or4_2 phi2_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3_2_X_B_sky130_fd_sc_hd__or4_2_X_B_sky130_fd_sc_hd__or4_2_X (.A(\u_bg_seq.cnt[3] ),
    .B(\u_bg_seq.cnt[2] ),
    .C(\u_bg_seq.cnt[5] ),
    .D(\u_bg_seq.cnt[4] ),
    .X(phi2_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3_2_X_B_sky130_fd_sc_hd__or4_2_X_B));
 sky130_fd_sc_hd__or2_2 phi2_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3_2_X_B_sky130_fd_sc_hd__or4_2_X_D_sky130_fd_sc_hd__or2_2_X (.A(\u_bg_seq.cnt[7] ),
    .B(\u_bg_seq.cnt[6] ),
    .X(phi2_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3_2_X_B_sky130_fd_sc_hd__or4_2_X_D));
 sky130_fd_sc_hd__or4_2 phi2_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3_2_X_B_sky130_fd_sc_hd__or4_2_X_D_sky130_fd_sc_hd__or4_2_D (.A(\u_bg_seq.cnt[5] ),
    .B(\bg_div_sel[2] ),
    .C(\bg_div_sel[1] ),
    .D(phi2_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3_2_X_B_sky130_fd_sc_hd__or4_2_X_D),
    .X(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_B_sky130_fd_sc_hd__nor2_2_Y_A_sky130_fd_sc_hd__a21boi_2_Y_B1_N));
 sky130_fd_sc_hd__a221o_2 pwm0_clk_sel_sky130_fd_sc_hd__a221o_2_B2 (.A1(\pwm0_duty[2] ),
    .A2(bias_en_sky130_fd_sc_hd__a22o_2_B2_A2),
    .B1(bg_valid_sky130_fd_sc_hd__a221o_2_A1_B1),
    .B2(net26),
    .C1(pwm0_clk_sel_sky130_fd_sc_hd__a221o_2_B2_C1),
    .X(pwm0_clk_sel_sky130_fd_sc_hd__a221o_2_B2_X));
 sky130_fd_sc_hd__a221o_2 pwm0_clk_sel_sky130_fd_sc_hd__a221o_2_B2_C1_sky130_fd_sc_hd__a221o_2_X (.A1(\bg_div_sel[2] ),
    .A2(\rd_addr[5]_sky130_fd_sc_hd__or3_2_A_X_sky130_fd_sc_hd__nor2_2_A_Y ),
    .B1(dbl_en_sky130_fd_sc_hd__and4b_2_C_X_sky130_fd_sc_hd__a221o_2_C1_B1),
    .B2(net11),
    .C1(\u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_C_N_B_sky130_fd_sc_hd__or3_2_C_X ),
    .X(pwm0_clk_sel_sky130_fd_sc_hd__a221o_2_B2_C1));
 sky130_fd_sc_hd__dfrtp_2 pwm0_clk_sel_sky130_fd_sc_hd__dfrtp_2_Q (.CLK(clknet_4_4_0_clk),
    .D(pwm0_clk_sel_sky130_fd_sc_hd__dfrtp_2_Q_D),
    .RESET_B(net3),
    .Q(net26));
 sky130_fd_sc_hd__mux2_1 pwm0_clk_sel_sky130_fd_sc_hd__mux2_1_A0 (.A0(net80),
    .A1(\u_reg_bank.wr_data[2] ),
    .S(pwm0_clk_sel_sky130_fd_sc_hd__mux2_1_A0_S),
    .X(pwm0_clk_sel_sky130_fd_sc_hd__dfrtp_2_Q_D));
 sky130_fd_sc_hd__nor2_2 pwm0_clk_sel_sky130_fd_sc_hd__mux2_1_A0_S_sky130_fd_sc_hd__nor2_2_Y (.A(pwm0_clk_sel_sky130_fd_sc_hd__mux2_1_A0_S_sky130_fd_sc_hd__nor2_2_Y_A),
    .B(pwm1_clk_sel_sky130_fd_sc_hd__mux2_1_A0_S_sky130_fd_sc_hd__nor3_2_Y_C),
    .Y(pwm0_clk_sel_sky130_fd_sc_hd__mux2_1_A0_S));
 sky130_fd_sc_hd__or3b_2 pwm0_clk_sel_sky130_fd_sc_hd__mux2_1_A0_S_sky130_fd_sc_hd__nor2_2_Y_A_sky130_fd_sc_hd__or3b_2_X (.A(\u_reg_bank.wr_addr[0] ),
    .B(\u_reg_bank.wr_addr[1] ),
    .C_N(\u_reg_bank.wr_en ),
    .X(pwm0_clk_sel_sky130_fd_sc_hd__mux2_1_A0_S_sky130_fd_sc_hd__nor2_2_Y_A));
 sky130_fd_sc_hd__dfrtp_2 \pwm0_duty[0]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_6_0_clk),
    .D(\pwm0_duty[0]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net31),
    .Q(\pwm0_duty[0] ));
 sky130_fd_sc_hd__mux2_1 \pwm0_duty[0]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X  (.A0(\u_reg_bank.wr_data[0] ),
    .A1(\pwm0_duty[0] ),
    .S(\u_reg_bank.wr_addr[3]_sky130_fd_sc_hd__or4_2_A_X_sky130_fd_sc_hd__or3b_2_B_X_sky130_fd_sc_hd__or2_2_A_X ),
    .X(\pwm0_duty[0]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__dfrtp_2 \pwm0_duty[1]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_6_0_clk),
    .D(\pwm0_duty[1]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net31),
    .Q(\pwm0_duty[1] ));
 sky130_fd_sc_hd__mux2_1 \pwm0_duty[1]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X  (.A0(\u_reg_bank.wr_data[1] ),
    .A1(\pwm0_duty[1] ),
    .S(\u_reg_bank.wr_addr[3]_sky130_fd_sc_hd__or4_2_A_X_sky130_fd_sc_hd__or3b_2_B_X_sky130_fd_sc_hd__or2_2_A_X ),
    .X(\pwm0_duty[1]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__dfrtp_2 \pwm0_duty[2]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_6_0_clk),
    .D(\pwm0_duty[2]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net31),
    .Q(\pwm0_duty[2] ));
 sky130_fd_sc_hd__mux2_1 \pwm0_duty[2]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X  (.A0(\u_reg_bank.wr_data[2] ),
    .A1(\pwm0_duty[2] ),
    .S(\u_reg_bank.wr_addr[3]_sky130_fd_sc_hd__or4_2_A_X_sky130_fd_sc_hd__or3b_2_B_X_sky130_fd_sc_hd__or2_2_A_X ),
    .X(\pwm0_duty[2]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__dfrtp_2 \pwm0_duty[3]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_12_0_clk),
    .D(\pwm0_duty[3]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net31),
    .Q(\pwm0_duty[3] ));
 sky130_fd_sc_hd__mux2_1 \pwm0_duty[3]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X  (.A0(\u_reg_bank.wr_data[3] ),
    .A1(\pwm0_duty[3] ),
    .S(\u_reg_bank.wr_addr[3]_sky130_fd_sc_hd__or4_2_A_X_sky130_fd_sc_hd__or3b_2_B_X_sky130_fd_sc_hd__or2_2_A_X ),
    .X(\pwm0_duty[3]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__dfrtp_2 \pwm0_duty[4]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_12_0_clk),
    .D(\pwm0_duty[4]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net31),
    .Q(\pwm0_duty[4] ));
 sky130_fd_sc_hd__mux2_1 \pwm0_duty[4]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X  (.A0(net94),
    .A1(net105),
    .S(\u_reg_bank.wr_addr[3]_sky130_fd_sc_hd__or4_2_A_X_sky130_fd_sc_hd__or3b_2_B_X_sky130_fd_sc_hd__or2_2_A_X ),
    .X(\pwm0_duty[4]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__dfrtp_2 \pwm0_duty[5]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_14_0_clk),
    .D(\pwm0_duty[5]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net31),
    .Q(\pwm0_duty[5] ));
 sky130_fd_sc_hd__mux2_1 \pwm0_duty[5]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X  (.A0(\u_reg_bank.wr_data[5] ),
    .A1(net104),
    .S(\u_reg_bank.wr_addr[3]_sky130_fd_sc_hd__or4_2_A_X_sky130_fd_sc_hd__or3b_2_B_X_sky130_fd_sc_hd__or2_2_A_X ),
    .X(\pwm0_duty[5]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__dfrtp_2 \pwm0_duty[6]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_14_0_clk),
    .D(\pwm0_duty[6]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net31),
    .Q(\pwm0_duty[6] ));
 sky130_fd_sc_hd__mux2_1 \pwm0_duty[6]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X  (.A0(\u_reg_bank.wr_data[6] ),
    .A1(\pwm0_duty[6] ),
    .S(\u_reg_bank.wr_addr[3]_sky130_fd_sc_hd__or4_2_A_X_sky130_fd_sc_hd__or3b_2_B_X_sky130_fd_sc_hd__or2_2_A_X ),
    .X(\pwm0_duty[6]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__dfstp_2 \pwm0_duty[7]_sky130_fd_sc_hd__dfstp_2_Q  (.CLK(clknet_4_12_0_clk),
    .D(\pwm0_duty[7]_sky130_fd_sc_hd__dfstp_2_Q_D ),
    .SET_B(net31),
    .Q(\pwm0_duty[7] ));
 sky130_fd_sc_hd__mux2_1 \pwm0_duty[7]_sky130_fd_sc_hd__dfstp_2_Q_D_sky130_fd_sc_hd__mux2_1_X  (.A0(\u_reg_bank.wr_data[7] ),
    .A1(\pwm0_duty[7] ),
    .S(\u_reg_bank.wr_addr[3]_sky130_fd_sc_hd__or4_2_A_X_sky130_fd_sc_hd__or3b_2_B_X_sky130_fd_sc_hd__or2_2_A_X ),
    .X(\pwm0_duty[7]_sky130_fd_sc_hd__dfstp_2_Q_D ));
 sky130_fd_sc_hd__and2_2 pwm0_enable_sky130_fd_sc_hd__and2_2_B (.A(net2),
    .B(pwm0_enable),
    .X(pwm0_enable_sky130_fd_sc_hd__and2_2_B_X));
 sky130_fd_sc_hd__dfstp_2 pwm0_enable_sky130_fd_sc_hd__dfstp_2_Q (.CLK(clknet_4_6_0_clk),
    .D(pwm0_enable_sky130_fd_sc_hd__dfstp_2_Q_D),
    .SET_B(net31),
    .Q(pwm0_enable));
 sky130_fd_sc_hd__mux2_1 pwm0_enable_sky130_fd_sc_hd__dfstp_2_Q_D_sky130_fd_sc_hd__mux2_1_X (.A0(pwm0_enable),
    .A1(\u_reg_bank.wr_data[0] ),
    .S(pwm0_clk_sel_sky130_fd_sc_hd__mux2_1_A0_S),
    .X(pwm0_enable_sky130_fd_sc_hd__dfstp_2_Q_D));
 sky130_fd_sc_hd__dfrtp_2 pwm0_out_sky130_fd_sc_hd__dfrtp_2_Q (.CLK(clknet_1_1__leaf_pwm0_clk),
    .D(pwm0_out_sky130_fd_sc_hd__dfrtp_2_Q_D),
    .RESET_B(\u_pwm0.rst_n ),
    .Q(net27));
 sky130_fd_sc_hd__o221a_2 pwm0_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X (.A1(pwm0_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_A1),
    .A2(\pwm0_duty[7] ),
    .B1(pwm0_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B1),
    .B2(pwm0_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2),
    .C1(pwm0_enable_sky130_fd_sc_hd__and2_2_B_X),
    .X(pwm0_out_sky130_fd_sc_hd__dfrtp_2_Q_D));
 sky130_fd_sc_hd__a41o_2 pwm0_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_A1_sky130_fd_sc_hd__a41o_2_B1 (.A1(\pwm0_duty[4] ),
    .A2(\pwm0_duty[2] ),
    .A3(pwm0_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_A1_sky130_fd_sc_hd__a41o_2_B1_A3),
    .A4(pwm0_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_A1_sky130_fd_sc_hd__a41o_2_B1_A4),
    .B1(pwm0_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_A1),
    .X(pwm0_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B1_sky130_fd_sc_hd__and2_2_X_B));
 sky130_fd_sc_hd__a21bo_2 pwm0_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_A1_sky130_fd_sc_hd__a41o_2_B1_A3_sky130_fd_sc_hd__a21bo_2_X (.A1(\pwm0_duty[1] ),
    .A2(\pwm0_duty[0] ),
    .B1_N(pwm0_width),
    .X(pwm0_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_A1_sky130_fd_sc_hd__a41o_2_B1_A3));
 sky130_fd_sc_hd__and3_2 pwm0_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_A1_sky130_fd_sc_hd__a41o_2_B1_A4_sky130_fd_sc_hd__and3_2_X (.A(\pwm0_duty[6] ),
    .B(\pwm0_duty[5] ),
    .C(\pwm0_duty[3] ),
    .X(pwm0_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_A1_sky130_fd_sc_hd__a41o_2_B1_A4));
 sky130_fd_sc_hd__inv_2 pwm0_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_A1_sky130_fd_sc_hd__inv_2_Y (.A(\u_pwm0.phase[7] ),
    .Y(pwm0_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_A1));
 sky130_fd_sc_hd__and2_2 pwm0_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B1_sky130_fd_sc_hd__and2_2_X (.A(\pwm0_duty[7] ),
    .B(pwm0_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B1_sky130_fd_sc_hd__and2_2_X_B),
    .X(pwm0_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B1));
 sky130_fd_sc_hd__o22a_2 pwm0_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X (.A1(\pwm0_duty[6] ),
    .A2(pwm0_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X_A2),
    .B1(pwm0_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X_B1),
    .B2(pwm0_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X_B2),
    .X(pwm0_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2));
 sky130_fd_sc_hd__o221a_2 pwm0_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X_B1_sky130_fd_sc_hd__o221a_2_X (.A1(\pwm0_duty[5] ),
    .A2(pwm0_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X_B2_sky130_fd_sc_hd__a22o_2_X_B2),
    .B1(\pwm0_duty[4] ),
    .B2(pwm0_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X_B1_sky130_fd_sc_hd__o221a_2_X_B2),
    .C1(pwm0_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X_B1_sky130_fd_sc_hd__o221a_2_X_C1),
    .X(pwm0_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X_B1));
 sky130_fd_sc_hd__inv_2 pwm0_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X_B1_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__inv_2_Y (.A(\u_pwm0.phase[4] ),
    .Y(pwm0_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X_B1_sky130_fd_sc_hd__o221a_2_X_B2));
 sky130_fd_sc_hd__a21o_2 pwm0_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X_B1_sky130_fd_sc_hd__o221a_2_X_C1_sky130_fd_sc_hd__a21o_2_X (.A1(pwm0_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X_B1_sky130_fd_sc_hd__o221a_2_X_C1_sky130_fd_sc_hd__a21o_2_X_A1),
    .A2(\u_pwm0.phase[3]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o22a_2_A2_X ),
    .B1(\u_pwm0.phase[3]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__a22o_2_B2_X ),
    .X(pwm0_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X_B1_sky130_fd_sc_hd__o221a_2_X_C1));
 sky130_fd_sc_hd__a32o_2 pwm0_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X_B1_sky130_fd_sc_hd__o221a_2_X_C1_sky130_fd_sc_hd__a21o_2_X_A1_sky130_fd_sc_hd__a32o_2_X (.A1(pwm0_width),
    .A2(\u_pwm0.phase[1]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__a22o_2_A2_X ),
    .A3(\u_pwm0.phase[1]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__or2_2_B_X ),
    .B1(\pwm0_duty[2] ),
    .B2(\u_pwm0.phase[3]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o22a_2_A2_B2 ),
    .X(pwm0_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X_B1_sky130_fd_sc_hd__o221a_2_X_C1_sky130_fd_sc_hd__a21o_2_X_A1));
 sky130_fd_sc_hd__a22o_2 pwm0_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X_B2_sky130_fd_sc_hd__a22o_2_X (.A1(\pwm0_duty[6] ),
    .A2(pwm0_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X_A2),
    .B1(\pwm0_duty[5] ),
    .B2(pwm0_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X_B2_sky130_fd_sc_hd__a22o_2_X_B2),
    .X(pwm0_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X_B2));
 sky130_fd_sc_hd__inv_2 pwm0_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X_B2_sky130_fd_sc_hd__a22o_2_X_B2_sky130_fd_sc_hd__inv_2_Y (.A(\u_pwm0.phase[5] ),
    .Y(pwm0_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X_B2_sky130_fd_sc_hd__a22o_2_X_B2));
 sky130_fd_sc_hd__dfrtp_2 pwm0_width_sky130_fd_sc_hd__dfrtp_2_Q (.CLK(clknet_4_6_0_clk),
    .D(pwm0_width_sky130_fd_sc_hd__dfrtp_2_Q_D),
    .RESET_B(net31),
    .Q(pwm0_width));
 sky130_fd_sc_hd__mux2_1 pwm0_width_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X (.A0(pwm0_width),
    .A1(\u_reg_bank.wr_data[1] ),
    .S(pwm0_clk_sel_sky130_fd_sc_hd__mux2_1_A0_S),
    .X(pwm0_width_sky130_fd_sc_hd__dfrtp_2_Q_D));
 sky130_fd_sc_hd__a211o_2 pwm1_clk_sel_sky130_fd_sc_hd__a211o_2_A1 (.A1(net28),
    .A2(pwm1_clk_sel_sky130_fd_sc_hd__a211o_2_A1_A2),
    .B1(pwm1_clk_sel_sky130_fd_sc_hd__a211o_2_A1_B1),
    .C1(pwm0_clk_sel_sky130_fd_sc_hd__a221o_2_B2_X),
    .X(pwm1_clk_sel_sky130_fd_sc_hd__a211o_2_A1_X));
 sky130_fd_sc_hd__and3b_2 pwm1_clk_sel_sky130_fd_sc_hd__a211o_2_A1_A2_sky130_fd_sc_hd__and3b_2_X (.A_N(\rd_addr[0] ),
    .B(\rd_addr[1] ),
    .C(\rd_addr[5]_sky130_fd_sc_hd__or3_2_A_X_sky130_fd_sc_hd__nor3b_2_B_Y ),
    .X(pwm1_clk_sel_sky130_fd_sc_hd__a211o_2_A1_A2));
 sky130_fd_sc_hd__a22o_2 pwm1_clk_sel_sky130_fd_sc_hd__a211o_2_A1_B1_sky130_fd_sc_hd__a22o_2_X (.A1(net17),
    .A2(bias_en_sky130_fd_sc_hd__a22o_2_B2_B1),
    .B1(pwm1_clk_sel_sky130_fd_sc_hd__a211o_2_A1_B1_sky130_fd_sc_hd__a22o_2_X_B1),
    .B2(\pwm1_duty[2] ),
    .X(pwm1_clk_sel_sky130_fd_sc_hd__a211o_2_A1_B1));
 sky130_fd_sc_hd__dfrtp_2 pwm1_clk_sel_sky130_fd_sc_hd__dfrtp_2_Q (.CLK(clknet_4_4_0_clk),
    .D(pwm1_clk_sel_sky130_fd_sc_hd__dfrtp_2_Q_D),
    .RESET_B(net3),
    .Q(net28));
 sky130_fd_sc_hd__mux2_1 pwm1_clk_sel_sky130_fd_sc_hd__mux2_1_A0 (.A0(net77),
    .A1(\u_reg_bank.wr_data[2] ),
    .S(pwm1_clk_sel_sky130_fd_sc_hd__mux2_1_A0_S),
    .X(pwm1_clk_sel_sky130_fd_sc_hd__dfrtp_2_Q_D));
 sky130_fd_sc_hd__nor3_2 pwm1_clk_sel_sky130_fd_sc_hd__mux2_1_A0_S_sky130_fd_sc_hd__nor3_2_Y (.A(\u_reg_bank.wr_addr[0] ),
    .B(dbl_en_sky130_fd_sc_hd__mux2_1_A1_S_sky130_fd_sc_hd__or3_2_X_C),
    .C(pwm1_clk_sel_sky130_fd_sc_hd__mux2_1_A0_S_sky130_fd_sc_hd__nor3_2_Y_C),
    .Y(pwm1_clk_sel_sky130_fd_sc_hd__mux2_1_A0_S));
 sky130_fd_sc_hd__inv_2 pwm1_clk_sel_sky130_fd_sc_hd__mux2_1_A0_S_sky130_fd_sc_hd__nor3_2_Y_C_sky130_fd_sc_hd__inv_2_A (.A(pwm1_clk_sel_sky130_fd_sc_hd__mux2_1_A0_S_sky130_fd_sc_hd__nor3_2_Y_C),
    .Y(pwm1_clk_sel_sky130_fd_sc_hd__mux2_1_A0_S_sky130_fd_sc_hd__nor3_2_Y_C_sky130_fd_sc_hd__inv_2_A_Y));
 sky130_fd_sc_hd__and4b_2 pwm1_clk_sel_sky130_fd_sc_hd__mux2_1_A0_S_sky130_fd_sc_hd__nor3_2_Y_C_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__and4b_2_C (.A_N(\u_reg_bank.wr_addr[1] ),
    .B(\u_reg_bank.wr_en ),
    .C(pwm1_clk_sel_sky130_fd_sc_hd__mux2_1_A0_S_sky130_fd_sc_hd__nor3_2_Y_C_sky130_fd_sc_hd__inv_2_A_Y),
    .D(\u_reg_bank.wr_addr[0] ),
    .X(pwm1_clk_sel_sky130_fd_sc_hd__mux2_1_A0_S_sky130_fd_sc_hd__nor3_2_Y_C_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__and4b_2_C_X));
 sky130_fd_sc_hd__dfrtp_2 \pwm1_duty[0]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_3_0_clk),
    .D(\pwm1_duty[0]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net31),
    .Q(\pwm1_duty[0] ));
 sky130_fd_sc_hd__mux2_1 \pwm1_duty[0]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X  (.A0(net98),
    .A1(\u_reg_bank.wr_data[0] ),
    .S(pwm1_clk_sel_sky130_fd_sc_hd__mux2_1_A0_S_sky130_fd_sc_hd__nor3_2_Y_C_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__and4b_2_C_X),
    .X(\pwm1_duty[0]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__dfrtp_2 \pwm1_duty[1]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_3_0_clk),
    .D(\pwm1_duty[1]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net31),
    .Q(\pwm1_duty[1] ));
 sky130_fd_sc_hd__mux2_1 \pwm1_duty[1]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X  (.A0(\pwm1_duty[1] ),
    .A1(\u_reg_bank.wr_data[1] ),
    .S(pwm1_clk_sel_sky130_fd_sc_hd__mux2_1_A0_S_sky130_fd_sc_hd__nor3_2_Y_C_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__and4b_2_C_X),
    .X(\pwm1_duty[1]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__dfrtp_2 \pwm1_duty[2]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_3_0_clk),
    .D(\pwm1_duty[2]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net31),
    .Q(\pwm1_duty[2] ));
 sky130_fd_sc_hd__mux2_1 \pwm1_duty[2]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X  (.A0(\pwm1_duty[2] ),
    .A1(\u_reg_bank.wr_data[2] ),
    .S(pwm1_clk_sel_sky130_fd_sc_hd__mux2_1_A0_S_sky130_fd_sc_hd__nor3_2_Y_C_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__and4b_2_C_X),
    .X(\pwm1_duty[2]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__dfrtp_2 \pwm1_duty[3]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_9_0_clk),
    .D(\pwm1_duty[3]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net31),
    .Q(\pwm1_duty[3] ));
 sky130_fd_sc_hd__mux2_1 \pwm1_duty[3]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X  (.A0(net101),
    .A1(\u_reg_bank.wr_data[3] ),
    .S(pwm1_clk_sel_sky130_fd_sc_hd__mux2_1_A0_S_sky130_fd_sc_hd__nor3_2_Y_C_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__and4b_2_C_X),
    .X(\pwm1_duty[3]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__dfrtp_2 \pwm1_duty[4]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_11_0_clk),
    .D(\pwm1_duty[4]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net31),
    .Q(\pwm1_duty[4] ));
 sky130_fd_sc_hd__mux2_1 \pwm1_duty[4]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X  (.A0(net75),
    .A1(\u_reg_bank.wr_data[4] ),
    .S(pwm1_clk_sel_sky130_fd_sc_hd__mux2_1_A0_S_sky130_fd_sc_hd__nor3_2_Y_C_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__and4b_2_C_X),
    .X(\pwm1_duty[4]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__dfrtp_2 \pwm1_duty[5]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_14_0_clk),
    .D(\pwm1_duty[5]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net31),
    .Q(\pwm1_duty[5] ));
 sky130_fd_sc_hd__mux2_1 \pwm1_duty[5]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X  (.A0(net102),
    .A1(\u_reg_bank.wr_data[5] ),
    .S(pwm1_clk_sel_sky130_fd_sc_hd__mux2_1_A0_S_sky130_fd_sc_hd__nor3_2_Y_C_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__and4b_2_C_X),
    .X(\pwm1_duty[5]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__dfrtp_2 \pwm1_duty[6]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_14_0_clk),
    .D(\pwm1_duty[6]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net31),
    .Q(\pwm1_duty[6] ));
 sky130_fd_sc_hd__mux2_1 \pwm1_duty[6]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X  (.A0(net100),
    .A1(\u_reg_bank.wr_data[6] ),
    .S(pwm1_clk_sel_sky130_fd_sc_hd__mux2_1_A0_S_sky130_fd_sc_hd__nor3_2_Y_C_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__and4b_2_C_X),
    .X(\pwm1_duty[6]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__dfstp_2 \pwm1_duty[7]_sky130_fd_sc_hd__dfstp_2_Q  (.CLK(clknet_4_9_0_clk),
    .D(\pwm1_duty[7]_sky130_fd_sc_hd__dfstp_2_Q_D ),
    .SET_B(net31),
    .Q(\pwm1_duty[7] ));
 sky130_fd_sc_hd__mux2_1 \pwm1_duty[7]_sky130_fd_sc_hd__dfstp_2_Q_D_sky130_fd_sc_hd__mux2_1_X  (.A0(\pwm1_duty[7] ),
    .A1(\u_reg_bank.wr_data[7] ),
    .S(pwm1_clk_sel_sky130_fd_sc_hd__mux2_1_A0_S_sky130_fd_sc_hd__nor3_2_Y_C_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__and4b_2_C_X),
    .X(\pwm1_duty[7]_sky130_fd_sc_hd__dfstp_2_Q_D ));
 sky130_fd_sc_hd__and2_2 pwm1_enable_sky130_fd_sc_hd__and2_2_B (.A(net2),
    .B(pwm1_enable),
    .X(pwm1_enable_sky130_fd_sc_hd__and2_2_B_X));
 sky130_fd_sc_hd__dfstp_2 pwm1_enable_sky130_fd_sc_hd__dfstp_2_Q (.CLK(clknet_4_3_0_clk),
    .D(pwm1_enable_sky130_fd_sc_hd__dfstp_2_Q_D),
    .SET_B(net31),
    .Q(pwm1_enable));
 sky130_fd_sc_hd__mux2_1 pwm1_enable_sky130_fd_sc_hd__dfstp_2_Q_D_sky130_fd_sc_hd__mux2_1_X (.A0(pwm1_enable),
    .A1(\u_reg_bank.wr_data[0] ),
    .S(pwm1_clk_sel_sky130_fd_sc_hd__mux2_1_A0_S),
    .X(pwm1_enable_sky130_fd_sc_hd__dfstp_2_Q_D));
 sky130_fd_sc_hd__dfrtp_2 pwm1_out_sky130_fd_sc_hd__dfrtp_2_Q (.CLK(clknet_1_1__leaf_pwm1_clk),
    .D(pwm1_out_sky130_fd_sc_hd__dfrtp_2_Q_D),
    .RESET_B(\u_pwm0.rst_n ),
    .Q(net29));
 sky130_fd_sc_hd__o221a_2 pwm1_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X (.A1(pwm1_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_A1),
    .A2(\pwm1_duty[7] ),
    .B1(pwm1_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B1),
    .B2(pwm1_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2),
    .C1(pwm1_enable_sky130_fd_sc_hd__and2_2_B_X),
    .X(pwm1_out_sky130_fd_sc_hd__dfrtp_2_Q_D));
 sky130_fd_sc_hd__a41o_2 pwm1_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_A1_sky130_fd_sc_hd__a41o_2_B1 (.A1(\pwm1_duty[6] ),
    .A2(\pwm1_duty[5] ),
    .A3(pwm1_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_A1_sky130_fd_sc_hd__a41o_2_B1_A3),
    .A4(pwm1_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_A1_sky130_fd_sc_hd__a41o_2_B1_A4),
    .B1(pwm1_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_A1),
    .X(pwm1_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B1_sky130_fd_sc_hd__and2_2_X_B));
 sky130_fd_sc_hd__a21bo_2 pwm1_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_A1_sky130_fd_sc_hd__a41o_2_B1_A3_sky130_fd_sc_hd__a21bo_2_X (.A1(\pwm1_duty[1] ),
    .A2(\pwm1_duty[0] ),
    .B1_N(pwm1_width),
    .X(pwm1_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_A1_sky130_fd_sc_hd__a41o_2_B1_A3));
 sky130_fd_sc_hd__and3_2 pwm1_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_A1_sky130_fd_sc_hd__a41o_2_B1_A4_sky130_fd_sc_hd__and3_2_X (.A(\pwm1_duty[4] ),
    .B(\pwm1_duty[3] ),
    .C(\pwm1_duty[2] ),
    .X(pwm1_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_A1_sky130_fd_sc_hd__a41o_2_B1_A4));
 sky130_fd_sc_hd__inv_2 pwm1_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_A1_sky130_fd_sc_hd__inv_2_Y (.A(\u_pwm1.phase[7] ),
    .Y(pwm1_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_A1));
 sky130_fd_sc_hd__and2_2 pwm1_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B1_sky130_fd_sc_hd__and2_2_X (.A(\pwm1_duty[7] ),
    .B(pwm1_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B1_sky130_fd_sc_hd__and2_2_X_B),
    .X(pwm1_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B1));
 sky130_fd_sc_hd__o22a_2 pwm1_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X (.A1(\pwm1_duty[6] ),
    .A2(pwm1_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X_A2),
    .B1(pwm1_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X_B1),
    .B2(pwm1_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X_B2),
    .X(pwm1_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2));
 sky130_fd_sc_hd__o221a_2 pwm1_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X_B1_sky130_fd_sc_hd__o221a_2_X (.A1(\pwm1_duty[5] ),
    .A2(pwm1_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X_B2_sky130_fd_sc_hd__a22o_2_X_B2),
    .B1(\pwm1_duty[4] ),
    .B2(pwm1_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X_B1_sky130_fd_sc_hd__o221a_2_X_B2),
    .C1(pwm1_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X_B1_sky130_fd_sc_hd__o221a_2_X_C1),
    .X(pwm1_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X_B1));
 sky130_fd_sc_hd__inv_2 pwm1_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X_B1_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__inv_2_Y (.A(\u_pwm1.phase[4] ),
    .Y(pwm1_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X_B1_sky130_fd_sc_hd__o221a_2_X_B2));
 sky130_fd_sc_hd__a221o_2 pwm1_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X_B1_sky130_fd_sc_hd__o221a_2_X_C1_sky130_fd_sc_hd__a221o_2_X (.A1(\pwm1_duty[4] ),
    .A2(pwm1_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X_B1_sky130_fd_sc_hd__o221a_2_X_B2),
    .B1(pwm1_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X_B1_sky130_fd_sc_hd__o221a_2_X_C1_sky130_fd_sc_hd__a221o_2_X_B1),
    .B2(pwm1_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X_B1_sky130_fd_sc_hd__o221a_2_X_C1_sky130_fd_sc_hd__a221o_2_X_B2),
    .C1(pwm1_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X_B1_sky130_fd_sc_hd__o221a_2_X_C1_sky130_fd_sc_hd__a221o_2_X_C1),
    .X(pwm1_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X_B1_sky130_fd_sc_hd__o221a_2_X_C1));
 sky130_fd_sc_hd__nand2b_2 pwm1_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X_B1_sky130_fd_sc_hd__o221a_2_X_C1_sky130_fd_sc_hd__a221o_2_X_B1_sky130_fd_sc_hd__nand2b_2_Y (.A_N(\pwm1_duty[3] ),
    .B(\u_pwm1.phase[3] ),
    .Y(pwm1_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X_B1_sky130_fd_sc_hd__o221a_2_X_C1_sky130_fd_sc_hd__a221o_2_X_B1));
 sky130_fd_sc_hd__a22o_2 pwm1_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X_B1_sky130_fd_sc_hd__o221a_2_X_C1_sky130_fd_sc_hd__a221o_2_X_B2_sky130_fd_sc_hd__a22o_2_X (.A1(\pwm1_duty[2] ),
    .A2(\u_pwm1.phase[1]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o221a_2_B2_A2 ),
    .B1(\u_pwm1.phase[1]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__a22o_2_A2_X ),
    .B2(\u_pwm1.phase[1]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o221a_2_B2_X ),
    .X(pwm1_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X_B1_sky130_fd_sc_hd__o221a_2_X_C1_sky130_fd_sc_hd__a221o_2_X_B2));
 sky130_fd_sc_hd__and2b_2 pwm1_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X_B1_sky130_fd_sc_hd__o221a_2_X_C1_sky130_fd_sc_hd__a221o_2_X_C1_sky130_fd_sc_hd__and2b_2_X (.A_N(\u_pwm1.phase[3] ),
    .B(\pwm1_duty[3] ),
    .X(pwm1_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X_B1_sky130_fd_sc_hd__o221a_2_X_C1_sky130_fd_sc_hd__a221o_2_X_C1));
 sky130_fd_sc_hd__a22o_2 pwm1_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X_B2_sky130_fd_sc_hd__a22o_2_X (.A1(\pwm1_duty[6] ),
    .A2(pwm1_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X_A2),
    .B1(\pwm1_duty[5] ),
    .B2(pwm1_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X_B2_sky130_fd_sc_hd__a22o_2_X_B2),
    .X(pwm1_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X_B2));
 sky130_fd_sc_hd__inv_2 pwm1_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X_B2_sky130_fd_sc_hd__a22o_2_X_B2_sky130_fd_sc_hd__inv_2_Y (.A(\u_pwm1.phase[5] ),
    .Y(pwm1_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X_B2_sky130_fd_sc_hd__a22o_2_X_B2));
 sky130_fd_sc_hd__dfrtp_2 pwm1_width_sky130_fd_sc_hd__dfrtp_2_Q (.CLK(clknet_4_3_0_clk),
    .D(pwm1_width_sky130_fd_sc_hd__dfrtp_2_Q_D),
    .RESET_B(net31),
    .Q(pwm1_width));
 sky130_fd_sc_hd__mux2_1 pwm1_width_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X (.A0(pwm1_width),
    .A1(\u_reg_bank.wr_data[1] ),
    .S(pwm1_clk_sel_sky130_fd_sc_hd__mux2_1_A0_S),
    .X(pwm1_width_sky130_fd_sc_hd__dfrtp_2_Q_D));
 sky130_fd_sc_hd__dfrtp_2 \rd_addr[0]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_5_0_clk),
    .D(\rd_addr[0]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net31),
    .Q(\rd_addr[0] ));
 sky130_fd_sc_hd__mux2_1 \rd_addr[0]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X  (.A0(net92),
    .A1(\rd_addr[0] ),
    .S(\u_spi_slave.rw_sky130_fd_sc_hd__or3b_2_A_B_sky130_fd_sc_hd__or2_2_B_X ),
    .X(\rd_addr[0]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__dfrtp_2 \rd_addr[1]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_7_0_clk),
    .D(\rd_addr[1]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net31),
    .Q(\rd_addr[1] ));
 sky130_fd_sc_hd__mux2_1 \rd_addr[1]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X  (.A0(net65),
    .A1(\rd_addr[1] ),
    .S(\u_spi_slave.rw_sky130_fd_sc_hd__or3b_2_A_B_sky130_fd_sc_hd__or2_2_B_X ),
    .X(\rd_addr[1]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__dfrtp_2 \rd_addr[2]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_7_0_clk),
    .D(\rd_addr[2]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net31),
    .Q(\rd_addr[2] ));
 sky130_fd_sc_hd__mux2_1 \rd_addr[2]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X  (.A0(net71),
    .A1(net85),
    .S(\u_spi_slave.rw_sky130_fd_sc_hd__or3b_2_A_B_sky130_fd_sc_hd__or2_2_B_X ),
    .X(\rd_addr[2]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__dfrtp_2 \rd_addr[3]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_5_0_clk),
    .D(\rd_addr[3]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net31),
    .Q(\rd_addr[3] ));
 sky130_fd_sc_hd__mux2_1 \rd_addr[3]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X  (.A0(net81),
    .A1(\rd_addr[3] ),
    .S(\u_spi_slave.rw_sky130_fd_sc_hd__or3b_2_A_B_sky130_fd_sc_hd__or2_2_B_X ),
    .X(\rd_addr[3]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__dfrtp_2 \rd_addr[4]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_5_0_clk),
    .D(net61),
    .RESET_B(net31),
    .Q(\rd_addr[4] ));
 sky130_fd_sc_hd__mux2_1 \rd_addr[4]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X  (.A0(\u_spi_slave.rx_shift[3] ),
    .A1(net60),
    .S(\u_spi_slave.rw_sky130_fd_sc_hd__or3b_2_A_B_sky130_fd_sc_hd__or2_2_B_X ),
    .X(\rd_addr[4]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__dfrtp_2 \rd_addr[5]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_5_0_clk),
    .D(net59),
    .RESET_B(net31),
    .Q(\rd_addr[5] ));
 sky130_fd_sc_hd__mux2_1 \rd_addr[5]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X  (.A0(\u_spi_slave.rx_shift[4] ),
    .A1(net58),
    .S(\u_spi_slave.rw_sky130_fd_sc_hd__or3b_2_A_B_sky130_fd_sc_hd__or2_2_B_X ),
    .X(\rd_addr[5]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__or3_2 \rd_addr[5]_sky130_fd_sc_hd__or3_2_A  (.A(\rd_addr[5] ),
    .B(\rd_addr[4] ),
    .C(\rd_addr[6] ),
    .X(\rd_addr[5]_sky130_fd_sc_hd__or3_2_A_X ));
 sky130_fd_sc_hd__nor2_2 \rd_addr[5]_sky130_fd_sc_hd__or3_2_A_X_sky130_fd_sc_hd__nor2_2_A  (.A(\rd_addr[5]_sky130_fd_sc_hd__or3_2_A_X ),
    .B(\rd_addr[5]_sky130_fd_sc_hd__or3_2_A_X_sky130_fd_sc_hd__nor2_2_A_B ),
    .Y(\rd_addr[5]_sky130_fd_sc_hd__or3_2_A_X_sky130_fd_sc_hd__nor2_2_A_Y ));
 sky130_fd_sc_hd__or4b_2 \rd_addr[5]_sky130_fd_sc_hd__or3_2_A_X_sky130_fd_sc_hd__nor2_2_A_B_sky130_fd_sc_hd__or4b_2_X  (.A(\rd_addr[0] ),
    .B(\rd_addr[1] ),
    .C(\rd_addr[2] ),
    .D_N(\rd_addr[3] ),
    .X(\rd_addr[5]_sky130_fd_sc_hd__or3_2_A_X_sky130_fd_sc_hd__nor2_2_A_B ));
 sky130_fd_sc_hd__nor3_2 \rd_addr[5]_sky130_fd_sc_hd__or3_2_A_X_sky130_fd_sc_hd__nor3_2_C  (.A(\rd_addr[2] ),
    .B(\rd_addr[3] ),
    .C(\rd_addr[5]_sky130_fd_sc_hd__or3_2_A_X ),
    .Y(\rd_addr[5]_sky130_fd_sc_hd__or3_2_A_X_sky130_fd_sc_hd__nor3_2_C_Y ));
 sky130_fd_sc_hd__and3_2 \rd_addr[5]_sky130_fd_sc_hd__or3_2_A_X_sky130_fd_sc_hd__nor3_2_C_Y_sky130_fd_sc_hd__and3_2_C  (.A(\rd_addr[0] ),
    .B(\rd_addr[1] ),
    .C(\rd_addr[5]_sky130_fd_sc_hd__or3_2_A_X_sky130_fd_sc_hd__nor3_2_C_Y ),
    .X(bias_en_sky130_fd_sc_hd__a22o_2_B2_A2));
 sky130_fd_sc_hd__and3b_2 \rd_addr[5]_sky130_fd_sc_hd__or3_2_A_X_sky130_fd_sc_hd__nor3_2_C_Y_sky130_fd_sc_hd__and3b_2_B  (.A_N(\rd_addr[1] ),
    .B(\rd_addr[5]_sky130_fd_sc_hd__or3_2_A_X_sky130_fd_sc_hd__nor3_2_C_Y ),
    .C(\rd_addr[0] ),
    .X(bias_en_sky130_fd_sc_hd__a22o_2_B2_B1));
 sky130_fd_sc_hd__nor3b_2 \rd_addr[5]_sky130_fd_sc_hd__or3_2_A_X_sky130_fd_sc_hd__nor3_2_C_Y_sky130_fd_sc_hd__nor3b_2_C_N  (.A(\rd_addr[0] ),
    .B(\rd_addr[1] ),
    .C_N(\rd_addr[5]_sky130_fd_sc_hd__or3_2_A_X_sky130_fd_sc_hd__nor3_2_C_Y ),
    .Y(dbl_en_sky130_fd_sc_hd__and4b_2_C_X_sky130_fd_sc_hd__a221o_2_C1_B1));
 sky130_fd_sc_hd__nor3b_2 \rd_addr[5]_sky130_fd_sc_hd__or3_2_A_X_sky130_fd_sc_hd__nor3b_2_B  (.A(\rd_addr[3] ),
    .B(\rd_addr[5]_sky130_fd_sc_hd__or3_2_A_X ),
    .C_N(\rd_addr[2] ),
    .Y(\rd_addr[5]_sky130_fd_sc_hd__or3_2_A_X_sky130_fd_sc_hd__nor3b_2_B_Y ));
 sky130_fd_sc_hd__and3b_2 \rd_addr[5]_sky130_fd_sc_hd__or3_2_A_X_sky130_fd_sc_hd__nor3b_2_B_Y_sky130_fd_sc_hd__and3b_2_B  (.A_N(\rd_addr[1] ),
    .B(\rd_addr[5]_sky130_fd_sc_hd__or3_2_A_X_sky130_fd_sc_hd__nor3b_2_B_Y ),
    .C(\rd_addr[0] ),
    .X(pwm1_clk_sel_sky130_fd_sc_hd__a211o_2_A1_B1_sky130_fd_sc_hd__a22o_2_X_B1));
 sky130_fd_sc_hd__dfrtp_2 \rd_addr[6]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_5_0_clk),
    .D(net53),
    .RESET_B(net31),
    .Q(\rd_addr[6] ));
 sky130_fd_sc_hd__mux2_1 \rd_addr[6]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X  (.A0(\u_spi_slave.rx_shift[5] ),
    .A1(net52),
    .S(\u_spi_slave.rw_sky130_fd_sc_hd__or3b_2_A_B_sky130_fd_sc_hd__or2_2_B_X ),
    .X(\rd_addr[6]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__dfrtp_2 spi_miso_sky130_fd_sc_hd__dfrtp_2_Q (.CLK(clknet_4_15_0_clk),
    .D(spi_miso_sky130_fd_sc_hd__dfrtp_2_Q_D),
    .RESET_B(net31),
    .Q(net30));
 sky130_fd_sc_hd__o221a_2 spi_miso_sky130_fd_sc_hd__o221a_2_A1 (.A1(net90),
    .A2(spi_miso_sky130_fd_sc_hd__o221a_2_A1_A2),
    .B1(\u_spi_slave.tx_shift[6]_sky130_fd_sc_hd__a21o_2_A1_X ),
    .B2(spi_miso_sky130_fd_sc_hd__o221a_2_A1_B2),
    .C1(spi_miso_sky130_fd_sc_hd__o221a_2_A1_C1),
    .X(spi_miso_sky130_fd_sc_hd__dfrtp_2_Q_D));
 sky130_fd_sc_hd__inv_2 spi_miso_sky130_fd_sc_hd__o221a_2_A1_A2_sky130_fd_sc_hd__inv_2_Y (.A(\u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_C_N_X ),
    .Y(spi_miso_sky130_fd_sc_hd__o221a_2_A1_A2));
 sky130_fd_sc_hd__inv_2 spi_miso_sky130_fd_sc_hd__o221a_2_A1_C1_sky130_fd_sc_hd__inv_2_Y (.A(\u_spi_slave.cs_sync[2] ),
    .Y(spi_miso_sky130_fd_sc_hd__o221a_2_A1_C1));
 sky130_fd_sc_hd__dfrtp_2 \u_bg_seq.cnt[0]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_0_0_clk),
    .D(\u_bg_seq.cnt[0]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net3),
    .Q(\u_bg_seq.cnt[0] ));
 sky130_fd_sc_hd__nor2_2 \u_bg_seq.cnt[0]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__nor2_2_Y  (.A(net40),
    .B(\u_bg_seq.updates[1]_sky130_fd_sc_hd__o2111a_2_C1_A2 ),
    .Y(\u_bg_seq.cnt[0]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__dfrtp_2 \u_bg_seq.cnt[10]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_3_0_clk),
    .D(\u_bg_seq.cnt[10]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net31),
    .Q(\u_bg_seq.cnt[10] ));
 sky130_fd_sc_hd__and3_2 \u_bg_seq.cnt[10]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3_2_X  (.A(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_A_sky130_fd_sc_hd__and4bb_2_C_X_sky130_fd_sc_hd__nor2_2_A_Y),
    .B(\u_bg_seq.cnt[10]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3_2_X_B ),
    .C(\u_bg_seq.cnt[10]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3_2_X_C ),
    .X(\u_bg_seq.cnt[10]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__or2_2 \u_bg_seq.cnt[10]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3_2_X_B_sky130_fd_sc_hd__or2_2_X  (.A(\u_bg_seq.cnt[10] ),
    .B(\u_bg_seq.cnt[9]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X_A_N ),
    .X(\u_bg_seq.cnt[10]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3_2_X_B ));
 sky130_fd_sc_hd__nand2_2 \u_bg_seq.cnt[10]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3_2_X_C_sky130_fd_sc_hd__nand2_2_Y  (.A(\u_bg_seq.cnt[10] ),
    .B(\u_bg_seq.cnt[9]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X_A_N ),
    .Y(\u_bg_seq.cnt[10]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3_2_X_C ));
 sky130_fd_sc_hd__a31o_2 \u_bg_seq.cnt[11]_sky130_fd_sc_hd__a31o_2_B1  (.A1(\u_bg_seq.cnt[11]_sky130_fd_sc_hd__a31o_2_B1_A1 ),
    .A2(\bg_div_sel[2] ),
    .A3(\bg_div_sel[1] ),
    .B1(\u_bg_seq.cnt[11] ),
    .X(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_A_sky130_fd_sc_hd__and4b_2_X_A_N));
 sky130_fd_sc_hd__inv_2 \u_bg_seq.cnt[11]_sky130_fd_sc_hd__a31o_2_B1_A1_sky130_fd_sc_hd__inv_2_Y  (.A(\u_bg_seq.cnt[9] ),
    .Y(\u_bg_seq.cnt[11]_sky130_fd_sc_hd__a31o_2_B1_A1 ));
 sky130_fd_sc_hd__dfrtp_2 \u_bg_seq.cnt[11]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_2_0_clk),
    .D(\u_bg_seq.cnt[11]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net31),
    .Q(\u_bg_seq.cnt[11] ));
 sky130_fd_sc_hd__nor2_2 \u_bg_seq.cnt[11]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__nor2_2_Y  (.A(\u_bg_seq.cnt[11]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__nor2_2_Y_A ),
    .B(\u_bg_seq.cnt[11]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__nor2_2_Y_B ),
    .Y(\u_bg_seq.cnt[11]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__xor2_2 \u_bg_seq.cnt[11]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__nor2_2_Y_B_sky130_fd_sc_hd__xor2_2_X  (.A(\u_bg_seq.cnt[11] ),
    .B(\u_bg_seq.cnt[10]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3_2_X_C ),
    .X(\u_bg_seq.cnt[11]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__nor2_2_Y_B ));
 sky130_fd_sc_hd__or4_2 \u_bg_seq.cnt[11]_sky130_fd_sc_hd__or4_2_C  (.A(\u_bg_seq.cnt[9] ),
    .B(\u_bg_seq.cnt[8] ),
    .C(\u_bg_seq.cnt[11] ),
    .D(\u_bg_seq.cnt[10] ),
    .X(phi2_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3_2_X_B_sky130_fd_sc_hd__or4_2_X_A));
 sky130_fd_sc_hd__dfrtp_2 \u_bg_seq.cnt[1]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_0_0_clk),
    .D(\u_bg_seq.cnt[1]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net3),
    .Q(\u_bg_seq.cnt[1] ));
 sky130_fd_sc_hd__and3_2 \u_bg_seq.cnt[1]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3_2_X  (.A(\u_bg_seq.cnt[1]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3_2_X_A ),
    .B(\u_bg_seq.cnt[1]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3_2_X_B ),
    .C(\u_bg_seq.state[1]_sky130_fd_sc_hd__nand2_2_A_B ),
    .X(\u_bg_seq.cnt[1]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__or2_2 \u_bg_seq.cnt[1]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3_2_X_A_sky130_fd_sc_hd__or2_2_X  (.A(\u_bg_seq.cnt[0] ),
    .B(\u_bg_seq.cnt[1] ),
    .X(\u_bg_seq.cnt[1]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3_2_X_A ));
 sky130_fd_sc_hd__nand2_2 \u_bg_seq.cnt[1]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3_2_X_B_sky130_fd_sc_hd__nand2_2_Y  (.A(\u_bg_seq.cnt[0] ),
    .B(\u_bg_seq.cnt[1] ),
    .Y(\u_bg_seq.cnt[1]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3_2_X_B ));
 sky130_fd_sc_hd__dfrtp_2 \u_bg_seq.cnt[2]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_0_0_clk),
    .D(\u_bg_seq.cnt[2]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net3),
    .Q(\u_bg_seq.cnt[2] ));
 sky130_fd_sc_hd__a21oi_2 \u_bg_seq.cnt[2]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a21oi_2_Y  (.A1(\u_bg_seq.cnt[2]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a21oi_2_Y_A1 ),
    .A2(\u_bg_seq.cnt[1]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3_2_X_B ),
    .B1(\u_bg_seq.cnt[2]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a21oi_2_Y_B1 ),
    .Y(\u_bg_seq.cnt[2]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__inv_2 \u_bg_seq.cnt[2]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a21oi_2_Y_A1_sky130_fd_sc_hd__inv_2_Y  (.A(\u_bg_seq.cnt[2] ),
    .Y(\u_bg_seq.cnt[2]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a21oi_2_Y_A1 ));
 sky130_fd_sc_hd__o21ai_2 \u_bg_seq.cnt[2]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a21oi_2_Y_B1_sky130_fd_sc_hd__o21ai_2_Y  (.A1(\u_bg_seq.cnt[2]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a21oi_2_Y_A1 ),
    .A2(\u_bg_seq.cnt[1]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3_2_X_B ),
    .B1(\u_bg_seq.state[1]_sky130_fd_sc_hd__nand2_2_A_B ),
    .Y(\u_bg_seq.cnt[2]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a21oi_2_Y_B1 ));
 sky130_fd_sc_hd__and4_2 \u_bg_seq.cnt[3]_sky130_fd_sc_hd__and4_2_C  (.A(\u_bg_seq.cnt[0] ),
    .B(\u_bg_seq.cnt[1] ),
    .C(\u_bg_seq.cnt[3] ),
    .D(\u_bg_seq.cnt[2] ),
    .X(\u_bg_seq.cnt[4]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o21a_2_X_A2 ));
 sky130_fd_sc_hd__dfrtp_2 \u_bg_seq.cnt[3]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_0_0_clk),
    .D(\u_bg_seq.cnt[3]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net3),
    .Q(\u_bg_seq.cnt[3] ));
 sky130_fd_sc_hd__and3b_2 \u_bg_seq.cnt[3]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X  (.A_N(\u_bg_seq.cnt[4]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o21a_2_X_A2 ),
    .B(\u_bg_seq.state[1]_sky130_fd_sc_hd__nand2_2_A_B ),
    .C(\u_bg_seq.cnt[3]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X_C ),
    .X(\u_bg_seq.cnt[3]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__a31o_2 \u_bg_seq.cnt[3]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X_C_sky130_fd_sc_hd__a31o_2_X  (.A1(\u_bg_seq.cnt[0] ),
    .A2(\u_bg_seq.cnt[1] ),
    .A3(\u_bg_seq.cnt[2] ),
    .B1(\u_bg_seq.cnt[3] ),
    .X(\u_bg_seq.cnt[3]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X_C ));
 sky130_fd_sc_hd__dfrtp_2 \u_bg_seq.cnt[4]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_2_0_clk),
    .D(\u_bg_seq.cnt[4]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net3),
    .Q(\u_bg_seq.cnt[4] ));
 sky130_fd_sc_hd__o21a_2 \u_bg_seq.cnt[4]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o21a_2_X  (.A1(\u_bg_seq.cnt[4] ),
    .A2(\u_bg_seq.cnt[4]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o21a_2_X_A2 ),
    .B1(\u_bg_seq.cnt[4]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o21a_2_X_B1 ),
    .X(\u_bg_seq.cnt[4]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__a21oi_2 \u_bg_seq.cnt[4]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o21a_2_X_B1_sky130_fd_sc_hd__a21oi_2_Y  (.A1(\u_bg_seq.cnt[4] ),
    .A2(\u_bg_seq.cnt[4]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o21a_2_X_A2 ),
    .B1(\u_bg_seq.cnt[11]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__nor2_2_Y_A ),
    .Y(\u_bg_seq.cnt[4]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o21a_2_X_B1 ));
 sky130_fd_sc_hd__dfrtp_2 \u_bg_seq.cnt[5]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_0_0_clk),
    .D(\u_bg_seq.cnt[5]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net3),
    .Q(\u_bg_seq.cnt[5] ));
 sky130_fd_sc_hd__and3b_2 \u_bg_seq.cnt[5]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X  (.A_N(\u_bg_seq.cnt[5]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X_A_N ),
    .B(\u_bg_seq.cnt[5]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X_B ),
    .C(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_A_sky130_fd_sc_hd__and4bb_2_C_X_sky130_fd_sc_hd__nor2_2_A_Y),
    .X(\u_bg_seq.cnt[5]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__and3_2 \u_bg_seq.cnt[5]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X_A_N_sky130_fd_sc_hd__and3_2_X  (.A(\u_bg_seq.cnt[5] ),
    .B(\u_bg_seq.cnt[4] ),
    .C(\u_bg_seq.cnt[4]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o21a_2_X_A2 ),
    .X(\u_bg_seq.cnt[5]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X_A_N ));
 sky130_fd_sc_hd__a21o_2 \u_bg_seq.cnt[5]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X_B_sky130_fd_sc_hd__a21o_2_X  (.A1(\u_bg_seq.cnt[4] ),
    .A2(\u_bg_seq.cnt[4]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o21a_2_X_A2 ),
    .B1(\u_bg_seq.cnt[5] ),
    .X(\u_bg_seq.cnt[5]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X_B ));
 sky130_fd_sc_hd__and4_2 \u_bg_seq.cnt[6]_sky130_fd_sc_hd__and4_2_C  (.A(\u_bg_seq.cnt[5] ),
    .B(\u_bg_seq.cnt[4] ),
    .C(\u_bg_seq.cnt[6] ),
    .D(\u_bg_seq.cnt[4]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o21a_2_X_A2 ),
    .X(\u_bg_seq.cnt[7]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a21boi_2_Y_A2 ));
 sky130_fd_sc_hd__dfrtp_2 \u_bg_seq.cnt[6]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_0_0_clk),
    .D(\u_bg_seq.cnt[6]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net3),
    .Q(\u_bg_seq.cnt[6] ));
 sky130_fd_sc_hd__and3b_2 \u_bg_seq.cnt[6]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X  (.A_N(\u_bg_seq.cnt[7]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a21boi_2_Y_A2 ),
    .B(\u_bg_seq.cnt[6]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X_B ),
    .C(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_A_sky130_fd_sc_hd__and4bb_2_C_X_sky130_fd_sc_hd__nor2_2_A_Y),
    .X(\u_bg_seq.cnt[6]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__or2_2 \u_bg_seq.cnt[6]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X_B_sky130_fd_sc_hd__or2_2_X  (.A(\u_bg_seq.cnt[6] ),
    .B(\u_bg_seq.cnt[5]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X_A_N ),
    .X(\u_bg_seq.cnt[6]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X_B ));
 sky130_fd_sc_hd__dfrtp_2 \u_bg_seq.cnt[7]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_1_0_clk),
    .D(\u_bg_seq.cnt[7]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net3),
    .Q(\u_bg_seq.cnt[7] ));
 sky130_fd_sc_hd__a21boi_2 \u_bg_seq.cnt[7]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a21boi_2_Y  (.A1(net56),
    .A2(\u_bg_seq.cnt[7]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a21boi_2_Y_A2 ),
    .B1_N(\u_bg_seq.cnt[7]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a21boi_2_Y_B1_N ),
    .Y(\u_bg_seq.cnt[7]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__o21a_2 \u_bg_seq.cnt[7]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a21boi_2_Y_B1_N_sky130_fd_sc_hd__o21a_2_X  (.A1(\u_bg_seq.cnt[7] ),
    .A2(\u_bg_seq.cnt[7]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a21boi_2_Y_A2 ),
    .B1(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_A_sky130_fd_sc_hd__and4bb_2_C_X_sky130_fd_sc_hd__nor2_2_A_Y),
    .X(\u_bg_seq.cnt[7]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a21boi_2_Y_B1_N ));
 sky130_fd_sc_hd__dfrtp_2 \u_bg_seq.cnt[8]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_1_0_clk),
    .D(\u_bg_seq.cnt[8]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net3),
    .Q(\u_bg_seq.cnt[8] ));
 sky130_fd_sc_hd__and3b_2 \u_bg_seq.cnt[8]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X  (.A_N(\u_bg_seq.cnt[8]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X_A_N ),
    .B(\u_bg_seq.cnt[8]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X_B ),
    .C(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_A_sky130_fd_sc_hd__and4bb_2_C_X_sky130_fd_sc_hd__nor2_2_A_Y),
    .X(\u_bg_seq.cnt[8]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__and3_2 \u_bg_seq.cnt[8]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X_A_N_sky130_fd_sc_hd__and3_2_X  (.A(\u_bg_seq.cnt[7] ),
    .B(\u_bg_seq.cnt[8] ),
    .C(\u_bg_seq.cnt[7]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a21boi_2_Y_A2 ),
    .X(\u_bg_seq.cnt[8]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X_A_N ));
 sky130_fd_sc_hd__a21o_2 \u_bg_seq.cnt[8]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X_B_sky130_fd_sc_hd__a21o_2_X  (.A1(\u_bg_seq.cnt[7] ),
    .A2(\u_bg_seq.cnt[7]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a21boi_2_Y_A2 ),
    .B1(\u_bg_seq.cnt[8] ),
    .X(\u_bg_seq.cnt[8]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X_B ));
 sky130_fd_sc_hd__dfrtp_2 \u_bg_seq.cnt[9]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_3_0_clk),
    .D(\u_bg_seq.cnt[9]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net31),
    .Q(\u_bg_seq.cnt[9] ));
 sky130_fd_sc_hd__and3b_2 \u_bg_seq.cnt[9]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X  (.A_N(\u_bg_seq.cnt[9]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X_A_N ),
    .B(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_A_sky130_fd_sc_hd__and4bb_2_C_X_sky130_fd_sc_hd__nor2_2_A_Y),
    .C(\u_bg_seq.cnt[9]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X_C ),
    .X(\u_bg_seq.cnt[9]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__and2_2 \u_bg_seq.cnt[9]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X_A_N_sky130_fd_sc_hd__and2_2_X  (.A(\u_bg_seq.cnt[9] ),
    .B(\u_bg_seq.cnt[8]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X_A_N ),
    .X(\u_bg_seq.cnt[9]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X_A_N ));
 sky130_fd_sc_hd__or2_2 \u_bg_seq.cnt[9]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X_C_sky130_fd_sc_hd__or2_2_X  (.A(\u_bg_seq.cnt[9] ),
    .B(\u_bg_seq.cnt[8]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X_A_N ),
    .X(\u_bg_seq.cnt[9]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X_C ));
 sky130_fd_sc_hd__dfrtp_2 \u_bg_seq.hcnt[0]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_10_0_clk),
    .D(\u_bg_seq.hcnt[0]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net31),
    .Q(\u_bg_seq.hcnt[0] ));
 sky130_fd_sc_hd__mux2_1 \u_bg_seq.hcnt[0]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X  (.A0(\u_bg_seq.hcnt[0]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_A0 ),
    .A1(\u_bg_seq.hcnt[0]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_A1 ),
    .S(\u_bg_seq.hcnt[0] ),
    .X(\u_bg_seq.hcnt[0]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__and4_2 \u_bg_seq.hcnt[10]_sky130_fd_sc_hd__and4_2_A  (.A(\u_bg_seq.hcnt[10] ),
    .B(\u_bg_seq.hcnt[11] ),
    .C(\u_bg_seq.hcnt[12] ),
    .D(\u_bg_seq.hcnt[9]_sky130_fd_sc_hd__and4_2_C_X ),
    .X(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__a41o_2_B1_A4_sky130_fd_sc_hd__and3_2_X_C ));
 sky130_fd_sc_hd__dfrtp_2 \u_bg_seq.hcnt[10]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_8_0_clk),
    .D(\u_bg_seq.hcnt[10]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net31),
    .Q(\u_bg_seq.hcnt[10] ));
 sky130_fd_sc_hd__a2bb2o_2 \u_bg_seq.hcnt[10]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a2bb2o_2_X  (.A1_N(\u_bg_seq.hcnt[10]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a2bb2o_2_X_A1_N ),
    .A2_N(\u_bg_seq.hcnt[9]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and2b_2_X_A_N ),
    .B1(\u_bg_seq.hcnt[10]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a2bb2o_2_X_B1 ),
    .B2(\u_bg_seq.hcnt[0]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_A0 ),
    .X(\u_bg_seq.hcnt[10]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__and2_2 \u_bg_seq.hcnt[10]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a2bb2o_2_X_B1_sky130_fd_sc_hd__and2_2_X  (.A(\u_bg_seq.hcnt[10]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a2bb2o_2_X_A1_N ),
    .B(\u_bg_seq.hcnt[9]_sky130_fd_sc_hd__and4_2_C_X ),
    .X(\u_bg_seq.hcnt[10]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a2bb2o_2_X_B1 ));
 sky130_fd_sc_hd__inv_2 \u_bg_seq.hcnt[10]_sky130_fd_sc_hd__inv_2_A  (.A(\u_bg_seq.hcnt[10] ),
    .Y(\u_bg_seq.hcnt[10]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a2bb2o_2_X_A1_N ));
 sky130_fd_sc_hd__dfrtp_2 \u_bg_seq.hcnt[11]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_8_0_clk),
    .D(\u_bg_seq.hcnt[11]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net31),
    .Q(\u_bg_seq.hcnt[11] ));
 sky130_fd_sc_hd__o21a_2 \u_bg_seq.hcnt[11]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o21a_2_X  (.A1(\u_bg_seq.hcnt[0]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_A1 ),
    .A2(\u_bg_seq.hcnt[11]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o21a_2_X_A2 ),
    .B1(\u_bg_seq.hcnt[11]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o21a_2_X_B1 ),
    .X(\u_bg_seq.hcnt[11]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__nor2_2 \u_bg_seq.hcnt[11]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o21a_2_X_A2_sky130_fd_sc_hd__nor2_2_Y  (.A(\u_bg_seq.state[1]_sky130_fd_sc_hd__nand2_2_A_Y ),
    .B(\u_bg_seq.hcnt[11]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o21a_2_X_A2_sky130_fd_sc_hd__nor2_2_Y_B ),
    .Y(\u_bg_seq.hcnt[11]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o21a_2_X_A2 ));
 sky130_fd_sc_hd__and3_2 \u_bg_seq.hcnt[11]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o21a_2_X_A2_sky130_fd_sc_hd__nor2_2_Y_B_sky130_fd_sc_hd__and3_2_X  (.A(\u_bg_seq.hcnt[10] ),
    .B(\u_bg_seq.hcnt[11] ),
    .C(\u_bg_seq.hcnt[9]_sky130_fd_sc_hd__and4_2_C_X ),
    .X(\u_bg_seq.hcnt[11]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o21a_2_X_A2_sky130_fd_sc_hd__nor2_2_Y_B ));
 sky130_fd_sc_hd__a41o_2 \u_bg_seq.hcnt[11]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o21a_2_X_B1_sky130_fd_sc_hd__a41o_2_X  (.A1(\u_bg_seq.hcnt[10] ),
    .A2(bg_valid_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__nor2_2_A_B_sky130_fd_sc_hd__o2bb2a_2_A2_N_X),
    .A3(\u_bg_seq.hcnt[9]_sky130_fd_sc_hd__xnor2_2_A_Y_sky130_fd_sc_hd__a2111oi_2_D1_Y_sky130_fd_sc_hd__nand3_2_A_Y ),
    .A4(\u_bg_seq.hcnt[9]_sky130_fd_sc_hd__and4_2_C_X ),
    .B1(\u_bg_seq.hcnt[11] ),
    .X(\u_bg_seq.hcnt[11]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o21a_2_X_B1 ));
 sky130_fd_sc_hd__dfrtp_2 \u_bg_seq.hcnt[12]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_8_0_clk),
    .D(\u_bg_seq.hcnt[12]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net31),
    .Q(\u_bg_seq.hcnt[12] ));
 sky130_fd_sc_hd__o21a_2 \u_bg_seq.hcnt[12]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o21a_2_X  (.A1(\u_bg_seq.hcnt[0]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_A1 ),
    .A2(\u_bg_seq.hcnt[12]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o21a_2_X_A2 ),
    .B1(\u_bg_seq.hcnt[12]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o21a_2_X_B1 ),
    .X(\u_bg_seq.hcnt[12]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__nor2_2 \u_bg_seq.hcnt[12]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o21a_2_X_A2_sky130_fd_sc_hd__nor2_2_Y  (.A(\u_bg_seq.state[1]_sky130_fd_sc_hd__nand2_2_A_Y ),
    .B(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__a41o_2_B1_A4_sky130_fd_sc_hd__and3_2_X_C ),
    .Y(\u_bg_seq.hcnt[12]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o21a_2_X_A2 ));
 sky130_fd_sc_hd__a31o_2 \u_bg_seq.hcnt[12]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o21a_2_X_B1_sky130_fd_sc_hd__a31o_2_X  (.A1(bg_valid_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__nor2_2_A_B_sky130_fd_sc_hd__o2bb2a_2_A2_N_X),
    .A2(\u_bg_seq.hcnt[9]_sky130_fd_sc_hd__xnor2_2_A_Y_sky130_fd_sc_hd__a2111oi_2_D1_Y_sky130_fd_sc_hd__nand3_2_A_Y ),
    .A3(\u_bg_seq.hcnt[11]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o21a_2_X_A2_sky130_fd_sc_hd__nor2_2_Y_B ),
    .B1(\u_bg_seq.hcnt[12] ),
    .X(\u_bg_seq.hcnt[12]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o21a_2_X_B1 ));
 sky130_fd_sc_hd__dfrtp_2 \u_bg_seq.hcnt[13]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_9_0_clk),
    .D(\u_bg_seq.hcnt[13]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net31),
    .Q(\u_bg_seq.hcnt[13] ));
 sky130_fd_sc_hd__o31a_2 \u_bg_seq.hcnt[13]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o31a_2_X  (.A1(\u_bg_seq.hcnt[13]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o31a_2_X_A1 ),
    .A2(\u_bg_seq.hcnt[0]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_A1 ),
    .A3(\u_bg_seq.hcnt[12]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o21a_2_X_A2 ),
    .B1(\u_bg_seq.hcnt[13]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o31a_2_X_B1 ),
    .X(\u_bg_seq.hcnt[13]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__inv_2 \u_bg_seq.hcnt[13]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o31a_2_X_A1_sky130_fd_sc_hd__inv_2_Y  (.A(\u_bg_seq.hcnt[13] ),
    .Y(\u_bg_seq.hcnt[13]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o31a_2_X_A1 ));
 sky130_fd_sc_hd__xnor2_2 \u_bg_seq.hcnt[13]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o31a_2_X_A1_sky130_fd_sc_hd__xnor2_2_A  (.A(\u_bg_seq.hcnt[13]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o31a_2_X_A1 ),
    .B(\u_bg_seq.hcnt[13]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o31a_2_X_A1_sky130_fd_sc_hd__xnor2_2_A_B ),
    .Y(\u_bg_seq.hcnt[13]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o31a_2_X_A1_sky130_fd_sc_hd__xnor2_2_A_Y ));
 sky130_fd_sc_hd__and3_2 \u_bg_seq.hcnt[13]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o31a_2_X_A1_sky130_fd_sc_hd__xnor2_2_A_B_sky130_fd_sc_hd__and3_2_X  (.A(\bg_hold_exp[3] ),
    .B(\bg_hold_exp[1] ),
    .C(\bg_hold_exp[2] ),
    .X(\u_bg_seq.hcnt[13]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o31a_2_X_A1_sky130_fd_sc_hd__xnor2_2_A_B ));
 sky130_fd_sc_hd__or4_2 \u_bg_seq.hcnt[13]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o31a_2_X_A1_sky130_fd_sc_hd__xnor2_2_A_Y_sky130_fd_sc_hd__or4_2_A  (.A(\u_bg_seq.hcnt[13]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o31a_2_X_A1_sky130_fd_sc_hd__xnor2_2_A_Y ),
    .B(\u_bg_seq.hcnt[13]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o31a_2_X_A1_sky130_fd_sc_hd__xnor2_2_A_Y_sky130_fd_sc_hd__or4_2_A_B ),
    .C(\u_bg_seq.hcnt[13]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o31a_2_X_A1_sky130_fd_sc_hd__xnor2_2_A_Y_sky130_fd_sc_hd__or4_2_A_C ),
    .D(\u_bg_seq.hcnt[13]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o31a_2_X_A1_sky130_fd_sc_hd__xnor2_2_A_Y_sky130_fd_sc_hd__or4_2_A_D ),
    .X(\u_bg_seq.hcnt[13]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o31a_2_X_A1_sky130_fd_sc_hd__xnor2_2_A_Y_sky130_fd_sc_hd__or4_2_A_X ));
 sky130_fd_sc_hd__and3_2 \u_bg_seq.hcnt[13]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o31a_2_X_A1_sky130_fd_sc_hd__xnor2_2_A_Y_sky130_fd_sc_hd__or4_2_A_B_sky130_fd_sc_hd__and3_2_X  (.A(\bg_hold_exp[3] ),
    .B(\u_bg_seq.hcnt[10]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a2bb2o_2_X_A1_N ),
    .C(\u_bg_seq.hcnt[13]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o31a_2_X_A1_sky130_fd_sc_hd__xnor2_2_A_Y_sky130_fd_sc_hd__or4_2_A_B_sky130_fd_sc_hd__and3_2_X_C ),
    .X(\u_bg_seq.hcnt[13]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o31a_2_X_A1_sky130_fd_sc_hd__xnor2_2_A_Y_sky130_fd_sc_hd__or4_2_A_B ));
 sky130_fd_sc_hd__a21o_2 \u_bg_seq.hcnt[13]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o31a_2_X_A1_sky130_fd_sc_hd__xnor2_2_A_Y_sky130_fd_sc_hd__or4_2_A_B_sky130_fd_sc_hd__and3_2_X_C_sky130_fd_sc_hd__a21o_2_X  (.A1(\bg_hold_exp[1] ),
    .A2(\bg_hold_exp[0] ),
    .B1(\bg_hold_exp[2] ),
    .X(\u_bg_seq.hcnt[13]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o31a_2_X_A1_sky130_fd_sc_hd__xnor2_2_A_Y_sky130_fd_sc_hd__or4_2_A_B_sky130_fd_sc_hd__and3_2_X_C ));
 sky130_fd_sc_hd__a21oi_2 \u_bg_seq.hcnt[13]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o31a_2_X_A1_sky130_fd_sc_hd__xnor2_2_A_Y_sky130_fd_sc_hd__or4_2_A_C_sky130_fd_sc_hd__a21oi_2_Y  (.A1(\bg_hold_exp[3] ),
    .A2(\u_bg_seq.hcnt[13]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o31a_2_X_A1_sky130_fd_sc_hd__xnor2_2_A_Y_sky130_fd_sc_hd__or4_2_A_B_sky130_fd_sc_hd__and3_2_X_C ),
    .B1(\u_bg_seq.hcnt[10]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a2bb2o_2_X_A1_N ),
    .Y(\u_bg_seq.hcnt[13]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o31a_2_X_A1_sky130_fd_sc_hd__xnor2_2_A_Y_sky130_fd_sc_hd__or4_2_A_C ));
 sky130_fd_sc_hd__nor2_2 \u_bg_seq.hcnt[13]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o31a_2_X_A1_sky130_fd_sc_hd__xnor2_2_A_Y_sky130_fd_sc_hd__or4_2_A_D_sky130_fd_sc_hd__nor2_2_Y  (.A(\u_bg_seq.hcnt[6]_sky130_fd_sc_hd__inv_2_A_Y ),
    .B(\u_bg_seq.hcnt[9]_sky130_fd_sc_hd__xnor2_2_A_Y_sky130_fd_sc_hd__a2111oi_2_D1_A2 ),
    .Y(\u_bg_seq.hcnt[13]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o31a_2_X_A1_sky130_fd_sc_hd__xnor2_2_A_Y_sky130_fd_sc_hd__or4_2_A_D ));
 sky130_fd_sc_hd__a41o_2 \u_bg_seq.hcnt[13]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o31a_2_X_B1_sky130_fd_sc_hd__a41o_2_X  (.A1(\u_bg_seq.hcnt[9]_sky130_fd_sc_hd__xnor2_2_A_Y_sky130_fd_sc_hd__a2111oi_2_D1_Y_sky130_fd_sc_hd__nand2_2_A_Y ),
    .A2(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__a41o_2_B1_A2 ),
    .A3(bg_valid_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__nor2_2_A_B_sky130_fd_sc_hd__o2bb2a_2_A2_N_X),
    .A4(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__a41o_2_B1_A4_sky130_fd_sc_hd__and3_2_X_C ),
    .B1(\u_bg_seq.hcnt[13] ),
    .X(\u_bg_seq.hcnt[13]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o31a_2_X_B1 ));
 sky130_fd_sc_hd__dfrtp_2 \u_bg_seq.hcnt[14]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_8_0_clk),
    .D(\u_bg_seq.hcnt[14]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net31),
    .Q(\u_bg_seq.hcnt[14] ));
 sky130_fd_sc_hd__o22a_2 \u_bg_seq.hcnt[14]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o22a_2_X  (.A1(\u_bg_seq.hcnt[0]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_A1 ),
    .A2(\u_bg_seq.hcnt[14]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o22a_2_X_A2 ),
    .B1(\u_bg_seq.hcnt[14]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o22a_2_X_B1 ),
    .B2(net68),
    .X(\u_bg_seq.hcnt[14]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__nor2_2 \u_bg_seq.hcnt[14]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o22a_2_X_A2_sky130_fd_sc_hd__nor2_2_Y  (.A(\u_bg_seq.state[1]_sky130_fd_sc_hd__nand2_2_A_Y ),
    .B(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__a41o_2_B1_A4 ),
    .Y(\u_bg_seq.hcnt[14]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o22a_2_X_A2 ));
 sky130_fd_sc_hd__and4_2 \u_bg_seq.hcnt[14]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o22a_2_X_B1_sky130_fd_sc_hd__and4_2_X  (.A(\u_bg_seq.hcnt[13] ),
    .B(bg_valid_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__nor2_2_A_B_sky130_fd_sc_hd__o2bb2a_2_A2_N_X),
    .C(\u_bg_seq.hcnt[9]_sky130_fd_sc_hd__xnor2_2_A_Y_sky130_fd_sc_hd__a2111oi_2_D1_Y_sky130_fd_sc_hd__nand3_2_A_Y ),
    .D(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__a41o_2_B1_A4_sky130_fd_sc_hd__and3_2_X_C ),
    .X(\u_bg_seq.hcnt[14]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o22a_2_X_B1 ));
 sky130_fd_sc_hd__a41o_2 \u_bg_seq.hcnt[15]_sky130_fd_sc_hd__a41o_2_B1  (.A1(\u_bg_seq.hcnt[9]_sky130_fd_sc_hd__xnor2_2_A_Y_sky130_fd_sc_hd__a2111oi_2_D1_Y_sky130_fd_sc_hd__nand2_2_A_Y ),
    .A2(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__a41o_2_B1_A2 ),
    .A3(bg_valid_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__nor2_2_A_B_sky130_fd_sc_hd__o2bb2a_2_A2_N_X),
    .A4(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__a41o_2_B1_A4 ),
    .B1(\u_bg_seq.hcnt[15] ),
    .X(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__a41o_2_B1_X ));
 sky130_fd_sc_hd__and3_2 \u_bg_seq.hcnt[15]_sky130_fd_sc_hd__a41o_2_B1_A4_sky130_fd_sc_hd__and3_2_X  (.A(\u_bg_seq.hcnt[13] ),
    .B(\u_bg_seq.hcnt[14] ),
    .C(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__a41o_2_B1_A4_sky130_fd_sc_hd__and3_2_X_C ),
    .X(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__a41o_2_B1_A4 ));
 sky130_fd_sc_hd__dfrtp_2 \u_bg_seq.hcnt[15]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_2_0_clk),
    .D(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net31),
    .Q(\u_bg_seq.hcnt[15] ));
 sky130_fd_sc_hd__o31a_2 \u_bg_seq.hcnt[15]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o31a_2_X  (.A1(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y ),
    .A2(\u_bg_seq.hcnt[0]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_A1 ),
    .A3(\u_bg_seq.hcnt[14]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o22a_2_X_A2 ),
    .B1(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__a41o_2_B1_X ),
    .X(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__inv_2 \u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A  (.A(\u_bg_seq.hcnt[15] ),
    .Y(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y ));
 sky130_fd_sc_hd__o21ai_2 \u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1  (.A1(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_A1 ),
    .A2(\u_bg_seq.hcnt[7] ),
    .B1(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y ),
    .Y(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y ));
 sky130_fd_sc_hd__inv_2 \u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_A1_sky130_fd_sc_hd__inv_2_Y  (.A(\bg_hold_exp[3] ),
    .Y(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_A1 ));
 sky130_fd_sc_hd__a2111o_2 \u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1  (.A1(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_A1 ),
    .A2(\u_bg_seq.hcnt[7] ),
    .B1(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_B1 ),
    .C1(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y ),
    .D1(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_D1 ),
    .X(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X ));
 sky130_fd_sc_hd__o21a_2 \u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_B1_sky130_fd_sc_hd__o21a_2_X  (.A1(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_B1_sky130_fd_sc_hd__o21a_2_X_A1 ),
    .A2(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_B1_sky130_fd_sc_hd__o21a_2_X_A2 ),
    .B1(\u_bg_seq.hcnt[14] ),
    .X(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_B1 ));
 sky130_fd_sc_hd__nand2_2 \u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_B1_sky130_fd_sc_hd__o21a_2_X_A1_sky130_fd_sc_hd__nand2_2_Y  (.A(\bg_hold_exp[3] ),
    .B(\bg_hold_exp[2] ),
    .Y(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_B1_sky130_fd_sc_hd__o21a_2_X_A1 ));
 sky130_fd_sc_hd__nand2_2 \u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_B1_sky130_fd_sc_hd__o21a_2_X_A2_sky130_fd_sc_hd__nand2_2_Y  (.A(\bg_hold_exp[1] ),
    .B(\bg_hold_exp[0] ),
    .Y(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_B1_sky130_fd_sc_hd__o21a_2_X_A2 ));
 sky130_fd_sc_hd__nor3_2 \u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_B1_sky130_fd_sc_hd__o21a_2_X_A2_sky130_fd_sc_hd__nor3_2_C  (.A(\u_bg_seq.hcnt[14] ),
    .B(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_B1_sky130_fd_sc_hd__o21a_2_X_A1 ),
    .C(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_B1_sky130_fd_sc_hd__o21a_2_X_A2 ),
    .Y(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_C_sky130_fd_sc_hd__or4b_2_X_B ));
 sky130_fd_sc_hd__a2bb2o_2 \u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_D1_sky130_fd_sc_hd__a2bb2o_2_X  (.A1_N(\u_bg_seq.hcnt[3] ),
    .A2_N(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_D1_sky130_fd_sc_hd__a2bb2o_2_X_A2_N ),
    .B1(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_B1_sky130_fd_sc_hd__o21a_2_X_A1 ),
    .B2(\u_bg_seq.hcnt[11] ),
    .X(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_D1 ));
 sky130_fd_sc_hd__nor2_2 \u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_D1_sky130_fd_sc_hd__a2bb2o_2_X_A2_N_sky130_fd_sc_hd__nor2_2_Y  (.A(\bg_hold_exp[3] ),
    .B(\bg_hold_exp[2] ),
    .Y(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_D1_sky130_fd_sc_hd__a2bb2o_2_X_A2_N ));
 sky130_fd_sc_hd__nor4_2 \u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A  (.A(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X ),
    .B(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_B ),
    .C(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_C ),
    .D(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_D ),
    .Y(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_Y ));
 sky130_fd_sc_hd__or4b_2 \u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_B_sky130_fd_sc_hd__or4b_2_X  (.A(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_B_sky130_fd_sc_hd__or4b_2_X_A ),
    .B(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_B_sky130_fd_sc_hd__or4b_2_X_B ),
    .C(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_B_sky130_fd_sc_hd__or4b_2_X_C ),
    .D_N(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_B_sky130_fd_sc_hd__or4b_2_X_D_N ),
    .X(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_B ));
 sky130_fd_sc_hd__xor2_2 \u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_B_sky130_fd_sc_hd__or4b_2_X_A_sky130_fd_sc_hd__xor2_2_X  (.A(\u_bg_seq.hcnt[2] ),
    .B(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_B_sky130_fd_sc_hd__or4b_2_X_A_sky130_fd_sc_hd__xor2_2_X_B ),
    .X(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_B_sky130_fd_sc_hd__or4b_2_X_A ));
 sky130_fd_sc_hd__a211o_2 \u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_B_sky130_fd_sc_hd__or4b_2_X_A_sky130_fd_sc_hd__xor2_2_X_B_sky130_fd_sc_hd__a211o_2_X  (.A1(\bg_hold_exp[1] ),
    .A2(\bg_hold_exp[0] ),
    .B1(\bg_hold_exp[2] ),
    .C1(\bg_hold_exp[3] ),
    .X(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_B_sky130_fd_sc_hd__or4b_2_X_A_sky130_fd_sc_hd__xor2_2_X_B ));
 sky130_fd_sc_hd__o21a_2 \u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_B_sky130_fd_sc_hd__or4b_2_X_B_sky130_fd_sc_hd__o21a_2_X  (.A1(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_B1_sky130_fd_sc_hd__o21a_2_X_A1 ),
    .A2(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_B_sky130_fd_sc_hd__or4b_2_X_B_sky130_fd_sc_hd__o21a_2_X_A2 ),
    .B1(\u_bg_seq.hcnt[12] ),
    .X(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_B_sky130_fd_sc_hd__or4b_2_X_B ));
 sky130_fd_sc_hd__a21oi_2 \u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_B_sky130_fd_sc_hd__or4b_2_X_C_sky130_fd_sc_hd__a21oi_2_Y  (.A1(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_D1_sky130_fd_sc_hd__a2bb2o_2_X_A2_N ),
    .A2(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_B_sky130_fd_sc_hd__or4b_2_X_B_sky130_fd_sc_hd__o21a_2_X_A2 ),
    .B1(\u_bg_seq.hcnt[0] ),
    .Y(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_B_sky130_fd_sc_hd__or4b_2_X_C ));
 sky130_fd_sc_hd__or4b_2 \u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_B_sky130_fd_sc_hd__or4b_2_X_D_N_sky130_fd_sc_hd__or4b_2_X  (.A(\bg_hold_exp[3] ),
    .B(\bg_hold_exp[1] ),
    .C(\bg_hold_exp[2] ),
    .D_N(\u_bg_seq.hcnt[1] ),
    .X(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_B_sky130_fd_sc_hd__or4b_2_X_D_N ));
 sky130_fd_sc_hd__or4b_2 \u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_C_sky130_fd_sc_hd__or4b_2_X  (.A(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_C_sky130_fd_sc_hd__or4b_2_X_A ),
    .B(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_C_sky130_fd_sc_hd__or4b_2_X_B ),
    .C(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_C_sky130_fd_sc_hd__or4b_2_X_C ),
    .D_N(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_C_sky130_fd_sc_hd__or4b_2_X_D_N ),
    .X(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_C ));
 sky130_fd_sc_hd__a21oi_2 \u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_C_sky130_fd_sc_hd__or4b_2_X_A_sky130_fd_sc_hd__a21oi_2_Y  (.A1(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_C_sky130_fd_sc_hd__or4b_2_X_A_sky130_fd_sc_hd__a21oi_2_Y_A1 ),
    .A2(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_D1_sky130_fd_sc_hd__a2bb2o_2_X_A2_N ),
    .B1(\u_bg_seq.hcnt[1] ),
    .Y(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_C_sky130_fd_sc_hd__or4b_2_X_A ));
 sky130_fd_sc_hd__inv_2 \u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_C_sky130_fd_sc_hd__or4b_2_X_A_sky130_fd_sc_hd__a21oi_2_Y_A1_sky130_fd_sc_hd__inv_2_Y  (.A(\bg_hold_exp[1] ),
    .Y(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_C_sky130_fd_sc_hd__or4b_2_X_A_sky130_fd_sc_hd__a21oi_2_Y_A1 ));
 sky130_fd_sc_hd__a32o_2 \u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_C_sky130_fd_sc_hd__or4b_2_X_C_sky130_fd_sc_hd__a32o_2_X  (.A1(\u_bg_seq.hcnt[0] ),
    .A2(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_D1_sky130_fd_sc_hd__a2bb2o_2_X_A2_N ),
    .A3(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_B_sky130_fd_sc_hd__or4b_2_X_B_sky130_fd_sc_hd__o21a_2_X_A2 ),
    .B1(\u_bg_seq.hcnt[9]_sky130_fd_sc_hd__xnor2_2_A_Y_sky130_fd_sc_hd__a2111oi_2_D1_C1_sky130_fd_sc_hd__nor2_2_Y_B ),
    .B2(\u_bg_seq.hcnt[5] ),
    .X(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_C_sky130_fd_sc_hd__or4b_2_X_C ));
 sky130_fd_sc_hd__o32a_2 \u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_C_sky130_fd_sc_hd__or4b_2_X_D_N_sky130_fd_sc_hd__o32a_2_X  (.A1(\u_bg_seq.hcnt[12] ),
    .A2(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_B1_sky130_fd_sc_hd__o21a_2_X_A1 ),
    .A3(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_B_sky130_fd_sc_hd__or4b_2_X_B_sky130_fd_sc_hd__o21a_2_X_A2 ),
    .B1(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_C_sky130_fd_sc_hd__or4b_2_X_D_N_sky130_fd_sc_hd__o32a_2_X_B1 ),
    .B2(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_C_sky130_fd_sc_hd__or4b_2_X_D_N_sky130_fd_sc_hd__o32a_2_X_B2 ),
    .X(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_C_sky130_fd_sc_hd__or4b_2_X_D_N ));
 sky130_fd_sc_hd__xor2_2 \u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_C_sky130_fd_sc_hd__or4b_2_X_D_N_sky130_fd_sc_hd__o32a_2_X_B1_sky130_fd_sc_hd__xor2_2_X  (.A(\bg_hold_exp[3] ),
    .B(\bg_hold_exp[2] ),
    .X(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_C_sky130_fd_sc_hd__or4b_2_X_D_N_sky130_fd_sc_hd__o32a_2_X_B1 ));
 sky130_fd_sc_hd__nand2b_2 \u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_C_sky130_fd_sc_hd__or4b_2_X_D_N_sky130_fd_sc_hd__o32a_2_X_B2_sky130_fd_sc_hd__nand2b_2_Y  (.A_N(\u_bg_seq.hcnt[11] ),
    .B(\u_bg_seq.hcnt[3] ),
    .Y(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_C_sky130_fd_sc_hd__or4b_2_X_D_N_sky130_fd_sc_hd__o32a_2_X_B2 ));
 sky130_fd_sc_hd__or3b_2 \u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_D_sky130_fd_sc_hd__or3b_2_X  (.A(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_D_sky130_fd_sc_hd__or3b_2_X_A ),
    .B(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_D_sky130_fd_sc_hd__or3b_2_X_B ),
    .C_N(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_D_sky130_fd_sc_hd__or3b_2_X_C_N ),
    .X(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_D ));
 sky130_fd_sc_hd__o211a_2 \u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_D_sky130_fd_sc_hd__or3b_2_X_A_sky130_fd_sc_hd__o211a_2_X  (.A1(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_D_sky130_fd_sc_hd__or3b_2_X_A_sky130_fd_sc_hd__o211a_2_X_A1 ),
    .A2(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_B_sky130_fd_sc_hd__or4b_2_X_B_sky130_fd_sc_hd__o21a_2_X_A2 ),
    .B1(\u_bg_seq.hcnt[4] ),
    .C1(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_A1 ),
    .X(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_D_sky130_fd_sc_hd__or3b_2_X_A ));
 sky130_fd_sc_hd__inv_2 \u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_D_sky130_fd_sc_hd__or3b_2_X_A_sky130_fd_sc_hd__o211a_2_X_A1_sky130_fd_sc_hd__inv_2_Y  (.A(\bg_hold_exp[2] ),
    .Y(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_D_sky130_fd_sc_hd__or3b_2_X_A_sky130_fd_sc_hd__o211a_2_X_A1 ));
 sky130_fd_sc_hd__xor2_2 \u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_D_sky130_fd_sc_hd__or3b_2_X_B_sky130_fd_sc_hd__xor2_2_X  (.A(\u_bg_seq.hcnt[8] ),
    .B(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_D_sky130_fd_sc_hd__or3b_2_X_B_sky130_fd_sc_hd__xor2_2_X_B ),
    .X(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_D_sky130_fd_sc_hd__or3b_2_X_B ));
 sky130_fd_sc_hd__o31a_2 \u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_D_sky130_fd_sc_hd__or3b_2_X_B_sky130_fd_sc_hd__xor2_2_X_B_sky130_fd_sc_hd__o31a_2_X  (.A1(\bg_hold_exp[1] ),
    .A2(\bg_hold_exp[0] ),
    .A3(\bg_hold_exp[2] ),
    .B1(\bg_hold_exp[3] ),
    .X(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_D_sky130_fd_sc_hd__or3b_2_X_B_sky130_fd_sc_hd__xor2_2_X_B ));
 sky130_fd_sc_hd__a211o_2 \u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_D_sky130_fd_sc_hd__or3b_2_X_C_N_sky130_fd_sc_hd__a211o_2_X  (.A1(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_A1 ),
    .A2(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_B_sky130_fd_sc_hd__or4b_2_X_B_sky130_fd_sc_hd__o21a_2_X_A2 ),
    .B1(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_D1_sky130_fd_sc_hd__a2bb2o_2_X_A2_N ),
    .C1(\u_bg_seq.hcnt[4] ),
    .X(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_D_sky130_fd_sc_hd__or3b_2_X_C_N ));
 sky130_fd_sc_hd__dfrtp_2 \u_bg_seq.hcnt[1]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_11_0_clk),
    .D(\u_bg_seq.hcnt[1]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net31),
    .Q(\u_bg_seq.hcnt[1] ));
 sky130_fd_sc_hd__a32o_2 \u_bg_seq.hcnt[1]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a32o_2_X  (.A1(\u_bg_seq.hcnt[0]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_A0 ),
    .A2(\u_bg_seq.hcnt[1]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a32o_2_X_A2 ),
    .A3(\u_bg_seq.hcnt[1]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a32o_2_X_A3 ),
    .B1(\u_bg_seq.hcnt[0]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_A1 ),
    .B2(\u_bg_seq.hcnt[1] ),
    .X(\u_bg_seq.hcnt[1]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__or2_2 \u_bg_seq.hcnt[1]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a32o_2_X_A2_sky130_fd_sc_hd__or2_2_X  (.A(\u_bg_seq.hcnt[0] ),
    .B(\u_bg_seq.hcnt[1] ),
    .X(\u_bg_seq.hcnt[1]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a32o_2_X_A2 ));
 sky130_fd_sc_hd__nand2_2 \u_bg_seq.hcnt[1]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a32o_2_X_A3_sky130_fd_sc_hd__nand2_2_Y  (.A(\u_bg_seq.hcnt[0] ),
    .B(\u_bg_seq.hcnt[1] ),
    .Y(\u_bg_seq.hcnt[1]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a32o_2_X_A3 ));
 sky130_fd_sc_hd__dfrtp_2 \u_bg_seq.hcnt[2]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_11_0_clk),
    .D(\u_bg_seq.hcnt[2]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net31),
    .Q(\u_bg_seq.hcnt[2] ));
 sky130_fd_sc_hd__a32o_2 \u_bg_seq.hcnt[2]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a32o_2_X  (.A1(\u_bg_seq.hcnt[0]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_A0 ),
    .A2(\u_bg_seq.hcnt[2]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a32o_2_X_A2 ),
    .A3(\u_bg_seq.hcnt[2]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a32o_2_X_A3 ),
    .B1(\u_bg_seq.hcnt[0]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_A1 ),
    .B2(\u_bg_seq.hcnt[2] ),
    .X(\u_bg_seq.hcnt[2]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__a21o_2 \u_bg_seq.hcnt[2]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a32o_2_X_A2_sky130_fd_sc_hd__a21o_2_X  (.A1(\u_bg_seq.hcnt[0] ),
    .A2(\u_bg_seq.hcnt[1] ),
    .B1(\u_bg_seq.hcnt[2] ),
    .X(\u_bg_seq.hcnt[2]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a32o_2_X_A2 ));
 sky130_fd_sc_hd__nand3_2 \u_bg_seq.hcnt[2]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a32o_2_X_A3_sky130_fd_sc_hd__nand3_2_Y  (.A(\u_bg_seq.hcnt[0] ),
    .B(\u_bg_seq.hcnt[1] ),
    .C(\u_bg_seq.hcnt[2] ),
    .Y(\u_bg_seq.hcnt[2]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a32o_2_X_A3 ));
 sky130_fd_sc_hd__and4_2 \u_bg_seq.hcnt[3]_sky130_fd_sc_hd__and4_2_D  (.A(\u_bg_seq.hcnt[0] ),
    .B(\u_bg_seq.hcnt[1] ),
    .C(\u_bg_seq.hcnt[2] ),
    .D(\u_bg_seq.hcnt[3] ),
    .X(\u_bg_seq.hcnt[6]_sky130_fd_sc_hd__and4_2_C_D ));
 sky130_fd_sc_hd__dfrtp_2 \u_bg_seq.hcnt[3]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_10_0_clk),
    .D(\u_bg_seq.hcnt[3]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net31),
    .Q(\u_bg_seq.hcnt[3] ));
 sky130_fd_sc_hd__a32o_2 \u_bg_seq.hcnt[3]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a32o_2_X  (.A1(\u_bg_seq.hcnt[0]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_A0 ),
    .A2(\u_bg_seq.hcnt[3]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a32o_2_X_A2 ),
    .A3(\u_bg_seq.hcnt[3]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a32o_2_X_A3 ),
    .B1(\u_bg_seq.hcnt[0]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_A1 ),
    .B2(net97),
    .X(\u_bg_seq.hcnt[3]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__a31o_2 \u_bg_seq.hcnt[3]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a32o_2_X_A2_sky130_fd_sc_hd__a31o_2_X  (.A1(\u_bg_seq.hcnt[0] ),
    .A2(\u_bg_seq.hcnt[1] ),
    .A3(\u_bg_seq.hcnt[2] ),
    .B1(\u_bg_seq.hcnt[3] ),
    .X(\u_bg_seq.hcnt[3]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a32o_2_X_A2 ));
 sky130_fd_sc_hd__inv_2 \u_bg_seq.hcnt[3]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a32o_2_X_A3_sky130_fd_sc_hd__inv_2_Y  (.A(\u_bg_seq.hcnt[6]_sky130_fd_sc_hd__and4_2_C_D ),
    .Y(\u_bg_seq.hcnt[3]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a32o_2_X_A3 ));
 sky130_fd_sc_hd__dfrtp_2 \u_bg_seq.hcnt[4]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_10_0_clk),
    .D(\u_bg_seq.hcnt[4]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net31),
    .Q(\u_bg_seq.hcnt[4] ));
 sky130_fd_sc_hd__a32o_2 \u_bg_seq.hcnt[4]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a32o_2_X  (.A1(\u_bg_seq.hcnt[0]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_A0 ),
    .A2(\u_bg_seq.hcnt[4]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a32o_2_X_A2 ),
    .A3(\u_bg_seq.hcnt[4]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a32o_2_X_A3 ),
    .B1(\u_bg_seq.hcnt[0]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_A1 ),
    .B2(\u_bg_seq.hcnt[4] ),
    .X(\u_bg_seq.hcnt[4]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__nand2_2 \u_bg_seq.hcnt[4]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a32o_2_X_A2_sky130_fd_sc_hd__nand2_2_Y  (.A(\u_bg_seq.hcnt[4] ),
    .B(\u_bg_seq.hcnt[6]_sky130_fd_sc_hd__and4_2_C_D ),
    .Y(\u_bg_seq.hcnt[4]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a32o_2_X_A2 ));
 sky130_fd_sc_hd__or2_2 \u_bg_seq.hcnt[4]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a32o_2_X_A3_sky130_fd_sc_hd__or2_2_X  (.A(\u_bg_seq.hcnt[4] ),
    .B(\u_bg_seq.hcnt[6]_sky130_fd_sc_hd__and4_2_C_D ),
    .X(\u_bg_seq.hcnt[4]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a32o_2_X_A3 ));
 sky130_fd_sc_hd__dfrtp_2 \u_bg_seq.hcnt[5]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_10_0_clk),
    .D(\u_bg_seq.hcnt[5]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net31),
    .Q(\u_bg_seq.hcnt[5] ));
 sky130_fd_sc_hd__and2b_2 \u_bg_seq.hcnt[5]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and2b_2_X  (.A_N(\u_bg_seq.hcnt[5]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and2b_2_X_A_N ),
    .B(\u_bg_seq.hcnt[5]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and2b_2_X_B ),
    .X(\u_bg_seq.hcnt[5]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__o211a_2 \u_bg_seq.hcnt[5]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and2b_2_X_A_N_sky130_fd_sc_hd__o211a_2_X  (.A1(\u_bg_seq.state[1]_sky130_fd_sc_hd__nand2_2_A_Y ),
    .A2(\u_bg_seq.hcnt[6]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a2bb2o_2_X_B1_sky130_fd_sc_hd__and2_2_X_B ),
    .B1(\u_bg_seq.hcnt[9]_sky130_fd_sc_hd__xnor2_2_A_Y_sky130_fd_sc_hd__a2111oi_2_D1_Y_sky130_fd_sc_hd__nand3_2_A_Y ),
    .C1(bg_valid_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__nor2_2_A_B_sky130_fd_sc_hd__o2bb2a_2_A2_N_X),
    .X(\u_bg_seq.hcnt[5]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and2b_2_X_A_N ));
 sky130_fd_sc_hd__a41o_2 \u_bg_seq.hcnt[5]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and2b_2_X_B_sky130_fd_sc_hd__a41o_2_X  (.A1(\u_bg_seq.hcnt[4] ),
    .A2(bg_valid_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__nor2_2_A_B_sky130_fd_sc_hd__o2bb2a_2_A2_N_X),
    .A3(\u_bg_seq.hcnt[9]_sky130_fd_sc_hd__xnor2_2_A_Y_sky130_fd_sc_hd__a2111oi_2_D1_Y_sky130_fd_sc_hd__nand3_2_A_Y ),
    .A4(\u_bg_seq.hcnt[6]_sky130_fd_sc_hd__and4_2_C_D ),
    .B1(\u_bg_seq.hcnt[5] ),
    .X(\u_bg_seq.hcnt[5]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and2b_2_X_B ));
 sky130_fd_sc_hd__and4_2 \u_bg_seq.hcnt[6]_sky130_fd_sc_hd__and4_2_C  (.A(\u_bg_seq.hcnt[4] ),
    .B(\u_bg_seq.hcnt[5] ),
    .C(\u_bg_seq.hcnt[6] ),
    .D(\u_bg_seq.hcnt[6]_sky130_fd_sc_hd__and4_2_C_D ),
    .X(\u_bg_seq.hcnt[6]_sky130_fd_sc_hd__and4_2_C_X ));
 sky130_fd_sc_hd__and2_2 \u_bg_seq.hcnt[6]_sky130_fd_sc_hd__and4_2_C_X_sky130_fd_sc_hd__and2_2_B  (.A(\u_bg_seq.hcnt[7] ),
    .B(\u_bg_seq.hcnt[6]_sky130_fd_sc_hd__and4_2_C_X ),
    .X(\u_bg_seq.hcnt[6]_sky130_fd_sc_hd__and4_2_C_X_sky130_fd_sc_hd__and2_2_B_X ));
 sky130_fd_sc_hd__dfrtp_2 \u_bg_seq.hcnt[6]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_10_0_clk),
    .D(\u_bg_seq.hcnt[6]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net31),
    .Q(\u_bg_seq.hcnt[6] ));
 sky130_fd_sc_hd__a2bb2o_2 \u_bg_seq.hcnt[6]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a2bb2o_2_X  (.A1_N(\u_bg_seq.hcnt[6]_sky130_fd_sc_hd__inv_2_A_Y ),
    .A2_N(\u_bg_seq.hcnt[5]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and2b_2_X_A_N ),
    .B1(\u_bg_seq.hcnt[6]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a2bb2o_2_X_B1 ),
    .B2(\u_bg_seq.hcnt[0]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_A0 ),
    .X(\u_bg_seq.hcnt[6]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__and2_2 \u_bg_seq.hcnt[6]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a2bb2o_2_X_B1_sky130_fd_sc_hd__and2_2_X  (.A(\u_bg_seq.hcnt[6]_sky130_fd_sc_hd__inv_2_A_Y ),
    .B(\u_bg_seq.hcnt[6]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a2bb2o_2_X_B1_sky130_fd_sc_hd__and2_2_X_B ),
    .X(\u_bg_seq.hcnt[6]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a2bb2o_2_X_B1 ));
 sky130_fd_sc_hd__and3_2 \u_bg_seq.hcnt[6]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a2bb2o_2_X_B1_sky130_fd_sc_hd__and2_2_X_B_sky130_fd_sc_hd__and3_2_X  (.A(\u_bg_seq.hcnt[4] ),
    .B(\u_bg_seq.hcnt[5] ),
    .C(\u_bg_seq.hcnt[6]_sky130_fd_sc_hd__and4_2_C_D ),
    .X(\u_bg_seq.hcnt[6]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a2bb2o_2_X_B1_sky130_fd_sc_hd__and2_2_X_B ));
 sky130_fd_sc_hd__inv_2 \u_bg_seq.hcnt[6]_sky130_fd_sc_hd__inv_2_A  (.A(\u_bg_seq.hcnt[6] ),
    .Y(\u_bg_seq.hcnt[6]_sky130_fd_sc_hd__inv_2_A_Y ));
 sky130_fd_sc_hd__dfrtp_2 \u_bg_seq.hcnt[7]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_10_0_clk),
    .D(\u_bg_seq.hcnt[7]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net31),
    .Q(\u_bg_seq.hcnt[7] ));
 sky130_fd_sc_hd__and2_2 \u_bg_seq.hcnt[7]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and2_2_X  (.A(\u_bg_seq.hcnt[7]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and2_2_X_A ),
    .B(\u_bg_seq.hcnt[7]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and2_2_X_B ),
    .X(\u_bg_seq.hcnt[7]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__o211ai_2 \u_bg_seq.hcnt[7]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and2_2_X_A_sky130_fd_sc_hd__o211ai_2_Y  (.A1(\u_bg_seq.state[1]_sky130_fd_sc_hd__nand2_2_A_Y ),
    .A2(\u_bg_seq.hcnt[6]_sky130_fd_sc_hd__and4_2_C_X_sky130_fd_sc_hd__and2_2_B_X ),
    .B1(\u_bg_seq.hcnt[9]_sky130_fd_sc_hd__xnor2_2_A_Y_sky130_fd_sc_hd__a2111oi_2_D1_Y_sky130_fd_sc_hd__nand3_2_A_Y ),
    .C1(bg_valid_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__nor2_2_A_B_sky130_fd_sc_hd__o2bb2a_2_A2_N_X),
    .Y(\u_bg_seq.hcnt[7]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and2_2_X_A ));
 sky130_fd_sc_hd__a31o_2 \u_bg_seq.hcnt[7]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and2_2_X_B_sky130_fd_sc_hd__a31o_2_X  (.A1(bg_valid_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__nor2_2_A_B_sky130_fd_sc_hd__o2bb2a_2_A2_N_X),
    .A2(\u_bg_seq.hcnt[9]_sky130_fd_sc_hd__xnor2_2_A_Y_sky130_fd_sc_hd__a2111oi_2_D1_Y_sky130_fd_sc_hd__nand3_2_A_Y ),
    .A3(\u_bg_seq.hcnt[6]_sky130_fd_sc_hd__and4_2_C_X ),
    .B1(\u_bg_seq.hcnt[7] ),
    .X(\u_bg_seq.hcnt[7]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and2_2_X_B ));
 sky130_fd_sc_hd__dfrtp_2 \u_bg_seq.hcnt[8]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_10_0_clk),
    .D(\u_bg_seq.hcnt[8]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net31),
    .Q(\u_bg_seq.hcnt[8] ));
 sky130_fd_sc_hd__a22o_2 \u_bg_seq.hcnt[8]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a22o_2_X  (.A1(\u_bg_seq.hcnt[8] ),
    .A2(\u_bg_seq.hcnt[7]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and2_2_X_A ),
    .B1(\u_bg_seq.hcnt[8]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a22o_2_X_B1 ),
    .B2(\u_bg_seq.hcnt[0]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_A0 ),
    .X(\u_bg_seq.hcnt[8]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__and2b_2 \u_bg_seq.hcnt[8]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a22o_2_X_B1_sky130_fd_sc_hd__and2b_2_X  (.A_N(\u_bg_seq.hcnt[8] ),
    .B(\u_bg_seq.hcnt[6]_sky130_fd_sc_hd__and4_2_C_X_sky130_fd_sc_hd__and2_2_B_X ),
    .X(\u_bg_seq.hcnt[8]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a22o_2_X_B1 ));
 sky130_fd_sc_hd__and4_2 \u_bg_seq.hcnt[9]_sky130_fd_sc_hd__and4_2_C  (.A(\u_bg_seq.hcnt[7] ),
    .B(\u_bg_seq.hcnt[8] ),
    .C(\u_bg_seq.hcnt[9] ),
    .D(\u_bg_seq.hcnt[6]_sky130_fd_sc_hd__and4_2_C_X ),
    .X(\u_bg_seq.hcnt[9]_sky130_fd_sc_hd__and4_2_C_X ));
 sky130_fd_sc_hd__dfrtp_2 \u_bg_seq.hcnt[9]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_8_0_clk),
    .D(\u_bg_seq.hcnt[9]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net31),
    .Q(\u_bg_seq.hcnt[9] ));
 sky130_fd_sc_hd__and2b_2 \u_bg_seq.hcnt[9]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and2b_2_X  (.A_N(\u_bg_seq.hcnt[9]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and2b_2_X_A_N ),
    .B(\u_bg_seq.hcnt[9]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and2b_2_X_B ),
    .X(\u_bg_seq.hcnt[9]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__o211a_2 \u_bg_seq.hcnt[9]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and2b_2_X_A_N_sky130_fd_sc_hd__o211a_2_X  (.A1(\u_bg_seq.state[1]_sky130_fd_sc_hd__nand2_2_A_Y ),
    .A2(\u_bg_seq.hcnt[9]_sky130_fd_sc_hd__and4_2_C_X ),
    .B1(\u_bg_seq.hcnt[9]_sky130_fd_sc_hd__xnor2_2_A_Y_sky130_fd_sc_hd__a2111oi_2_D1_Y_sky130_fd_sc_hd__nand3_2_A_Y ),
    .C1(bg_valid_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__nor2_2_A_B_sky130_fd_sc_hd__o2bb2a_2_A2_N_X),
    .X(\u_bg_seq.hcnt[9]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and2b_2_X_A_N ));
 sky130_fd_sc_hd__a41o_2 \u_bg_seq.hcnt[9]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and2b_2_X_B_sky130_fd_sc_hd__a41o_2_X  (.A1(\u_bg_seq.hcnt[8] ),
    .A2(bg_valid_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__nor2_2_A_B_sky130_fd_sc_hd__o2bb2a_2_A2_N_X),
    .A3(\u_bg_seq.hcnt[9]_sky130_fd_sc_hd__xnor2_2_A_Y_sky130_fd_sc_hd__a2111oi_2_D1_Y_sky130_fd_sc_hd__nand3_2_A_Y ),
    .A4(\u_bg_seq.hcnt[6]_sky130_fd_sc_hd__and4_2_C_X_sky130_fd_sc_hd__and2_2_B_X ),
    .B1(\u_bg_seq.hcnt[9] ),
    .X(\u_bg_seq.hcnt[9]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and2b_2_X_B ));
 sky130_fd_sc_hd__xnor2_2 \u_bg_seq.hcnt[9]_sky130_fd_sc_hd__xnor2_2_A  (.A(\u_bg_seq.hcnt[9] ),
    .B(\u_bg_seq.hcnt[9]_sky130_fd_sc_hd__xnor2_2_A_B ),
    .Y(\u_bg_seq.hcnt[9]_sky130_fd_sc_hd__xnor2_2_A_Y ));
 sky130_fd_sc_hd__o21ai_2 \u_bg_seq.hcnt[9]_sky130_fd_sc_hd__xnor2_2_A_B_sky130_fd_sc_hd__o21ai_2_Y  (.A1(\bg_hold_exp[1] ),
    .A2(\bg_hold_exp[2] ),
    .B1(\bg_hold_exp[3] ),
    .Y(\u_bg_seq.hcnt[9]_sky130_fd_sc_hd__xnor2_2_A_B ));
 sky130_fd_sc_hd__a2111oi_2 \u_bg_seq.hcnt[9]_sky130_fd_sc_hd__xnor2_2_A_Y_sky130_fd_sc_hd__a2111oi_2_D1  (.A1(\u_bg_seq.hcnt[6]_sky130_fd_sc_hd__inv_2_A_Y ),
    .A2(\u_bg_seq.hcnt[9]_sky130_fd_sc_hd__xnor2_2_A_Y_sky130_fd_sc_hd__a2111oi_2_D1_A2 ),
    .B1(\u_bg_seq.hcnt[13]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o31a_2_X_A1_sky130_fd_sc_hd__xnor2_2_A_Y_sky130_fd_sc_hd__or4_2_A_X ),
    .C1(\u_bg_seq.hcnt[9]_sky130_fd_sc_hd__xnor2_2_A_Y_sky130_fd_sc_hd__a2111oi_2_D1_C1 ),
    .D1(\u_bg_seq.hcnt[9]_sky130_fd_sc_hd__xnor2_2_A_Y ),
    .Y(\u_bg_seq.hcnt[9]_sky130_fd_sc_hd__xnor2_2_A_Y_sky130_fd_sc_hd__a2111oi_2_D1_Y ));
 sky130_fd_sc_hd__a31o_2 \u_bg_seq.hcnt[9]_sky130_fd_sc_hd__xnor2_2_A_Y_sky130_fd_sc_hd__a2111oi_2_D1_A2_sky130_fd_sc_hd__a31o_2_X  (.A1(\bg_hold_exp[1] ),
    .A2(\bg_hold_exp[0] ),
    .A3(\bg_hold_exp[2] ),
    .B1(\bg_hold_exp[3] ),
    .X(\u_bg_seq.hcnt[9]_sky130_fd_sc_hd__xnor2_2_A_Y_sky130_fd_sc_hd__a2111oi_2_D1_A2 ));
 sky130_fd_sc_hd__nor2_2 \u_bg_seq.hcnt[9]_sky130_fd_sc_hd__xnor2_2_A_Y_sky130_fd_sc_hd__a2111oi_2_D1_C1_sky130_fd_sc_hd__nor2_2_Y  (.A(\u_bg_seq.hcnt[5] ),
    .B(\u_bg_seq.hcnt[9]_sky130_fd_sc_hd__xnor2_2_A_Y_sky130_fd_sc_hd__a2111oi_2_D1_C1_sky130_fd_sc_hd__nor2_2_Y_B ),
    .Y(\u_bg_seq.hcnt[9]_sky130_fd_sc_hd__xnor2_2_A_Y_sky130_fd_sc_hd__a2111oi_2_D1_C1 ));
 sky130_fd_sc_hd__a21oi_2 \u_bg_seq.hcnt[9]_sky130_fd_sc_hd__xnor2_2_A_Y_sky130_fd_sc_hd__a2111oi_2_D1_C1_sky130_fd_sc_hd__nor2_2_Y_B_sky130_fd_sc_hd__a21oi_2_Y  (.A1(\bg_hold_exp[1] ),
    .A2(\bg_hold_exp[2] ),
    .B1(\bg_hold_exp[3] ),
    .Y(\u_bg_seq.hcnt[9]_sky130_fd_sc_hd__xnor2_2_A_Y_sky130_fd_sc_hd__a2111oi_2_D1_C1_sky130_fd_sc_hd__nor2_2_Y_B ));
 sky130_fd_sc_hd__nand2_2 \u_bg_seq.hcnt[9]_sky130_fd_sc_hd__xnor2_2_A_Y_sky130_fd_sc_hd__a2111oi_2_D1_Y_sky130_fd_sc_hd__nand2_2_A  (.A(\u_bg_seq.hcnt[9]_sky130_fd_sc_hd__xnor2_2_A_Y_sky130_fd_sc_hd__a2111oi_2_D1_Y ),
    .B(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_Y ),
    .Y(\u_bg_seq.hcnt[9]_sky130_fd_sc_hd__xnor2_2_A_Y_sky130_fd_sc_hd__a2111oi_2_D1_Y_sky130_fd_sc_hd__nand2_2_A_Y ));
 sky130_fd_sc_hd__and3_2 \u_bg_seq.hcnt[9]_sky130_fd_sc_hd__xnor2_2_A_Y_sky130_fd_sc_hd__a2111oi_2_D1_Y_sky130_fd_sc_hd__nand2_2_A_Y_sky130_fd_sc_hd__and3_2_A  (.A(\u_bg_seq.hcnt[9]_sky130_fd_sc_hd__xnor2_2_A_Y_sky130_fd_sc_hd__a2111oi_2_D1_Y_sky130_fd_sc_hd__nand2_2_A_Y ),
    .B(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__a41o_2_B1_A2 ),
    .C(bg_valid_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__nor2_2_A_B_sky130_fd_sc_hd__o2bb2a_2_A2_N_X),
    .X(\u_bg_seq.hcnt[0]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_A0 ));
 sky130_fd_sc_hd__nand3_2 \u_bg_seq.hcnt[9]_sky130_fd_sc_hd__xnor2_2_A_Y_sky130_fd_sc_hd__a2111oi_2_D1_Y_sky130_fd_sc_hd__nand3_2_A  (.A(\u_bg_seq.hcnt[9]_sky130_fd_sc_hd__xnor2_2_A_Y_sky130_fd_sc_hd__a2111oi_2_D1_Y ),
    .B(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_B1_Y_sky130_fd_sc_hd__a2111o_2_C1_X_sky130_fd_sc_hd__nor4_2_A_Y ),
    .C(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__a41o_2_B1_A2 ),
    .Y(\u_bg_seq.hcnt[9]_sky130_fd_sc_hd__xnor2_2_A_Y_sky130_fd_sc_hd__a2111oi_2_D1_Y_sky130_fd_sc_hd__nand3_2_A_Y ));
 sky130_fd_sc_hd__nand2_2 \u_bg_seq.hcnt[9]_sky130_fd_sc_hd__xnor2_2_A_Y_sky130_fd_sc_hd__a2111oi_2_D1_Y_sky130_fd_sc_hd__nand3_2_A_Y_sky130_fd_sc_hd__nand2_2_B  (.A(bg_valid_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__nor2_2_A_B_sky130_fd_sc_hd__o2bb2a_2_A2_N_X),
    .B(\u_bg_seq.hcnt[9]_sky130_fd_sc_hd__xnor2_2_A_Y_sky130_fd_sc_hd__a2111oi_2_D1_Y_sky130_fd_sc_hd__nand3_2_A_Y ),
    .Y(\u_bg_seq.hcnt[0]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X_A1 ));
 sky130_fd_sc_hd__dfstp_2 \u_bg_seq.state[0]_sky130_fd_sc_hd__dfstp_2_Q  (.CLK(clknet_4_2_0_clk),
    .D(\u_bg_seq.state[0]_sky130_fd_sc_hd__dfstp_2_Q_D ),
    .SET_B(net31),
    .Q(\u_bg_seq.state[0] ));
 sky130_fd_sc_hd__a21o_2 \u_bg_seq.state[0]_sky130_fd_sc_hd__dfstp_2_Q_D_sky130_fd_sc_hd__a21o_2_X  (.A1(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_A_sky130_fd_sc_hd__and4bb_2_C_X),
    .A2(ota_en_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o31a_2_X_A3),
    .B1(\u_bg_seq.state[0]_sky130_fd_sc_hd__dfstp_2_Q_D_sky130_fd_sc_hd__a21o_2_X_B1 ),
    .X(\u_bg_seq.state[0]_sky130_fd_sc_hd__dfstp_2_Q_D ));
 sky130_fd_sc_hd__a211o_2 \u_bg_seq.state[0]_sky130_fd_sc_hd__dfstp_2_Q_D_sky130_fd_sc_hd__a21o_2_X_B1_sky130_fd_sc_hd__a211o_2_X  (.A1(\u_bg_seq.state[0] ),
    .A2(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_A_sky130_fd_sc_hd__and4bb_2_C_X_sky130_fd_sc_hd__nor2_2_A_Y),
    .B1(\u_bg_seq.state[0]_sky130_fd_sc_hd__dfstp_2_Q_D_sky130_fd_sc_hd__a21o_2_X_B1_sky130_fd_sc_hd__a211o_2_X_B1 ),
    .C1(\u_bg_seq.updates[1]_sky130_fd_sc_hd__o2111a_2_C1_A2 ),
    .X(\u_bg_seq.state[0]_sky130_fd_sc_hd__dfstp_2_Q_D_sky130_fd_sc_hd__a21o_2_X_B1 ));
 sky130_fd_sc_hd__and3b_2 \u_bg_seq.state[0]_sky130_fd_sc_hd__dfstp_2_Q_D_sky130_fd_sc_hd__a21o_2_X_B1_sky130_fd_sc_hd__a211o_2_X_B1_sky130_fd_sc_hd__and3b_2_X  (.A_N(bg_burst),
    .B(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_A_sky130_fd_sc_hd__and4bb_2_C_X),
    .C(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_C),
    .X(\u_bg_seq.state[0]_sky130_fd_sc_hd__dfstp_2_Q_D_sky130_fd_sc_hd__a21o_2_X_B1_sky130_fd_sc_hd__a211o_2_X_B1 ));
 sky130_fd_sc_hd__dfrtp_2 \u_bg_seq.state[1]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_2_0_clk),
    .D(\u_bg_seq.state[1]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net31),
    .Q(\u_bg_seq.state[1] ));
 sky130_fd_sc_hd__a31o_2 \u_bg_seq.state[1]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a31o_2_X  (.A1(net93),
    .A2(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_A_sky130_fd_sc_hd__and4bb_2_C_X),
    .A3(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_C),
    .B1(\u_bg_seq.state[1]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a31o_2_X_B1 ),
    .X(\u_bg_seq.state[1]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__a22o_2 \u_bg_seq.state[1]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a31o_2_X_B1_sky130_fd_sc_hd__a22o_2_X  (.A1(\u_bg_seq.state[1] ),
    .A2(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_A_sky130_fd_sc_hd__and4bb_2_C_X_sky130_fd_sc_hd__nor2_2_A_Y),
    .B1(\u_bg_seq.hcnt[9]_sky130_fd_sc_hd__xnor2_2_A_Y_sky130_fd_sc_hd__a2111oi_2_D1_Y_sky130_fd_sc_hd__nand2_2_A_Y ),
    .B2(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__a41o_2_B1_A2 ),
    .X(\u_bg_seq.state[1]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a31o_2_X_B1 ));
 sky130_fd_sc_hd__inv_2 \u_bg_seq.state[1]_sky130_fd_sc_hd__inv_2_A  (.A(\u_bg_seq.state[1] ),
    .Y(ota_en_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o31a_2_X_A3_sky130_fd_sc_hd__nor2_2_Y_A));
 sky130_fd_sc_hd__nand2_2 \u_bg_seq.state[1]_sky130_fd_sc_hd__nand2_2_A  (.A(\u_bg_seq.state[1] ),
    .B(\u_bg_seq.state[1]_sky130_fd_sc_hd__nand2_2_A_B ),
    .Y(\u_bg_seq.state[1]_sky130_fd_sc_hd__nand2_2_A_Y ));
 sky130_fd_sc_hd__inv_2 \u_bg_seq.state[1]_sky130_fd_sc_hd__nand2_2_A_Y_sky130_fd_sc_hd__inv_2_A  (.A(\u_bg_seq.state[1]_sky130_fd_sc_hd__nand2_2_A_Y ),
    .Y(\u_bg_seq.hcnt[15]_sky130_fd_sc_hd__a41o_2_B1_A2 ));
 sky130_fd_sc_hd__dfrtp_2 \u_bg_seq.state[2]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_8_0_clk),
    .D(\u_bg_seq.state[2]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net3),
    .Q(\u_bg_seq.state[2] ));
 sky130_fd_sc_hd__a22o_2 \u_bg_seq.state[2]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a22o_2_X  (.A1(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_A_sky130_fd_sc_hd__and4bb_2_C_X),
    .A2(i8_en_sky130_fd_sc_hd__dfrtp_2_Q_D),
    .B1(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_A_sky130_fd_sc_hd__and4bb_2_C_X_sky130_fd_sc_hd__nor2_2_A_Y),
    .B2(net99),
    .X(\u_bg_seq.state[2]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__dfrtp_2 \u_bg_seq.updates[0]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_0_0_clk),
    .D(\u_bg_seq.updates[0]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net3),
    .Q(\u_bg_seq.updates[0] ));
 sky130_fd_sc_hd__and3_2 \u_bg_seq.updates[0]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3_2_X  (.A(\u_bg_seq.state[1]_sky130_fd_sc_hd__nand2_2_A_B ),
    .B(\u_bg_seq.updates[0]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3_2_X_B ),
    .C(\u_bg_seq.updates[0]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3_2_X_C ),
    .X(\u_bg_seq.updates[0]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__a21o_2 \u_bg_seq.updates[0]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3_2_X_B_sky130_fd_sc_hd__a21o_2_X  (.A1(\u_bg_seq.cnt[11]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__nor2_2_Y_A ),
    .A2(bg_valid_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__nor2_2_A_Y),
    .B1(\u_bg_seq.updates[0] ),
    .X(\u_bg_seq.updates[0]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3_2_X_B ));
 sky130_fd_sc_hd__nand3_2 \u_bg_seq.updates[0]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3_2_X_C_sky130_fd_sc_hd__nand3_2_Y  (.A(\u_bg_seq.updates[0] ),
    .B(\u_bg_seq.cnt[11]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__nor2_2_Y_A ),
    .C(bg_valid_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__nor2_2_A_Y),
    .Y(\u_bg_seq.updates[0]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3_2_X_C ));
 sky130_fd_sc_hd__dfrtp_2 \u_bg_seq.updates[1]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_0_0_clk),
    .D(\u_bg_seq.updates[1]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net3),
    .Q(\u_bg_seq.updates[1] ));
 sky130_fd_sc_hd__a21oi_2 \u_bg_seq.updates[1]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a21oi_2_Y  (.A1(\u_bg_seq.updates[1]_sky130_fd_sc_hd__inv_2_A_Y ),
    .A2(\u_bg_seq.updates[0]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3_2_X_C ),
    .B1(\u_bg_seq.updates[1]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a21oi_2_Y_B1 ),
    .Y(\u_bg_seq.updates[1]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__or2_2 \u_bg_seq.updates[1]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a21oi_2_Y_B1_sky130_fd_sc_hd__or2_2_X  (.A(\u_bg_seq.updates[1]_sky130_fd_sc_hd__o2111a_2_C1_A2 ),
    .B(\u_bg_seq.updates[1]_sky130_fd_sc_hd__o2111a_2_C1_X ),
    .X(\u_bg_seq.updates[1]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a21oi_2_Y_B1 ));
 sky130_fd_sc_hd__inv_2 \u_bg_seq.updates[1]_sky130_fd_sc_hd__inv_2_A  (.A(net88),
    .Y(\u_bg_seq.updates[1]_sky130_fd_sc_hd__inv_2_A_Y ));
 sky130_fd_sc_hd__o2111a_2 \u_bg_seq.updates[1]_sky130_fd_sc_hd__o2111a_2_C1  (.A1(cap_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and4_2_X_A_sky130_fd_sc_hd__and4bb_2_C_X),
    .A2(\u_bg_seq.updates[1]_sky130_fd_sc_hd__o2111a_2_C1_A2 ),
    .B1(bg_valid_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__nor2_2_A_Y),
    .C1(\u_bg_seq.updates[1] ),
    .D1(\u_bg_seq.updates[0] ),
    .X(\u_bg_seq.updates[1]_sky130_fd_sc_hd__o2111a_2_C1_X ));
 sky130_fd_sc_hd__dfrtp_2 \u_bg_seq.updates[2]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_0_0_clk),
    .D(\u_bg_seq.updates[2]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net3),
    .Q(\u_bg_seq.updates[2] ));
 sky130_fd_sc_hd__a21oi_2 \u_bg_seq.updates[2]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a21oi_2_Y  (.A1(net38),
    .A2(\u_bg_seq.updates[1]_sky130_fd_sc_hd__o2111a_2_C1_X ),
    .B1(\u_bg_seq.updates[2]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a21oi_2_Y_B1 ),
    .Y(\u_bg_seq.updates[2]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__o21ai_2 \u_bg_seq.updates[2]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a21oi_2_Y_B1_sky130_fd_sc_hd__o21ai_2_Y  (.A1(net38),
    .A2(\u_bg_seq.updates[1]_sky130_fd_sc_hd__o2111a_2_C1_X ),
    .B1(\u_bg_seq.state[1]_sky130_fd_sc_hd__nand2_2_A_B ),
    .Y(\u_bg_seq.updates[2]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a21oi_2_Y_B1 ));
 sky130_fd_sc_hd__dfrtp_2 \u_pwm0.phase[0]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_1_0__leaf_pwm0_clk),
    .D(\u_pwm0.phase[0]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(\u_pwm0.rst_n ),
    .Q(\u_pwm0.phase[0] ));
 sky130_fd_sc_hd__and3_2 \u_pwm0.phase[0]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3_2_X  (.A(pwm0_width),
    .B(\u_pwm0.phase[0]_sky130_fd_sc_hd__inv_2_A_Y ),
    .C(pwm0_enable_sky130_fd_sc_hd__and2_2_B_X),
    .X(\u_pwm0.phase[0]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__inv_2 \u_pwm0.phase[0]_sky130_fd_sc_hd__inv_2_A  (.A(\u_pwm0.phase[0] ),
    .Y(\u_pwm0.phase[0]_sky130_fd_sc_hd__inv_2_A_Y ));
 sky130_fd_sc_hd__dfrtp_2 \u_pwm0.phase[1]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_1_0__leaf_pwm0_clk),
    .D(\u_pwm0.phase[1]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(\u_pwm0.rst_n ),
    .Q(\u_pwm0.phase[1] ));
 sky130_fd_sc_hd__inv_2 \u_pwm0.phase[1]_sky130_fd_sc_hd__inv_2_A  (.A(\u_pwm0.phase[1] ),
    .Y(\u_pwm0.phase[1]_sky130_fd_sc_hd__inv_2_A_Y ));
 sky130_fd_sc_hd__a22o_2 \u_pwm0.phase[1]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__a22o_2_A2  (.A1(\pwm0_duty[1] ),
    .A2(\u_pwm0.phase[1]_sky130_fd_sc_hd__inv_2_A_Y ),
    .B1(\pwm0_duty[0] ),
    .B2(\u_pwm0.phase[0]_sky130_fd_sc_hd__inv_2_A_Y ),
    .X(\u_pwm0.phase[1]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__a22o_2_A2_X ));
 sky130_fd_sc_hd__o21ai_2 \u_pwm0.phase[1]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_A1  (.A1(\u_pwm0.phase[1]_sky130_fd_sc_hd__inv_2_A_Y ),
    .A2(\u_pwm0.phase[0]_sky130_fd_sc_hd__inv_2_A_Y ),
    .B1(pwm0_width),
    .Y(\u_pwm0.phase[1]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_A1_Y ));
 sky130_fd_sc_hd__or2_2 \u_pwm0.phase[1]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__or2_2_B  (.A(\pwm0_duty[1] ),
    .B(\u_pwm0.phase[1]_sky130_fd_sc_hd__inv_2_A_Y ),
    .X(\u_pwm0.phase[1]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__or2_2_B_X ));
 sky130_fd_sc_hd__o211a_2 \u_pwm0.phase[1]_sky130_fd_sc_hd__o211a_2_A1  (.A1(\u_pwm0.phase[1] ),
    .A2(\u_pwm0.phase[0] ),
    .B1(pwm0_enable_sky130_fd_sc_hd__and2_2_B_X),
    .C1(\u_pwm0.phase[1]_sky130_fd_sc_hd__o211a_2_A1_C1 ),
    .X(\u_pwm0.phase[1]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__inv_2 \u_pwm0.phase[1]_sky130_fd_sc_hd__o211a_2_A1_C1_sky130_fd_sc_hd__inv_2_Y  (.A(\u_pwm0.phase[1]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_A1_Y ),
    .Y(\u_pwm0.phase[1]_sky130_fd_sc_hd__o211a_2_A1_C1 ));
 sky130_fd_sc_hd__dfrtp_2 \u_pwm0.phase[2]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_1_1__leaf_pwm0_clk),
    .D(\u_pwm0.phase[2]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(\u_pwm0.rst_n ),
    .Q(\u_pwm0.phase[2] ));
 sky130_fd_sc_hd__a21oi_2 \u_pwm0.phase[2]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a21oi_2_Y  (.A1(\u_pwm0.phase[2] ),
    .A2(\u_pwm0.phase[1]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_A1_Y ),
    .B1(\u_pwm0.phase[2]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a21oi_2_Y_B1 ),
    .Y(\u_pwm0.phase[2]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__o21ai_2 \u_pwm0.phase[2]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a21oi_2_Y_B1_sky130_fd_sc_hd__o21ai_2_Y  (.A1(\u_pwm0.phase[2] ),
    .A2(\u_pwm0.phase[1]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_A1_Y ),
    .B1(pwm0_enable_sky130_fd_sc_hd__and2_2_B_X),
    .Y(\u_pwm0.phase[2]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a21oi_2_Y_B1 ));
 sky130_fd_sc_hd__and3_2 \u_pwm0.phase[3]_sky130_fd_sc_hd__and3_2_A  (.A(\u_pwm0.phase[3] ),
    .B(\u_pwm0.phase[2] ),
    .C(\u_pwm0.phase[1]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_A1_Y ),
    .X(\u_pwm0.phase[3]_sky130_fd_sc_hd__and3_2_A_X ));
 sky130_fd_sc_hd__dfrtp_2 \u_pwm0.phase[3]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_1_1__leaf_pwm0_clk),
    .D(\u_pwm0.phase[3]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(\u_pwm0.rst_n ),
    .Q(\u_pwm0.phase[3] ));
 sky130_fd_sc_hd__and3b_2 \u_pwm0.phase[3]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X  (.A_N(\u_pwm0.phase[3]_sky130_fd_sc_hd__and3_2_A_X ),
    .B(pwm0_enable_sky130_fd_sc_hd__and2_2_B_X),
    .C(\u_pwm0.phase[3]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X_C ),
    .X(\u_pwm0.phase[3]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__a21o_2 \u_pwm0.phase[3]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X_C_sky130_fd_sc_hd__a21o_2_X  (.A1(\u_pwm0.phase[2] ),
    .A2(\u_pwm0.phase[1]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_A1_Y ),
    .B1(\u_pwm0.phase[3] ),
    .X(\u_pwm0.phase[3]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X_C ));
 sky130_fd_sc_hd__inv_2 \u_pwm0.phase[3]_sky130_fd_sc_hd__inv_2_A  (.A(\u_pwm0.phase[3] ),
    .Y(\u_pwm0.phase[3]_sky130_fd_sc_hd__inv_2_A_Y ));
 sky130_fd_sc_hd__a22o_2 \u_pwm0.phase[3]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__a22o_2_B2  (.A1(\pwm0_duty[4] ),
    .A2(pwm0_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X_B1_sky130_fd_sc_hd__o221a_2_X_B2),
    .B1(\pwm0_duty[3] ),
    .B2(\u_pwm0.phase[3]_sky130_fd_sc_hd__inv_2_A_Y ),
    .X(\u_pwm0.phase[3]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__a22o_2_B2_X ));
 sky130_fd_sc_hd__o22a_2 \u_pwm0.phase[3]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o22a_2_A2  (.A1(\pwm0_duty[3] ),
    .A2(\u_pwm0.phase[3]_sky130_fd_sc_hd__inv_2_A_Y ),
    .B1(\pwm0_duty[2] ),
    .B2(\u_pwm0.phase[3]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o22a_2_A2_B2 ),
    .X(\u_pwm0.phase[3]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o22a_2_A2_X ));
 sky130_fd_sc_hd__inv_2 \u_pwm0.phase[3]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o22a_2_A2_B2_sky130_fd_sc_hd__inv_2_Y  (.A(\u_pwm0.phase[2] ),
    .Y(\u_pwm0.phase[3]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o22a_2_A2_B2 ));
 sky130_fd_sc_hd__and2_2 \u_pwm0.phase[4]_sky130_fd_sc_hd__and2_2_A  (.A(\u_pwm0.phase[4] ),
    .B(\u_pwm0.phase[3]_sky130_fd_sc_hd__and3_2_A_X ),
    .X(\u_pwm0.phase[6]_sky130_fd_sc_hd__and3_2_A_C ));
 sky130_fd_sc_hd__dfrtp_2 \u_pwm0.phase[4]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_1_0__leaf_pwm0_clk),
    .D(\u_pwm0.phase[4]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(\u_pwm0.rst_n ),
    .Q(\u_pwm0.phase[4] ));
 sky130_fd_sc_hd__nor2_2 \u_pwm0.phase[4]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__nor2_2_Y  (.A(\u_pwm0.phase[6]_sky130_fd_sc_hd__and3_2_A_C ),
    .B(\u_pwm0.phase[4]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__nor2_2_Y_B ),
    .Y(\u_pwm0.phase[4]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__o21ai_2 \u_pwm0.phase[4]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__nor2_2_Y_B_sky130_fd_sc_hd__o21ai_2_Y  (.A1(\u_pwm0.phase[4] ),
    .A2(\u_pwm0.phase[3]_sky130_fd_sc_hd__and3_2_A_X ),
    .B1(pwm0_enable_sky130_fd_sc_hd__and2_2_B_X),
    .Y(\u_pwm0.phase[4]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__nor2_2_Y_B ));
 sky130_fd_sc_hd__dfrtp_2 \u_pwm0.phase[5]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_1_1__leaf_pwm0_clk),
    .D(\u_pwm0.phase[5]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(\u_pwm0.rst_n ),
    .Q(\u_pwm0.phase[5] ));
 sky130_fd_sc_hd__a21oi_2 \u_pwm0.phase[5]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a21oi_2_Y  (.A1(\u_pwm0.phase[5] ),
    .A2(\u_pwm0.phase[6]_sky130_fd_sc_hd__and3_2_A_C ),
    .B1(\u_pwm0.phase[5]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a21oi_2_Y_B1 ),
    .Y(\u_pwm0.phase[5]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__o21ai_2 \u_pwm0.phase[5]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a21oi_2_Y_B1_sky130_fd_sc_hd__o21ai_2_Y  (.A1(\u_pwm0.phase[5] ),
    .A2(\u_pwm0.phase[6]_sky130_fd_sc_hd__and3_2_A_C ),
    .B1(pwm0_enable_sky130_fd_sc_hd__and2_2_B_X),
    .Y(\u_pwm0.phase[5]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a21oi_2_Y_B1 ));
 sky130_fd_sc_hd__and3_2 \u_pwm0.phase[6]_sky130_fd_sc_hd__and3_2_A  (.A(\u_pwm0.phase[6] ),
    .B(\u_pwm0.phase[5] ),
    .C(\u_pwm0.phase[6]_sky130_fd_sc_hd__and3_2_A_C ),
    .X(\u_pwm0.phase[6]_sky130_fd_sc_hd__and3_2_A_X ));
 sky130_fd_sc_hd__dfrtp_2 \u_pwm0.phase[6]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_1_0__leaf_pwm0_clk),
    .D(\u_pwm0.phase[6]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(\u_pwm0.rst_n ),
    .Q(\u_pwm0.phase[6] ));
 sky130_fd_sc_hd__and3b_2 \u_pwm0.phase[6]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X  (.A_N(\u_pwm0.phase[6]_sky130_fd_sc_hd__and3_2_A_X ),
    .B(pwm0_enable_sky130_fd_sc_hd__and2_2_B_X),
    .C(\u_pwm0.phase[6]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X_C ),
    .X(\u_pwm0.phase[6]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__a31o_2 \u_pwm0.phase[6]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X_C_sky130_fd_sc_hd__a31o_2_X  (.A1(\u_pwm0.phase[5] ),
    .A2(\u_pwm0.phase[4] ),
    .A3(\u_pwm0.phase[3]_sky130_fd_sc_hd__and3_2_A_X ),
    .B1(\u_pwm0.phase[6] ),
    .X(\u_pwm0.phase[6]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X_C ));
 sky130_fd_sc_hd__inv_2 \u_pwm0.phase[6]_sky130_fd_sc_hd__inv_2_A  (.A(\u_pwm0.phase[6] ),
    .Y(pwm0_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X_A2));
 sky130_fd_sc_hd__dfrtp_2 \u_pwm0.phase[7]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_1_0__leaf_pwm0_clk),
    .D(\u_pwm0.phase[7]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(\u_pwm0.rst_n ),
    .Q(\u_pwm0.phase[7] ));
 sky130_fd_sc_hd__a21oi_2 \u_pwm0.phase[7]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a21oi_2_Y  (.A1(\u_pwm0.phase[7] ),
    .A2(\u_pwm0.phase[6]_sky130_fd_sc_hd__and3_2_A_X ),
    .B1(\u_pwm0.phase[7]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a21oi_2_Y_B1 ),
    .Y(\u_pwm0.phase[7]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__o21ai_2 \u_pwm0.phase[7]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a21oi_2_Y_B1_sky130_fd_sc_hd__o21ai_2_Y  (.A1(\u_pwm0.phase[7] ),
    .A2(\u_pwm0.phase[6]_sky130_fd_sc_hd__and3_2_A_X ),
    .B1(pwm0_enable_sky130_fd_sc_hd__and2_2_B_X),
    .Y(\u_pwm0.phase[7]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a21oi_2_Y_B1 ));
 sky130_fd_sc_hd__and2_2 \u_pwm0.rst_n_sky130_fd_sc_hd__and2_2_X  (.A(net31),
    .B(net2),
    .X(\u_pwm0.rst_n ));
 sky130_fd_sc_hd__dfrtp_2 \u_pwm1.phase[0]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_1_0__leaf_pwm1_clk),
    .D(\u_pwm1.phase[0]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(\u_pwm0.rst_n ),
    .Q(\u_pwm1.phase[0] ));
 sky130_fd_sc_hd__and3_2 \u_pwm1.phase[0]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3_2_X  (.A(pwm1_width),
    .B(\u_pwm1.phase[0]_sky130_fd_sc_hd__inv_2_A_Y ),
    .C(pwm1_enable_sky130_fd_sc_hd__and2_2_B_X),
    .X(\u_pwm1.phase[0]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__inv_2 \u_pwm1.phase[0]_sky130_fd_sc_hd__inv_2_A  (.A(\u_pwm1.phase[0] ),
    .Y(\u_pwm1.phase[0]_sky130_fd_sc_hd__inv_2_A_Y ));
 sky130_fd_sc_hd__dfrtp_2 \u_pwm1.phase[1]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_1_0__leaf_pwm1_clk),
    .D(\u_pwm1.phase[1]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(\u_pwm0.rst_n ),
    .Q(\u_pwm1.phase[1] ));
 sky130_fd_sc_hd__inv_2 \u_pwm1.phase[1]_sky130_fd_sc_hd__inv_2_A  (.A(\u_pwm1.phase[1] ),
    .Y(\u_pwm1.phase[1]_sky130_fd_sc_hd__inv_2_A_Y ));
 sky130_fd_sc_hd__a22o_2 \u_pwm1.phase[1]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__a22o_2_A2  (.A1(\pwm1_duty[1] ),
    .A2(\u_pwm1.phase[1]_sky130_fd_sc_hd__inv_2_A_Y ),
    .B1(\pwm1_duty[0] ),
    .B2(\u_pwm1.phase[0]_sky130_fd_sc_hd__inv_2_A_Y ),
    .X(\u_pwm1.phase[1]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__a22o_2_A2_X ));
 sky130_fd_sc_hd__o21ai_2 \u_pwm1.phase[1]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_A1  (.A1(\u_pwm1.phase[1]_sky130_fd_sc_hd__inv_2_A_Y ),
    .A2(\u_pwm1.phase[0]_sky130_fd_sc_hd__inv_2_A_Y ),
    .B1(pwm1_width),
    .Y(\u_pwm1.phase[1]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_A1_Y ));
 sky130_fd_sc_hd__o221a_2 \u_pwm1.phase[1]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o221a_2_B2  (.A1(\pwm1_duty[2] ),
    .A2(\u_pwm1.phase[1]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o221a_2_B2_A2 ),
    .B1(\pwm1_duty[1] ),
    .B2(\u_pwm1.phase[1]_sky130_fd_sc_hd__inv_2_A_Y ),
    .C1(pwm1_width),
    .X(\u_pwm1.phase[1]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o221a_2_B2_X ));
 sky130_fd_sc_hd__inv_2 \u_pwm1.phase[1]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o221a_2_B2_A2_sky130_fd_sc_hd__inv_2_Y  (.A(\u_pwm1.phase[2] ),
    .Y(\u_pwm1.phase[1]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o221a_2_B2_A2 ));
 sky130_fd_sc_hd__o211a_2 \u_pwm1.phase[1]_sky130_fd_sc_hd__o211a_2_A1  (.A1(\u_pwm1.phase[1] ),
    .A2(\u_pwm1.phase[0] ),
    .B1(pwm1_enable_sky130_fd_sc_hd__and2_2_B_X),
    .C1(\u_pwm1.phase[1]_sky130_fd_sc_hd__o211a_2_A1_C1 ),
    .X(\u_pwm1.phase[1]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__inv_2 \u_pwm1.phase[1]_sky130_fd_sc_hd__o211a_2_A1_C1_sky130_fd_sc_hd__inv_2_Y  (.A(\u_pwm1.phase[1]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_A1_Y ),
    .Y(\u_pwm1.phase[1]_sky130_fd_sc_hd__o211a_2_A1_C1 ));
 sky130_fd_sc_hd__dfrtp_2 \u_pwm1.phase[2]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_1_0__leaf_pwm1_clk),
    .D(\u_pwm1.phase[2]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(\u_pwm0.rst_n ),
    .Q(\u_pwm1.phase[2] ));
 sky130_fd_sc_hd__a21oi_2 \u_pwm1.phase[2]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a21oi_2_Y  (.A1(\u_pwm1.phase[2] ),
    .A2(\u_pwm1.phase[1]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_A1_Y ),
    .B1(\u_pwm1.phase[2]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a21oi_2_Y_B1 ),
    .Y(\u_pwm1.phase[2]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__o21ai_2 \u_pwm1.phase[2]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a21oi_2_Y_B1_sky130_fd_sc_hd__o21ai_2_Y  (.A1(\u_pwm1.phase[2] ),
    .A2(\u_pwm1.phase[1]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_A1_Y ),
    .B1(pwm1_enable_sky130_fd_sc_hd__and2_2_B_X),
    .Y(\u_pwm1.phase[2]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a21oi_2_Y_B1 ));
 sky130_fd_sc_hd__and3_2 \u_pwm1.phase[3]_sky130_fd_sc_hd__and3_2_A  (.A(\u_pwm1.phase[3] ),
    .B(\u_pwm1.phase[2] ),
    .C(\u_pwm1.phase[1]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_A1_Y ),
    .X(\u_pwm1.phase[3]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X_A_N ));
 sky130_fd_sc_hd__dfrtp_2 \u_pwm1.phase[3]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_1_0__leaf_pwm1_clk),
    .D(\u_pwm1.phase[3]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(\u_pwm0.rst_n ),
    .Q(\u_pwm1.phase[3] ));
 sky130_fd_sc_hd__and3b_2 \u_pwm1.phase[3]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X  (.A_N(\u_pwm1.phase[3]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X_A_N ),
    .B(pwm1_enable_sky130_fd_sc_hd__and2_2_B_X),
    .C(\u_pwm1.phase[3]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X_C ),
    .X(\u_pwm1.phase[3]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__a21o_2 \u_pwm1.phase[3]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X_C_sky130_fd_sc_hd__a21o_2_X  (.A1(\u_pwm1.phase[2] ),
    .A2(\u_pwm1.phase[1]_sky130_fd_sc_hd__inv_2_A_Y_sky130_fd_sc_hd__o21ai_2_A1_Y ),
    .B1(\u_pwm1.phase[3] ),
    .X(\u_pwm1.phase[3]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X_C ));
 sky130_fd_sc_hd__and2_2 \u_pwm1.phase[4]_sky130_fd_sc_hd__and2_2_A  (.A(\u_pwm1.phase[4] ),
    .B(\u_pwm1.phase[3]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X_A_N ),
    .X(\u_pwm1.phase[6]_sky130_fd_sc_hd__and3_2_A_C ));
 sky130_fd_sc_hd__dfrtp_2 \u_pwm1.phase[4]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_1_1__leaf_pwm1_clk),
    .D(\u_pwm1.phase[4]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(\u_pwm0.rst_n ),
    .Q(\u_pwm1.phase[4] ));
 sky130_fd_sc_hd__nor2_2 \u_pwm1.phase[4]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__nor2_2_Y  (.A(\u_pwm1.phase[6]_sky130_fd_sc_hd__and3_2_A_C ),
    .B(\u_pwm1.phase[4]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__nor2_2_Y_B ),
    .Y(\u_pwm1.phase[4]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__o21ai_2 \u_pwm1.phase[4]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__nor2_2_Y_B_sky130_fd_sc_hd__o21ai_2_Y  (.A1(\u_pwm1.phase[4] ),
    .A2(\u_pwm1.phase[3]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X_A_N ),
    .B1(pwm1_enable_sky130_fd_sc_hd__and2_2_B_X),
    .Y(\u_pwm1.phase[4]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__nor2_2_Y_B ));
 sky130_fd_sc_hd__dfrtp_2 \u_pwm1.phase[5]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_1_1__leaf_pwm1_clk),
    .D(\u_pwm1.phase[5]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(\u_pwm0.rst_n ),
    .Q(\u_pwm1.phase[5] ));
 sky130_fd_sc_hd__a21oi_2 \u_pwm1.phase[5]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a21oi_2_Y  (.A1(\u_pwm1.phase[5] ),
    .A2(\u_pwm1.phase[6]_sky130_fd_sc_hd__and3_2_A_C ),
    .B1(\u_pwm1.phase[5]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a21oi_2_Y_B1 ),
    .Y(\u_pwm1.phase[5]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__o21ai_2 \u_pwm1.phase[5]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a21oi_2_Y_B1_sky130_fd_sc_hd__o21ai_2_Y  (.A1(\u_pwm1.phase[5] ),
    .A2(\u_pwm1.phase[6]_sky130_fd_sc_hd__and3_2_A_C ),
    .B1(pwm1_enable_sky130_fd_sc_hd__and2_2_B_X),
    .Y(\u_pwm1.phase[5]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a21oi_2_Y_B1 ));
 sky130_fd_sc_hd__and3_2 \u_pwm1.phase[6]_sky130_fd_sc_hd__and3_2_A  (.A(\u_pwm1.phase[6] ),
    .B(\u_pwm1.phase[5] ),
    .C(\u_pwm1.phase[6]_sky130_fd_sc_hd__and3_2_A_C ),
    .X(\u_pwm1.phase[6]_sky130_fd_sc_hd__and3_2_A_X ));
 sky130_fd_sc_hd__dfrtp_2 \u_pwm1.phase[6]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_1_1__leaf_pwm1_clk),
    .D(\u_pwm1.phase[6]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(\u_pwm0.rst_n ),
    .Q(\u_pwm1.phase[6] ));
 sky130_fd_sc_hd__and3b_2 \u_pwm1.phase[6]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X  (.A_N(\u_pwm1.phase[6]_sky130_fd_sc_hd__and3_2_A_X ),
    .B(pwm1_enable_sky130_fd_sc_hd__and2_2_B_X),
    .C(\u_pwm1.phase[6]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X_C ),
    .X(\u_pwm1.phase[6]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__a31o_2 \u_pwm1.phase[6]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X_C_sky130_fd_sc_hd__a31o_2_X  (.A1(\u_pwm1.phase[5] ),
    .A2(\u_pwm1.phase[4] ),
    .A3(\u_pwm1.phase[3]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X_A_N ),
    .B1(\u_pwm1.phase[6] ),
    .X(\u_pwm1.phase[6]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__and3b_2_X_C ));
 sky130_fd_sc_hd__inv_2 \u_pwm1.phase[6]_sky130_fd_sc_hd__inv_2_A  (.A(\u_pwm1.phase[6] ),
    .Y(pwm1_out_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o221a_2_X_B2_sky130_fd_sc_hd__o22a_2_X_A2));
 sky130_fd_sc_hd__dfrtp_2 \u_pwm1.phase[7]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_1_1__leaf_pwm1_clk),
    .D(\u_pwm1.phase[7]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(\u_pwm0.rst_n ),
    .Q(\u_pwm1.phase[7] ));
 sky130_fd_sc_hd__a21oi_2 \u_pwm1.phase[7]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a21oi_2_Y  (.A1(\u_pwm1.phase[7] ),
    .A2(\u_pwm1.phase[6]_sky130_fd_sc_hd__and3_2_A_X ),
    .B1(\u_pwm1.phase[7]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a21oi_2_Y_B1 ),
    .Y(\u_pwm1.phase[7]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__o21ai_2 \u_pwm1.phase[7]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a21oi_2_Y_B1_sky130_fd_sc_hd__o21ai_2_Y  (.A1(\u_pwm1.phase[7] ),
    .A2(\u_pwm1.phase[6]_sky130_fd_sc_hd__and3_2_A_X ),
    .B1(pwm1_enable_sky130_fd_sc_hd__and2_2_B_X),
    .Y(\u_pwm1.phase[7]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a21oi_2_Y_B1 ));
 sky130_fd_sc_hd__dfrtp_2 \u_reg_bank.wr_addr[0]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_4_0_clk),
    .D(\u_reg_bank.wr_addr[0]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net3),
    .Q(\u_reg_bank.wr_addr[0] ));
 sky130_fd_sc_hd__mux2_1 \u_reg_bank.wr_addr[0]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X  (.A0(\rd_addr[0] ),
    .A1(net106),
    .S(\u_spi_slave.rw_sky130_fd_sc_hd__or3b_2_A_X ),
    .X(\u_reg_bank.wr_addr[0]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__dfrtp_2 \u_reg_bank.wr_addr[1]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_4_0_clk),
    .D(\u_reg_bank.wr_addr[1]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net31),
    .Q(\u_reg_bank.wr_addr[1] ));
 sky130_fd_sc_hd__mux2_1 \u_reg_bank.wr_addr[1]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X  (.A0(\rd_addr[1] ),
    .A1(net96),
    .S(\u_spi_slave.rw_sky130_fd_sc_hd__or3b_2_A_X ),
    .X(\u_reg_bank.wr_addr[1]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__dfrtp_2 \u_reg_bank.wr_addr[2]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_4_0_clk),
    .D(\u_reg_bank.wr_addr[2]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net3),
    .Q(\u_reg_bank.wr_addr[2] ));
 sky130_fd_sc_hd__mux2_1 \u_reg_bank.wr_addr[2]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X  (.A0(net107),
    .A1(\u_reg_bank.wr_addr[2] ),
    .S(\u_spi_slave.rw_sky130_fd_sc_hd__or3b_2_A_X ),
    .X(\u_reg_bank.wr_addr[2]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__dfrtp_2 \u_reg_bank.wr_addr[3]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_5_0_clk),
    .D(\u_reg_bank.wr_addr[3]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net3),
    .Q(\u_reg_bank.wr_addr[3] ));
 sky130_fd_sc_hd__mux2_1 \u_reg_bank.wr_addr[3]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X  (.A0(\rd_addr[3] ),
    .A1(net47),
    .S(\u_spi_slave.rw_sky130_fd_sc_hd__or3b_2_A_X ),
    .X(\u_reg_bank.wr_addr[3]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__or4_2 \u_reg_bank.wr_addr[3]_sky130_fd_sc_hd__or4_2_A  (.A(\u_reg_bank.wr_addr[3] ),
    .B(\u_reg_bank.wr_addr[5] ),
    .C(\u_reg_bank.wr_addr[4] ),
    .D(\u_reg_bank.wr_addr[6] ),
    .X(\u_reg_bank.wr_addr[3]_sky130_fd_sc_hd__or4_2_A_X ));
 sky130_fd_sc_hd__or2_2 \u_reg_bank.wr_addr[3]_sky130_fd_sc_hd__or4_2_A_X_sky130_fd_sc_hd__or2_2_B  (.A(\u_reg_bank.wr_addr[3]_sky130_fd_sc_hd__or4_2_A_X_sky130_fd_sc_hd__or2_2_B_A ),
    .B(\u_reg_bank.wr_addr[3]_sky130_fd_sc_hd__or4_2_A_X ),
    .X(pwm1_clk_sel_sky130_fd_sc_hd__mux2_1_A0_S_sky130_fd_sc_hd__nor3_2_Y_C));
 sky130_fd_sc_hd__inv_2 \u_reg_bank.wr_addr[3]_sky130_fd_sc_hd__or4_2_A_X_sky130_fd_sc_hd__or2_2_B_A_sky130_fd_sc_hd__inv_2_Y  (.A(\u_reg_bank.wr_addr[2] ),
    .Y(\u_reg_bank.wr_addr[3]_sky130_fd_sc_hd__or4_2_A_X_sky130_fd_sc_hd__or2_2_B_A ));
 sky130_fd_sc_hd__or3b_2 \u_reg_bank.wr_addr[3]_sky130_fd_sc_hd__or4_2_A_X_sky130_fd_sc_hd__or3b_2_B  (.A(\u_reg_bank.wr_addr[2] ),
    .B(\u_reg_bank.wr_addr[3]_sky130_fd_sc_hd__or4_2_A_X ),
    .C_N(\u_reg_bank.wr_addr[0] ),
    .X(\u_reg_bank.wr_addr[3]_sky130_fd_sc_hd__or4_2_A_X_sky130_fd_sc_hd__or3b_2_B_X ));
 sky130_fd_sc_hd__or2_2 \u_reg_bank.wr_addr[3]_sky130_fd_sc_hd__or4_2_A_X_sky130_fd_sc_hd__or3b_2_B_X_sky130_fd_sc_hd__or2_2_A  (.A(\u_reg_bank.wr_addr[3]_sky130_fd_sc_hd__or4_2_A_X_sky130_fd_sc_hd__or3b_2_B_X ),
    .B(dbl_en_sky130_fd_sc_hd__mux2_1_A1_S_sky130_fd_sc_hd__or3_2_X_C),
    .X(\u_reg_bank.wr_addr[3]_sky130_fd_sc_hd__or4_2_A_X_sky130_fd_sc_hd__or3b_2_B_X_sky130_fd_sc_hd__or2_2_A_X ));
 sky130_fd_sc_hd__or3b_2 \u_reg_bank.wr_addr[3]_sky130_fd_sc_hd__or4_2_A_X_sky130_fd_sc_hd__or3b_2_B_X_sky130_fd_sc_hd__or3b_2_A  (.A(\u_reg_bank.wr_addr[3]_sky130_fd_sc_hd__or4_2_A_X_sky130_fd_sc_hd__or3b_2_B_X ),
    .B(\u_reg_bank.wr_addr[1] ),
    .C_N(\u_reg_bank.wr_en ),
    .X(\u_reg_bank.wr_addr[3]_sky130_fd_sc_hd__or4_2_A_X_sky130_fd_sc_hd__or3b_2_B_X_sky130_fd_sc_hd__or3b_2_A_X ));
 sky130_fd_sc_hd__dfrtp_2 \u_reg_bank.wr_addr[4]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_5_0_clk),
    .D(net51),
    .RESET_B(net31),
    .Q(\u_reg_bank.wr_addr[4] ));
 sky130_fd_sc_hd__mux2_1 \u_reg_bank.wr_addr[4]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X  (.A0(\rd_addr[4] ),
    .A1(net50),
    .S(\u_spi_slave.rw_sky130_fd_sc_hd__or3b_2_A_X ),
    .X(\u_reg_bank.wr_addr[4]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__dfrtp_2 \u_reg_bank.wr_addr[5]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_5_0_clk),
    .D(net55),
    .RESET_B(net3),
    .Q(\u_reg_bank.wr_addr[5] ));
 sky130_fd_sc_hd__mux2_1 \u_reg_bank.wr_addr[5]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X  (.A0(\rd_addr[5] ),
    .A1(net54),
    .S(\u_spi_slave.rw_sky130_fd_sc_hd__or3b_2_A_X ),
    .X(\u_reg_bank.wr_addr[5]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__or4b_2 \u_reg_bank.wr_addr[5]_sky130_fd_sc_hd__or4b_2_A  (.A(\u_reg_bank.wr_addr[5] ),
    .B(\u_reg_bank.wr_addr[4] ),
    .C(\u_reg_bank.wr_addr[6] ),
    .D_N(\u_reg_bank.wr_addr[3] ),
    .X(\u_reg_bank.wr_addr[5]_sky130_fd_sc_hd__or4b_2_A_X ));
 sky130_fd_sc_hd__nor3_2 \u_reg_bank.wr_addr[5]_sky130_fd_sc_hd__or4b_2_A_X_sky130_fd_sc_hd__nor3_2_C  (.A(\u_reg_bank.wr_addr[2] ),
    .B(pwm0_clk_sel_sky130_fd_sc_hd__mux2_1_A0_S_sky130_fd_sc_hd__nor2_2_Y_A),
    .C(\u_reg_bank.wr_addr[5]_sky130_fd_sc_hd__or4b_2_A_X ),
    .Y(\u_reg_bank.wr_addr[5]_sky130_fd_sc_hd__or4b_2_A_X_sky130_fd_sc_hd__nor3_2_C_Y ));
 sky130_fd_sc_hd__dfrtp_2 \u_reg_bank.wr_addr[6]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_5_0_clk),
    .D(net49),
    .RESET_B(net3),
    .Q(\u_reg_bank.wr_addr[6] ));
 sky130_fd_sc_hd__mux2_1 \u_reg_bank.wr_addr[6]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X  (.A0(\rd_addr[6] ),
    .A1(net48),
    .S(\u_spi_slave.rw_sky130_fd_sc_hd__or3b_2_A_X ),
    .X(\u_reg_bank.wr_addr[6]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__dfrtp_2 \u_reg_bank.wr_data[0]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_4_0_clk),
    .D(\u_reg_bank.wr_data[0]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net3),
    .Q(\u_reg_bank.wr_data[0] ));
 sky130_fd_sc_hd__mux2_1 \u_reg_bank.wr_data[0]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X  (.A0(net92),
    .A1(\u_reg_bank.wr_data[0] ),
    .S(\u_spi_slave.rw_sky130_fd_sc_hd__or3b_2_A_X ),
    .X(\u_reg_bank.wr_data[0]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__dfrtp_2 \u_reg_bank.wr_data[1]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_6_0_clk),
    .D(\u_reg_bank.wr_data[1]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net31),
    .Q(\u_reg_bank.wr_data[1] ));
 sky130_fd_sc_hd__mux2_1 \u_reg_bank.wr_data[1]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X  (.A0(net65),
    .A1(\u_reg_bank.wr_data[1] ),
    .S(\u_spi_slave.rw_sky130_fd_sc_hd__or3b_2_A_X ),
    .X(\u_reg_bank.wr_data[1]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__dfrtp_2 \u_reg_bank.wr_data[2]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_6_0_clk),
    .D(\u_reg_bank.wr_data[2]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net31),
    .Q(\u_reg_bank.wr_data[2] ));
 sky130_fd_sc_hd__mux2_1 \u_reg_bank.wr_data[2]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X  (.A0(net71),
    .A1(\u_reg_bank.wr_data[2] ),
    .S(\u_spi_slave.rw_sky130_fd_sc_hd__or3b_2_A_X ),
    .X(\u_reg_bank.wr_data[2]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__dfrtp_2 \u_reg_bank.wr_data[3]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_7_0_clk),
    .D(\u_reg_bank.wr_data[3]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net31),
    .Q(\u_reg_bank.wr_data[3] ));
 sky130_fd_sc_hd__mux2_1 \u_reg_bank.wr_data[3]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X  (.A0(net81),
    .A1(\u_reg_bank.wr_data[3] ),
    .S(\u_spi_slave.rw_sky130_fd_sc_hd__or3b_2_A_X ),
    .X(\u_reg_bank.wr_data[3]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__dfrtp_2 \u_reg_bank.wr_data[4]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_13_0_clk),
    .D(\u_reg_bank.wr_data[4]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net31),
    .Q(\u_reg_bank.wr_data[4] ));
 sky130_fd_sc_hd__mux2_1 \u_reg_bank.wr_data[4]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X  (.A0(net82),
    .A1(\u_reg_bank.wr_data[4] ),
    .S(\u_spi_slave.rw_sky130_fd_sc_hd__or3b_2_A_X ),
    .X(\u_reg_bank.wr_data[4]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__dfrtp_2 \u_reg_bank.wr_data[5]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_7_0_clk),
    .D(\u_reg_bank.wr_data[5]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net31),
    .Q(\u_reg_bank.wr_data[5] ));
 sky130_fd_sc_hd__mux2_1 \u_reg_bank.wr_data[5]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X  (.A0(net78),
    .A1(\u_reg_bank.wr_data[5] ),
    .S(\u_spi_slave.rw_sky130_fd_sc_hd__or3b_2_A_X ),
    .X(\u_reg_bank.wr_data[5]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__dfrtp_2 \u_reg_bank.wr_data[6]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_13_0_clk),
    .D(\u_reg_bank.wr_data[6]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net31),
    .Q(\u_reg_bank.wr_data[6] ));
 sky130_fd_sc_hd__mux2_1 \u_reg_bank.wr_data[6]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X  (.A0(net86),
    .A1(\u_reg_bank.wr_data[6] ),
    .S(\u_spi_slave.rw_sky130_fd_sc_hd__or3b_2_A_X ),
    .X(\u_reg_bank.wr_data[6]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__dfrtp_2 \u_reg_bank.wr_data[7]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_13_0_clk),
    .D(\u_reg_bank.wr_data[7]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net31),
    .Q(\u_reg_bank.wr_data[7] ));
 sky130_fd_sc_hd__mux2_1 \u_reg_bank.wr_data[7]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X  (.A0(net45),
    .A1(\u_reg_bank.wr_data[7] ),
    .S(\u_spi_slave.rw_sky130_fd_sc_hd__or3b_2_A_X ),
    .X(\u_reg_bank.wr_data[7]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__dfrtp_2 \u_reg_bank.wr_en_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_4_0_clk),
    .D(\u_reg_bank.wr_en_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net3),
    .Q(\u_reg_bank.wr_en ));
 sky130_fd_sc_hd__inv_2 \u_reg_bank.wr_en_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__inv_2_Y  (.A(\u_spi_slave.rw_sky130_fd_sc_hd__or3b_2_A_X ),
    .Y(\u_reg_bank.wr_en_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__dfrtp_2 \u_spi_slave.bit_count[0]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_13_0_clk),
    .D(\u_spi_slave.bit_count[0]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net31),
    .Q(\u_spi_slave.bit_count[0] ));
 sky130_fd_sc_hd__mux2_1 \u_spi_slave.bit_count[0]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__mux2_1_X  (.A0(\u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_A_X_sky130_fd_sc_hd__nor2_2_B_Y ),
    .A1(\u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_A_X_sky130_fd_sc_hd__and2_2_B_X ),
    .S(net95),
    .X(\u_spi_slave.bit_count[0]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__dfrtp_2 \u_spi_slave.bit_count[1]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_13_0_clk),
    .D(\u_spi_slave.bit_count[1]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net31),
    .Q(\u_spi_slave.bit_count[1] ));
 sky130_fd_sc_hd__a32o_2 \u_spi_slave.bit_count[1]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a32o_2_X  (.A1(\u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_A_X_sky130_fd_sc_hd__nor2_2_B_Y ),
    .A2(\u_spi_slave.bit_count[1]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a32o_2_X_A2 ),
    .A3(\u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_C_N_B_sky130_fd_sc_hd__or3_2_C_B ),
    .B1(\u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_A_X_sky130_fd_sc_hd__and2_2_B_X ),
    .B2(net69),
    .X(\u_spi_slave.bit_count[1]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__nand2_2 \u_spi_slave.bit_count[1]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a32o_2_X_A2_sky130_fd_sc_hd__nand2_2_Y  (.A(\u_spi_slave.bit_count[0] ),
    .B(\u_spi_slave.bit_count[1] ),
    .Y(\u_spi_slave.bit_count[1]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a32o_2_X_A2 ));
 sky130_fd_sc_hd__dfrtp_2 \u_spi_slave.bit_count[2]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_13_0_clk),
    .D(\u_spi_slave.bit_count[2]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net31),
    .Q(\u_spi_slave.bit_count[2] ));
 sky130_fd_sc_hd__o21a_2 \u_spi_slave.bit_count[2]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o21a_2_X  (.A1(net91),
    .A2(\u_spi_slave.bit_count[2]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o21a_2_X_A2 ),
    .B1(\u_spi_slave.bit_count[2]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o21a_2_X_B1 ),
    .X(\u_spi_slave.bit_count[2]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__nor2_2 \u_spi_slave.bit_count[2]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o21a_2_X_A2_sky130_fd_sc_hd__nor2_2_Y  (.A(\u_spi_slave.bit_count[1]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a32o_2_X_A2 ),
    .B(\u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_A_X_sky130_fd_sc_hd__and2_2_B_X ),
    .Y(\u_spi_slave.bit_count[2]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o21a_2_X_A2 ));
 sky130_fd_sc_hd__o21bai_2 \u_spi_slave.bit_count[2]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o21a_2_X_B1_sky130_fd_sc_hd__o21bai_2_Y  (.A1(\u_spi_slave.cs_sync[2] ),
    .A2(\u_spi_slave.rw_sky130_fd_sc_hd__or3b_2_A_B_sky130_fd_sc_hd__nand2_2_Y_B ),
    .B1_N(\u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_A_X_sky130_fd_sc_hd__and2_2_B_X ),
    .Y(\u_spi_slave.bit_count[2]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o21a_2_X_B1 ));
 sky130_fd_sc_hd__dfrtp_2 \u_spi_slave.bit_count[3]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_13_0_clk),
    .D(\u_spi_slave.bit_count[3]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net31),
    .Q(\u_spi_slave.bit_count[3] ));
 sky130_fd_sc_hd__a21bo_2 \u_spi_slave.bit_count[3]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a21bo_2_X  (.A1(net103),
    .A2(\u_spi_slave.bit_count[2]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__o21a_2_X_B1 ),
    .B1_N(\u_spi_slave.rw_sky130_fd_sc_hd__or3b_2_A_B_sky130_fd_sc_hd__or2_2_B_X ),
    .X(\u_spi_slave.bit_count[3]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__dfrtp_2 \u_spi_slave.bit_count[4]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_15_0_clk),
    .D(\u_spi_slave.bit_count[4]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net31),
    .Q(\u_spi_slave.bit_count[4] ));
 sky130_fd_sc_hd__a32o_2 \u_spi_slave.bit_count[4]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a32o_2_X  (.A1(\u_spi_slave.bit_count[3] ),
    .A2(\u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_A_X_sky130_fd_sc_hd__nor2_2_B_Y ),
    .A3(\u_spi_slave.rw_sky130_fd_sc_hd__or3b_2_A_B_sky130_fd_sc_hd__nand2_2_Y_B ),
    .B1(net39),
    .B2(spi_miso_sky130_fd_sc_hd__o221a_2_A1_C1),
    .X(\u_spi_slave.bit_count[4]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__nand2b_2 \u_spi_slave.bit_count[4]_sky130_fd_sc_hd__nand2b_2_A_N  (.A_N(\u_spi_slave.bit_count[4] ),
    .B(\u_spi_slave.bit_count[3] ),
    .Y(\u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_C_N_B ));
 sky130_fd_sc_hd__dfstp_2 \u_spi_slave.cs_sync[0]_sky130_fd_sc_hd__dfstp_2_Q  (.CLK(clknet_4_15_0_clk),
    .D(net4),
    .SET_B(net31),
    .Q(\u_spi_slave.cs_sync[0] ));
 sky130_fd_sc_hd__dfstp_2 \u_spi_slave.cs_sync[1]_sky130_fd_sc_hd__dfstp_2_Q  (.CLK(clknet_4_15_0_clk),
    .D(net36),
    .SET_B(net31),
    .Q(\u_spi_slave.cs_sync[1] ));
 sky130_fd_sc_hd__dfstp_2 \u_spi_slave.cs_sync[2]_sky130_fd_sc_hd__dfstp_2_Q  (.CLK(clknet_4_15_0_clk),
    .D(net33),
    .SET_B(net31),
    .Q(\u_spi_slave.cs_sync[2] ));
 sky130_fd_sc_hd__dfrtp_2 \u_spi_slave.mosi_sync[0]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_5_0_clk),
    .D(net5),
    .RESET_B(net3),
    .Q(\u_spi_slave.mosi_sync[0] ));
 sky130_fd_sc_hd__dfrtp_2 \u_spi_slave.mosi_sync[1]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_5_0_clk),
    .D(net32),
    .RESET_B(net3),
    .Q(\u_spi_slave.mosi_sync[1] ));
 sky130_fd_sc_hd__dfrtp_2 \u_spi_slave.rw_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_7_0_clk),
    .D(net43),
    .RESET_B(net31),
    .Q(\u_spi_slave.rw ));
 sky130_fd_sc_hd__mux2_1 \u_spi_slave.rw_sky130_fd_sc_hd__mux2_1_A1  (.A0(\u_spi_slave.rx_shift[6] ),
    .A1(net42),
    .S(\u_spi_slave.rw_sky130_fd_sc_hd__or3b_2_A_B_sky130_fd_sc_hd__or2_2_B_X ),
    .X(\u_spi_slave.rw_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__or3b_2 \u_spi_slave.rw_sky130_fd_sc_hd__or3b_2_A  (.A(\u_spi_slave.rw ),
    .B(\u_spi_slave.rw_sky130_fd_sc_hd__or3b_2_A_B ),
    .C_N(\u_spi_slave.bit_count[3] ),
    .X(\u_spi_slave.rw_sky130_fd_sc_hd__or3b_2_A_X ));
 sky130_fd_sc_hd__nand2_2 \u_spi_slave.rw_sky130_fd_sc_hd__or3b_2_A_B_sky130_fd_sc_hd__nand2_2_Y  (.A(\u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_A_X_sky130_fd_sc_hd__nor2_2_B_Y ),
    .B(\u_spi_slave.rw_sky130_fd_sc_hd__or3b_2_A_B_sky130_fd_sc_hd__nand2_2_Y_B ),
    .Y(\u_spi_slave.rw_sky130_fd_sc_hd__or3b_2_A_B ));
 sky130_fd_sc_hd__and3_2 \u_spi_slave.rw_sky130_fd_sc_hd__or3b_2_A_B_sky130_fd_sc_hd__nand2_2_Y_B_sky130_fd_sc_hd__and3_2_X  (.A(\u_spi_slave.bit_count[0] ),
    .B(\u_spi_slave.bit_count[1] ),
    .C(\u_spi_slave.bit_count[2] ),
    .X(\u_spi_slave.rw_sky130_fd_sc_hd__or3b_2_A_B_sky130_fd_sc_hd__nand2_2_Y_B ));
 sky130_fd_sc_hd__or2_2 \u_spi_slave.rw_sky130_fd_sc_hd__or3b_2_A_B_sky130_fd_sc_hd__or2_2_B  (.A(\u_spi_slave.bit_count[3] ),
    .B(\u_spi_slave.rw_sky130_fd_sc_hd__or3b_2_A_B ),
    .X(\u_spi_slave.rw_sky130_fd_sc_hd__or3b_2_A_B_sky130_fd_sc_hd__or2_2_B_X ));
 sky130_fd_sc_hd__dfrtp_2 \u_spi_slave.rx_shift[0]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_7_0_clk),
    .D(net66),
    .RESET_B(net31),
    .Q(\u_spi_slave.rx_shift[0] ));
 sky130_fd_sc_hd__a22o_2 \u_spi_slave.rx_shift[0]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a22o_2_X  (.A1(\u_spi_slave.mosi_sync[1] ),
    .A2(\u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_A_X_sky130_fd_sc_hd__nor2_2_B_Y ),
    .B1(\u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_A_X_sky130_fd_sc_hd__and2_2_B_X ),
    .B2(net65),
    .X(\u_spi_slave.rx_shift[0]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__dfrtp_2 \u_spi_slave.rx_shift[1]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_7_0_clk),
    .D(\u_spi_slave.rx_shift[1]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net31),
    .Q(\u_spi_slave.rx_shift[1] ));
 sky130_fd_sc_hd__a22o_2 \u_spi_slave.rx_shift[1]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a22o_2_X  (.A1(net65),
    .A2(\u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_A_X_sky130_fd_sc_hd__nor2_2_B_Y ),
    .B1(\u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_A_X_sky130_fd_sc_hd__and2_2_B_X ),
    .B2(net71),
    .X(\u_spi_slave.rx_shift[1]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__dfrtp_2 \u_spi_slave.rx_shift[2]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_7_0_clk),
    .D(\u_spi_slave.rx_shift[2]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net31),
    .Q(\u_spi_slave.rx_shift[2] ));
 sky130_fd_sc_hd__a22o_2 \u_spi_slave.rx_shift[2]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a22o_2_X  (.A1(net71),
    .A2(\u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_A_X_sky130_fd_sc_hd__nor2_2_B_Y ),
    .B1(\u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_A_X_sky130_fd_sc_hd__and2_2_B_X ),
    .B2(net81),
    .X(\u_spi_slave.rx_shift[2]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__dfrtp_2 \u_spi_slave.rx_shift[3]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_7_0_clk),
    .D(\u_spi_slave.rx_shift[3]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net31),
    .Q(\u_spi_slave.rx_shift[3] ));
 sky130_fd_sc_hd__a22o_2 \u_spi_slave.rx_shift[3]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a22o_2_X  (.A1(net81),
    .A2(\u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_A_X_sky130_fd_sc_hd__nor2_2_B_Y ),
    .B1(\u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_A_X_sky130_fd_sc_hd__and2_2_B_X ),
    .B2(net82),
    .X(\u_spi_slave.rx_shift[3]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__dfrtp_2 \u_spi_slave.rx_shift[4]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_7_0_clk),
    .D(net79),
    .RESET_B(net31),
    .Q(\u_spi_slave.rx_shift[4] ));
 sky130_fd_sc_hd__a22o_2 \u_spi_slave.rx_shift[4]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a22o_2_X  (.A1(\u_spi_slave.rx_shift[3] ),
    .A2(\u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_A_X_sky130_fd_sc_hd__nor2_2_B_Y ),
    .B1(\u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_A_X_sky130_fd_sc_hd__and2_2_B_X ),
    .B2(net78),
    .X(\u_spi_slave.rx_shift[4]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__dfrtp_2 \u_spi_slave.rx_shift[5]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_7_0_clk),
    .D(\u_spi_slave.rx_shift[5]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net31),
    .Q(\u_spi_slave.rx_shift[5] ));
 sky130_fd_sc_hd__a22o_2 \u_spi_slave.rx_shift[5]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a22o_2_X  (.A1(net78),
    .A2(\u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_A_X_sky130_fd_sc_hd__nor2_2_B_Y ),
    .B1(\u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_A_X_sky130_fd_sc_hd__and2_2_B_X ),
    .B2(net86),
    .X(\u_spi_slave.rx_shift[5]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__dfrtp_2 \u_spi_slave.rx_shift[6]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_7_0_clk),
    .D(net46),
    .RESET_B(net31),
    .Q(\u_spi_slave.rx_shift[6] ));
 sky130_fd_sc_hd__a22o_2 \u_spi_slave.rx_shift[6]_sky130_fd_sc_hd__dfrtp_2_Q_D_sky130_fd_sc_hd__a22o_2_X  (.A1(\u_spi_slave.rx_shift[5] ),
    .A2(\u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_A_X_sky130_fd_sc_hd__nor2_2_B_Y ),
    .B1(\u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_A_X_sky130_fd_sc_hd__and2_2_B_X ),
    .B2(net45),
    .X(\u_spi_slave.rx_shift[6]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__dfrtp_2 \u_spi_slave.sck_sync[0]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_15_0_clk),
    .D(net6),
    .RESET_B(net31),
    .Q(\u_spi_slave.sck_sync[0] ));
 sky130_fd_sc_hd__dfrtp_2 \u_spi_slave.sck_sync[1]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_15_0_clk),
    .D(net34),
    .RESET_B(net31),
    .Q(\u_spi_slave.sck_sync[1] ));
 sky130_fd_sc_hd__dfrtp_2 \u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_15_0_clk),
    .D(net37),
    .RESET_B(net31),
    .Q(\u_spi_slave.sck_sync[2] ));
 sky130_fd_sc_hd__or3b_2 \u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_A  (.A(\u_spi_slave.sck_sync[2] ),
    .B(\u_spi_slave.bit_count[4] ),
    .C_N(\u_spi_slave.sck_sync[1] ),
    .X(\u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_A_X ));
 sky130_fd_sc_hd__and2_2 \u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_A_X_sky130_fd_sc_hd__and2_2_B  (.A(spi_miso_sky130_fd_sc_hd__o221a_2_A1_C1),
    .B(\u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_A_X ),
    .X(\u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_A_X_sky130_fd_sc_hd__and2_2_B_X ));
 sky130_fd_sc_hd__nor2_2 \u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_A_X_sky130_fd_sc_hd__nor2_2_B  (.A(\u_spi_slave.cs_sync[2] ),
    .B(\u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_A_X ),
    .Y(\u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_A_X_sky130_fd_sc_hd__nor2_2_B_Y ));
 sky130_fd_sc_hd__or3b_2 \u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_C_N  (.A(\u_spi_slave.sck_sync[1] ),
    .B(\u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_C_N_B ),
    .C_N(\u_spi_slave.sck_sync[2] ),
    .X(\u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_C_N_X ));
 sky130_fd_sc_hd__nor3_2 \u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_C_N_B_sky130_fd_sc_hd__nor3_2_C  (.A(\u_spi_slave.bit_count[2] ),
    .B(\u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_C_N_B_sky130_fd_sc_hd__or3_2_C_B ),
    .C(\u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_C_N_B ),
    .Y(\u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_C_N_B_sky130_fd_sc_hd__nor3_2_C_Y ));
 sky130_fd_sc_hd__nand2_2 \u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_C_N_B_sky130_fd_sc_hd__nor3_2_C_Y_sky130_fd_sc_hd__nand2_2_A  (.A(\u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_C_N_B_sky130_fd_sc_hd__nor3_2_C_Y ),
    .B(\u_spi_slave.tx_shift[1]_sky130_fd_sc_hd__mux2_1_A0_S ),
    .Y(\u_spi_slave.tx_shift[0]_sky130_fd_sc_hd__a2bb2o_2_B2_A2_N ));
 sky130_fd_sc_hd__or3_2 \u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_C_N_B_sky130_fd_sc_hd__or3_2_C  (.A(\u_spi_slave.bit_count[2] ),
    .B(\u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_C_N_B_sky130_fd_sc_hd__or3_2_C_B ),
    .C(\u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_C_N_B ),
    .X(\u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_C_N_B_sky130_fd_sc_hd__or3_2_C_X ));
 sky130_fd_sc_hd__or2_2 \u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_C_N_B_sky130_fd_sc_hd__or3_2_C_B_sky130_fd_sc_hd__or2_2_X  (.A(\u_spi_slave.bit_count[0] ),
    .B(\u_spi_slave.bit_count[1] ),
    .X(\u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_C_N_B_sky130_fd_sc_hd__or3_2_C_B ));
 sky130_fd_sc_hd__nand2_2 \u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_C_N_B_sky130_fd_sc_hd__or3_2_C_X_sky130_fd_sc_hd__nand2_2_A  (.A(\u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_C_N_B_sky130_fd_sc_hd__or3_2_C_X ),
    .B(\u_spi_slave.tx_shift[1]_sky130_fd_sc_hd__mux2_1_A0_S ),
    .Y(\u_spi_slave.tx_shift[3]_sky130_fd_sc_hd__o221a_2_A1_B1 ));
 sky130_fd_sc_hd__nor2_2 \u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_C_N_X_sky130_fd_sc_hd__nor2_2_B  (.A(\u_spi_slave.cs_sync[2] ),
    .B(\u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_C_N_X ),
    .Y(\u_spi_slave.tx_shift[1]_sky130_fd_sc_hd__mux2_1_A0_S ));
 sky130_fd_sc_hd__a2bb2o_2 \u_spi_slave.tx_shift[0]_sky130_fd_sc_hd__a2bb2o_2_B2  (.A1_N(\u_spi_slave.tx_shift[0]_sky130_fd_sc_hd__a2bb2o_2_B2_A1_N ),
    .A2_N(\u_spi_slave.tx_shift[0]_sky130_fd_sc_hd__a2bb2o_2_B2_A2_N ),
    .B1(\u_spi_slave.tx_shift[2]_sky130_fd_sc_hd__a22o_2_A1_A2 ),
    .B2(net57),
    .X(\u_spi_slave.tx_shift[0]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__nor2_2 \u_spi_slave.tx_shift[0]_sky130_fd_sc_hd__a2bb2o_2_B2_A1_N_sky130_fd_sc_hd__nor2_2_Y  (.A(bg_ok_combined_sky130_fd_sc_hd__a22o_2_B2_X_sky130_fd_sc_hd__a221o_2_C1_X),
    .B(\u_spi_slave.tx_shift[0]_sky130_fd_sc_hd__a2bb2o_2_B2_A1_N_sky130_fd_sc_hd__nor2_2_Y_B ),
    .Y(\u_spi_slave.tx_shift[0]_sky130_fd_sc_hd__a2bb2o_2_B2_A1_N ));
 sky130_fd_sc_hd__dfrtp_2 \u_spi_slave.tx_shift[0]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_9_0_clk),
    .D(\u_spi_slave.tx_shift[0]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net31),
    .Q(\u_spi_slave.tx_shift[0] ));
 sky130_fd_sc_hd__o22a_2 \u_spi_slave.tx_shift[0]_sky130_fd_sc_hd__o22a_2_A1  (.A1(\u_spi_slave.tx_shift[0] ),
    .A2(\u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_C_N_B_sky130_fd_sc_hd__nor3_2_C_Y ),
    .B1(bg_valid_sky130_fd_sc_hd__a221o_2_A1_X),
    .B2(\u_spi_slave.tx_shift[0]_sky130_fd_sc_hd__o22a_2_A1_B2 ),
    .X(\u_spi_slave.tx_shift[0]_sky130_fd_sc_hd__o22a_2_A1_X ));
 sky130_fd_sc_hd__a221o_2 \u_spi_slave.tx_shift[0]_sky130_fd_sc_hd__o22a_2_A1_B2_sky130_fd_sc_hd__a221o_2_X  (.A1(net10),
    .A2(dbl_en_sky130_fd_sc_hd__and4b_2_C_X_sky130_fd_sc_hd__a221o_2_C1_B1),
    .B1(pwm1_clk_sel_sky130_fd_sc_hd__a211o_2_A1_B1_sky130_fd_sc_hd__a22o_2_X_B1),
    .B2(\pwm1_duty[1] ),
    .C1(\u_spi_slave.tx_shift[0]_sky130_fd_sc_hd__o22a_2_A1_B2_sky130_fd_sc_hd__a221o_2_X_C1 ),
    .X(\u_spi_slave.tx_shift[0]_sky130_fd_sc_hd__o22a_2_A1_B2 ));
 sky130_fd_sc_hd__a221o_2 \u_spi_slave.tx_shift[0]_sky130_fd_sc_hd__o22a_2_A1_B2_sky130_fd_sc_hd__a221o_2_X_C1_sky130_fd_sc_hd__a221o_2_X  (.A1(\bg_div_sel[1] ),
    .A2(\rd_addr[5]_sky130_fd_sc_hd__or3_2_A_X_sky130_fd_sc_hd__nor2_2_A_Y ),
    .B1(bias_en_sky130_fd_sc_hd__a22o_2_B2_B1),
    .B2(net16),
    .C1(\u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_C_N_B_sky130_fd_sc_hd__or3_2_C_X ),
    .X(\u_spi_slave.tx_shift[0]_sky130_fd_sc_hd__o22a_2_A1_B2_sky130_fd_sc_hd__a221o_2_X_C1 ));
 sky130_fd_sc_hd__dfrtp_2 \u_spi_slave.tx_shift[1]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_12_0_clk),
    .D(\u_spi_slave.tx_shift[1]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net31),
    .Q(\u_spi_slave.tx_shift[1] ));
 sky130_fd_sc_hd__mux2_1 \u_spi_slave.tx_shift[1]_sky130_fd_sc_hd__mux2_1_A0  (.A0(net41),
    .A1(\u_spi_slave.tx_shift[0]_sky130_fd_sc_hd__o22a_2_A1_X ),
    .S(\u_spi_slave.tx_shift[1]_sky130_fd_sc_hd__mux2_1_A0_S ),
    .X(\u_spi_slave.tx_shift[1]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__o21a_2 \u_spi_slave.tx_shift[1]_sky130_fd_sc_hd__o21a_2_A1  (.A1(\u_spi_slave.tx_shift[1] ),
    .A2(\u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_C_N_B_sky130_fd_sc_hd__nor3_2_C_Y ),
    .B1(\u_spi_slave.tx_shift[1]_sky130_fd_sc_hd__mux2_1_A0_S ),
    .X(\u_spi_slave.tx_shift[1]_sky130_fd_sc_hd__o21a_2_A1_X ));
 sky130_fd_sc_hd__a22o_2 \u_spi_slave.tx_shift[2]_sky130_fd_sc_hd__a22o_2_A1  (.A1(net44),
    .A2(\u_spi_slave.tx_shift[2]_sky130_fd_sc_hd__a22o_2_A1_A2 ),
    .B1(pwm1_clk_sel_sky130_fd_sc_hd__a211o_2_A1_X),
    .B2(\u_spi_slave.tx_shift[1]_sky130_fd_sc_hd__o21a_2_A1_X ),
    .X(\u_spi_slave.tx_shift[2]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__or2_2 \u_spi_slave.tx_shift[2]_sky130_fd_sc_hd__a22o_2_A1_A2_sky130_fd_sc_hd__or2_2_X  (.A(\u_spi_slave.cs_sync[2] ),
    .B(\u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_C_N_X ),
    .X(\u_spi_slave.tx_shift[2]_sky130_fd_sc_hd__a22o_2_A1_A2 ));
 sky130_fd_sc_hd__dfrtp_2 \u_spi_slave.tx_shift[2]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_12_0_clk),
    .D(\u_spi_slave.tx_shift[2]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net31),
    .Q(\u_spi_slave.tx_shift[2] ));
 sky130_fd_sc_hd__dfrtp_2 \u_spi_slave.tx_shift[3]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_12_0_clk),
    .D(\u_spi_slave.tx_shift[3]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net31),
    .Q(\u_spi_slave.tx_shift[3] ));
 sky130_fd_sc_hd__o221a_2 \u_spi_slave.tx_shift[3]_sky130_fd_sc_hd__o221a_2_A1  (.A1(net64),
    .A2(\u_spi_slave.tx_shift[1]_sky130_fd_sc_hd__mux2_1_A0_S ),
    .B1(\u_spi_slave.tx_shift[3]_sky130_fd_sc_hd__o221a_2_A1_B1 ),
    .B2(net44),
    .C1(\u_spi_slave.tx_shift[3]_sky130_fd_sc_hd__o221a_2_A1_C1 ),
    .X(\u_spi_slave.tx_shift[3]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__a211o_2 \u_spi_slave.tx_shift[3]_sky130_fd_sc_hd__o221a_2_A1_C1_sky130_fd_sc_hd__a211o_2_X  (.A1(\pwm1_duty[3] ),
    .A2(pwm1_clk_sel_sky130_fd_sc_hd__a211o_2_A1_B1_sky130_fd_sc_hd__a22o_2_X_B1),
    .B1(\u_spi_slave.tx_shift[3]_sky130_fd_sc_hd__o221a_2_A1_C1_sky130_fd_sc_hd__a211o_2_X_B1 ),
    .C1(\u_spi_slave.tx_shift[3]_sky130_fd_sc_hd__o221a_2_A1_C1_sky130_fd_sc_hd__a211o_2_X_C1 ),
    .X(\u_spi_slave.tx_shift[3]_sky130_fd_sc_hd__o221a_2_A1_C1 ));
 sky130_fd_sc_hd__a221o_2 \u_spi_slave.tx_shift[3]_sky130_fd_sc_hd__o221a_2_A1_C1_sky130_fd_sc_hd__a211o_2_X_B1_sky130_fd_sc_hd__a221o_2_X  (.A1(bg_burst),
    .A2(\rd_addr[5]_sky130_fd_sc_hd__or3_2_A_X_sky130_fd_sc_hd__nor2_2_A_Y ),
    .B1(dbl_en_sky130_fd_sc_hd__and4b_2_C_X_sky130_fd_sc_hd__a221o_2_C1_B1),
    .B2(net12),
    .C1(\u_spi_slave.tx_shift[0]_sky130_fd_sc_hd__a2bb2o_2_B2_A2_N ),
    .X(\u_spi_slave.tx_shift[3]_sky130_fd_sc_hd__o221a_2_A1_C1_sky130_fd_sc_hd__a211o_2_X_B1 ));
 sky130_fd_sc_hd__a22o_2 \u_spi_slave.tx_shift[3]_sky130_fd_sc_hd__o221a_2_A1_C1_sky130_fd_sc_hd__a211o_2_X_C1_sky130_fd_sc_hd__a22o_2_X  (.A1(\pwm0_duty[3] ),
    .A2(bias_en_sky130_fd_sc_hd__a22o_2_B2_A2),
    .B1(bias_en_sky130_fd_sc_hd__a22o_2_B2_B1),
    .B2(net18),
    .X(\u_spi_slave.tx_shift[3]_sky130_fd_sc_hd__o221a_2_A1_C1_sky130_fd_sc_hd__a211o_2_X_C1 ));
 sky130_fd_sc_hd__dfrtp_2 \u_spi_slave.tx_shift[4]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_14_0_clk),
    .D(\u_spi_slave.tx_shift[4]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net31),
    .Q(\u_spi_slave.tx_shift[4] ));
 sky130_fd_sc_hd__o221a_2 \u_spi_slave.tx_shift[4]_sky130_fd_sc_hd__o221a_2_A1  (.A1(net67),
    .A2(\u_spi_slave.tx_shift[1]_sky130_fd_sc_hd__mux2_1_A0_S ),
    .B1(\u_spi_slave.tx_shift[3]_sky130_fd_sc_hd__o221a_2_A1_B1 ),
    .B2(net64),
    .C1(\u_spi_slave.tx_shift[4]_sky130_fd_sc_hd__o221a_2_A1_C1 ),
    .X(\u_spi_slave.tx_shift[4]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__or3_2 \u_spi_slave.tx_shift[4]_sky130_fd_sc_hd__o221a_2_A1_C1_sky130_fd_sc_hd__or3_2_X  (.A(\u_spi_slave.tx_shift[0]_sky130_fd_sc_hd__a2bb2o_2_B2_A2_N ),
    .B(\u_spi_slave.tx_shift[4]_sky130_fd_sc_hd__o221a_2_A1_C1_sky130_fd_sc_hd__or3_2_X_B ),
    .C(\u_spi_slave.tx_shift[4]_sky130_fd_sc_hd__o221a_2_A1_C1_sky130_fd_sc_hd__or3_2_X_C ),
    .X(\u_spi_slave.tx_shift[4]_sky130_fd_sc_hd__o221a_2_A1_C1 ));
 sky130_fd_sc_hd__a22o_2 \u_spi_slave.tx_shift[4]_sky130_fd_sc_hd__o221a_2_A1_C1_sky130_fd_sc_hd__or3_2_X_B_sky130_fd_sc_hd__a22o_2_X  (.A1(\pwm0_duty[4] ),
    .A2(bias_en_sky130_fd_sc_hd__a22o_2_B2_A2),
    .B1(bias_en_sky130_fd_sc_hd__a22o_2_B2_B1),
    .B2(net19),
    .X(\u_spi_slave.tx_shift[4]_sky130_fd_sc_hd__o221a_2_A1_C1_sky130_fd_sc_hd__or3_2_X_B ));
 sky130_fd_sc_hd__a22o_2 \u_spi_slave.tx_shift[4]_sky130_fd_sc_hd__o221a_2_A1_C1_sky130_fd_sc_hd__or3_2_X_C_sky130_fd_sc_hd__a22o_2_X  (.A1(\bg_hold_exp[0] ),
    .A2(\rd_addr[5]_sky130_fd_sc_hd__or3_2_A_X_sky130_fd_sc_hd__nor2_2_A_Y ),
    .B1(pwm1_clk_sel_sky130_fd_sc_hd__a211o_2_A1_B1_sky130_fd_sc_hd__a22o_2_X_B1),
    .B2(\pwm1_duty[4] ),
    .X(\u_spi_slave.tx_shift[4]_sky130_fd_sc_hd__o221a_2_A1_C1_sky130_fd_sc_hd__or3_2_X_C ));
 sky130_fd_sc_hd__dfrtp_2 \u_spi_slave.tx_shift[5]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_14_0_clk),
    .D(\u_spi_slave.tx_shift[5]_sky130_fd_sc_hd__dfrtp_2_Q_D ),
    .RESET_B(net31),
    .Q(\u_spi_slave.tx_shift[5] ));
 sky130_fd_sc_hd__o221a_2 \u_spi_slave.tx_shift[5]_sky130_fd_sc_hd__o221a_2_A1  (.A1(net62),
    .A2(\u_spi_slave.tx_shift[1]_sky130_fd_sc_hd__mux2_1_A0_S ),
    .B1(\u_spi_slave.tx_shift[3]_sky130_fd_sc_hd__o221a_2_A1_B1 ),
    .B2(net67),
    .C1(\u_spi_slave.tx_shift[5]_sky130_fd_sc_hd__o221a_2_A1_C1 ),
    .X(\u_spi_slave.tx_shift[5]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__a211o_2 \u_spi_slave.tx_shift[5]_sky130_fd_sc_hd__o221a_2_A1_C1_sky130_fd_sc_hd__a211o_2_X  (.A1(\bg_hold_exp[1] ),
    .A2(\rd_addr[5]_sky130_fd_sc_hd__or3_2_A_X_sky130_fd_sc_hd__nor2_2_A_Y ),
    .B1(\u_spi_slave.tx_shift[0]_sky130_fd_sc_hd__a2bb2o_2_B2_A2_N ),
    .C1(\u_spi_slave.tx_shift[5]_sky130_fd_sc_hd__o221a_2_A1_C1_sky130_fd_sc_hd__a211o_2_X_C1 ),
    .X(\u_spi_slave.tx_shift[5]_sky130_fd_sc_hd__o221a_2_A1_C1 ));
 sky130_fd_sc_hd__a22o_2 \u_spi_slave.tx_shift[5]_sky130_fd_sc_hd__o221a_2_A1_C1_sky130_fd_sc_hd__a211o_2_X_C1_sky130_fd_sc_hd__a22o_2_X  (.A1(\pwm0_duty[5] ),
    .A2(bias_en_sky130_fd_sc_hd__a22o_2_B2_A2),
    .B1(pwm1_clk_sel_sky130_fd_sc_hd__a211o_2_A1_B1_sky130_fd_sc_hd__a22o_2_X_B1),
    .B2(\pwm1_duty[5] ),
    .X(\u_spi_slave.tx_shift[5]_sky130_fd_sc_hd__o221a_2_A1_C1_sky130_fd_sc_hd__a211o_2_X_C1 ));
 sky130_fd_sc_hd__a21o_2 \u_spi_slave.tx_shift[6]_sky130_fd_sc_hd__a21o_2_A1  (.A1(\u_spi_slave.tx_shift[6] ),
    .A2(\u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_C_N_B_sky130_fd_sc_hd__or3_2_C_X ),
    .B1(\u_spi_slave.sck_sync[2]_sky130_fd_sc_hd__or3b_2_C_N_X ),
    .X(\u_spi_slave.tx_shift[6]_sky130_fd_sc_hd__a21o_2_A1_X ));
 sky130_fd_sc_hd__dfrtp_2 \u_spi_slave.tx_shift[6]_sky130_fd_sc_hd__dfrtp_2_Q  (.CLK(clknet_4_14_0_clk),
    .D(net63),
    .RESET_B(net31),
    .Q(\u_spi_slave.tx_shift[6] ));
 sky130_fd_sc_hd__o221a_2 \u_spi_slave.tx_shift[6]_sky130_fd_sc_hd__o221a_2_A1  (.A1(\u_spi_slave.tx_shift[6] ),
    .A2(\u_spi_slave.tx_shift[1]_sky130_fd_sc_hd__mux2_1_A0_S ),
    .B1(\u_spi_slave.tx_shift[3]_sky130_fd_sc_hd__o221a_2_A1_B1 ),
    .B2(net62),
    .C1(\u_spi_slave.tx_shift[6]_sky130_fd_sc_hd__o221a_2_A1_C1 ),
    .X(\u_spi_slave.tx_shift[6]_sky130_fd_sc_hd__dfrtp_2_Q_D ));
 sky130_fd_sc_hd__a211o_2 \u_spi_slave.tx_shift[6]_sky130_fd_sc_hd__o221a_2_A1_C1_sky130_fd_sc_hd__a211o_2_X  (.A1(\bg_hold_exp[2] ),
    .A2(\rd_addr[5]_sky130_fd_sc_hd__or3_2_A_X_sky130_fd_sc_hd__nor2_2_A_Y ),
    .B1(\u_spi_slave.tx_shift[0]_sky130_fd_sc_hd__a2bb2o_2_B2_A2_N ),
    .C1(\u_spi_slave.tx_shift[6]_sky130_fd_sc_hd__o221a_2_A1_C1_sky130_fd_sc_hd__a211o_2_X_C1 ),
    .X(\u_spi_slave.tx_shift[6]_sky130_fd_sc_hd__o221a_2_A1_C1 ));
 sky130_fd_sc_hd__a22o_2 \u_spi_slave.tx_shift[6]_sky130_fd_sc_hd__o221a_2_A1_C1_sky130_fd_sc_hd__a211o_2_X_C1_sky130_fd_sc_hd__a22o_2_X  (.A1(\pwm0_duty[6] ),
    .A2(bias_en_sky130_fd_sc_hd__a22o_2_B2_A2),
    .B1(pwm1_clk_sel_sky130_fd_sc_hd__a211o_2_A1_B1_sky130_fd_sc_hd__a22o_2_X_B1),
    .B2(\pwm1_duty[6] ),
    .X(\u_spi_slave.tx_shift[6]_sky130_fd_sc_hd__o221a_2_A1_C1_sky130_fd_sc_hd__a211o_2_X_C1 ));
endmodule
