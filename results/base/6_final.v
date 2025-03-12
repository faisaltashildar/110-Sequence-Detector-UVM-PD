module sequence_detector_110 (clk_i,
    detect,
    reset_i,
    seq_in);
 input clk_i;
 output detect;
 input reset_i;
 input seq_in;

 wire _00_;
 wire _01_;
 wire _02_;
 wire _03_;
 wire _04_;
 wire _05_;
 wire _06_;
 wire _07_;
 wire \current_state[0] ;
 wire \current_state[1] ;
 wire \current_state[2] ;
 wire net1;
 wire net2;
 wire net3;
 wire clknet_0_clk_i;
 wire clknet_1_0__leaf_clk_i;
 wire clknet_1_1__leaf_clk_i;

 sky130_fd_sc_hd__nor2_1 _08_ (.A(\current_state[0] ),
    .B(net3),
    .Y(_04_));
 sky130_fd_sc_hd__nor2_1 _09_ (.A(net1),
    .B(\current_state[1] ),
    .Y(_05_));
 sky130_fd_sc_hd__nand2b_1 _10_ (.A_N(net1),
    .B(net2),
    .Y(_06_));
 sky130_fd_sc_hd__a21boi_0 _11_ (.A1(_04_),
    .A2(_05_),
    .B1_N(_06_),
    .Y(_03_));
 sky130_fd_sc_hd__nor2_1 _12_ (.A(_04_),
    .B(_06_),
    .Y(_00_));
 sky130_fd_sc_hd__nor3b_1 _13_ (.A(net1),
    .B(net2),
    .C_N(\current_state[2] ),
    .Y(_02_));
 sky130_fd_sc_hd__nor2_1 _14_ (.A(\current_state[1] ),
    .B(\current_state[2] ),
    .Y(_07_));
 sky130_fd_sc_hd__nor2_1 _15_ (.A(_06_),
    .B(_07_),
    .Y(_01_));
 sky130_fd_sc_hd__dfxtp_1 \current_state[0]$_DFF_P_  (.D(_03_),
    .Q(\current_state[0] ),
    .CLK(clknet_1_1__leaf_clk_i));
 sky130_fd_sc_hd__dfxtp_1 \current_state[1]$_DFF_P_  (.D(_00_),
    .Q(\current_state[1] ),
    .CLK(clknet_1_0__leaf_clk_i));
 sky130_fd_sc_hd__dfxtp_1 \current_state[2]$_DFF_P_  (.D(_01_),
    .Q(\current_state[2] ),
    .CLK(clknet_1_0__leaf_clk_i));
 sky130_fd_sc_hd__dfxtp_1 \current_state[3]$_DFF_P_  (.D(_02_),
    .Q(net3),
    .CLK(clknet_1_1__leaf_clk_i));
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_0 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_1 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_2 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_3 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_4 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_5 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_6 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_7 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_8 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_9 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_10 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_11 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_12 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_13 ();
 sky130_fd_sc_hd__clkbuf_1 input1 (.A(reset_i),
    .X(net1));
 sky130_fd_sc_hd__clkbuf_1 input2 (.A(seq_in),
    .X(net2));
 sky130_fd_sc_hd__clkbuf_1 output3 (.A(net3),
    .X(detect));
 sky130_fd_sc_hd__clkbuf_4 clkbuf_0_clk_i (.A(clk_i),
    .X(clknet_0_clk_i));
 sky130_fd_sc_hd__clkbuf_4 clkbuf_1_0__f_clk_i (.A(clknet_0_clk_i),
    .X(clknet_1_0__leaf_clk_i));
 sky130_fd_sc_hd__clkbuf_4 clkbuf_1_1__f_clk_i (.A(clknet_0_clk_i),
    .X(clknet_1_1__leaf_clk_i));
 sky130_fd_sc_hd__fill_8 FILLER_0_0 ();
 sky130_fd_sc_hd__fill_8 FILLER_0_8 ();
 sky130_fd_sc_hd__fill_8 FILLER_0_16 ();
 sky130_fd_sc_hd__fill_4 FILLER_0_24 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_28 ();
 sky130_fd_sc_hd__fill_8 FILLER_0_31 ();
 sky130_fd_sc_hd__fill_8 FILLER_0_39 ();
 sky130_fd_sc_hd__fill_8 FILLER_0_47 ();
 sky130_fd_sc_hd__fill_4 FILLER_0_55 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_59 ();
 sky130_fd_sc_hd__fill_8 FILLER_0_61 ();
 sky130_fd_sc_hd__fill_8 FILLER_0_69 ();
 sky130_fd_sc_hd__fill_8 FILLER_1_0 ();
 sky130_fd_sc_hd__fill_8 FILLER_1_8 ();
 sky130_fd_sc_hd__fill_8 FILLER_1_16 ();
 sky130_fd_sc_hd__fill_8 FILLER_1_24 ();
 sky130_fd_sc_hd__fill_8 FILLER_1_32 ();
 sky130_fd_sc_hd__fill_8 FILLER_1_40 ();
 sky130_fd_sc_hd__fill_8 FILLER_1_48 ();
 sky130_fd_sc_hd__fill_4 FILLER_1_56 ();
 sky130_fd_sc_hd__fill_8 FILLER_1_61 ();
 sky130_fd_sc_hd__fill_8 FILLER_1_69 ();
 sky130_fd_sc_hd__fill_8 FILLER_2_0 ();
 sky130_fd_sc_hd__fill_8 FILLER_2_8 ();
 sky130_fd_sc_hd__fill_8 FILLER_2_16 ();
 sky130_fd_sc_hd__fill_4 FILLER_2_24 ();
 sky130_fd_sc_hd__fill_2 FILLER_2_28 ();
 sky130_fd_sc_hd__fill_8 FILLER_2_31 ();
 sky130_fd_sc_hd__fill_8 FILLER_2_39 ();
 sky130_fd_sc_hd__fill_8 FILLER_2_47 ();
 sky130_fd_sc_hd__fill_8 FILLER_2_55 ();
 sky130_fd_sc_hd__fill_8 FILLER_2_63 ();
 sky130_fd_sc_hd__fill_4 FILLER_2_71 ();
 sky130_fd_sc_hd__fill_2 FILLER_2_75 ();
 sky130_fd_sc_hd__fill_8 FILLER_3_0 ();
 sky130_fd_sc_hd__fill_8 FILLER_3_8 ();
 sky130_fd_sc_hd__fill_8 FILLER_3_16 ();
 sky130_fd_sc_hd__fill_8 FILLER_3_24 ();
 sky130_fd_sc_hd__fill_8 FILLER_3_32 ();
 sky130_fd_sc_hd__fill_4 FILLER_3_40 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_44 ();
 sky130_fd_sc_hd__fill_8 FILLER_3_51 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_59 ();
 sky130_fd_sc_hd__fill_8 FILLER_3_61 ();
 sky130_fd_sc_hd__fill_8 FILLER_3_69 ();
 sky130_fd_sc_hd__fill_8 FILLER_4_0 ();
 sky130_fd_sc_hd__fill_8 FILLER_4_8 ();
 sky130_fd_sc_hd__fill_4 FILLER_4_16 ();
 sky130_fd_sc_hd__fill_2 FILLER_4_20 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_22 ();
 sky130_fd_sc_hd__fill_4 FILLER_4_26 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_47 ();
 sky130_fd_sc_hd__fill_8 FILLER_4_64 ();
 sky130_fd_sc_hd__fill_4 FILLER_4_72 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_76 ();
 sky130_fd_sc_hd__fill_4 FILLER_5_0 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_4 ();
 sky130_fd_sc_hd__fill_8 FILLER_5_8 ();
 sky130_fd_sc_hd__fill_4 FILLER_5_16 ();
 sky130_fd_sc_hd__fill_2 FILLER_5_20 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_22 ();
 sky130_fd_sc_hd__fill_2 FILLER_5_53 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_55 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_59 ();
 sky130_fd_sc_hd__fill_4 FILLER_5_61 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_65 ();
 sky130_fd_sc_hd__fill_8 FILLER_5_69 ();
 sky130_fd_sc_hd__fill_8 FILLER_6_0 ();
 sky130_fd_sc_hd__fill_8 FILLER_6_8 ();
 sky130_fd_sc_hd__fill_8 FILLER_6_16 ();
 sky130_fd_sc_hd__fill_2 FILLER_6_24 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_26 ();
 sky130_fd_sc_hd__fill_2 FILLER_6_31 ();
 sky130_fd_sc_hd__fill_8 FILLER_6_51 ();
 sky130_fd_sc_hd__fill_8 FILLER_6_59 ();
 sky130_fd_sc_hd__fill_8 FILLER_6_67 ();
 sky130_fd_sc_hd__fill_2 FILLER_6_75 ();
 sky130_fd_sc_hd__fill_8 FILLER_7_0 ();
 sky130_fd_sc_hd__fill_4 FILLER_7_8 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_12 ();
 sky130_fd_sc_hd__fill_8 FILLER_7_19 ();
 sky130_fd_sc_hd__fill_8 FILLER_7_43 ();
 sky130_fd_sc_hd__fill_8 FILLER_7_51 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_59 ();
 sky130_fd_sc_hd__fill_8 FILLER_7_61 ();
 sky130_fd_sc_hd__fill_8 FILLER_7_69 ();
 sky130_fd_sc_hd__fill_8 FILLER_8_0 ();
 sky130_fd_sc_hd__fill_8 FILLER_8_8 ();
 sky130_fd_sc_hd__fill_8 FILLER_8_16 ();
 sky130_fd_sc_hd__fill_4 FILLER_8_24 ();
 sky130_fd_sc_hd__fill_2 FILLER_8_28 ();
 sky130_fd_sc_hd__fill_8 FILLER_8_31 ();
 sky130_fd_sc_hd__fill_8 FILLER_8_39 ();
 sky130_fd_sc_hd__fill_8 FILLER_8_47 ();
 sky130_fd_sc_hd__fill_8 FILLER_8_55 ();
 sky130_fd_sc_hd__fill_8 FILLER_8_63 ();
 sky130_fd_sc_hd__fill_4 FILLER_8_71 ();
 sky130_fd_sc_hd__fill_2 FILLER_8_75 ();
 sky130_fd_sc_hd__fill_8 FILLER_9_0 ();
 sky130_fd_sc_hd__fill_8 FILLER_9_8 ();
 sky130_fd_sc_hd__fill_8 FILLER_9_16 ();
 sky130_fd_sc_hd__fill_8 FILLER_9_24 ();
 sky130_fd_sc_hd__fill_8 FILLER_9_32 ();
 sky130_fd_sc_hd__fill_8 FILLER_9_40 ();
 sky130_fd_sc_hd__fill_8 FILLER_9_48 ();
 sky130_fd_sc_hd__fill_4 FILLER_9_56 ();
 sky130_fd_sc_hd__fill_8 FILLER_9_61 ();
 sky130_fd_sc_hd__fill_8 FILLER_9_69 ();
 sky130_fd_sc_hd__fill_8 FILLER_10_0 ();
 sky130_fd_sc_hd__fill_8 FILLER_10_8 ();
 sky130_fd_sc_hd__fill_8 FILLER_10_16 ();
 sky130_fd_sc_hd__fill_4 FILLER_10_24 ();
 sky130_fd_sc_hd__fill_2 FILLER_10_28 ();
 sky130_fd_sc_hd__fill_8 FILLER_10_31 ();
 sky130_fd_sc_hd__fill_8 FILLER_10_39 ();
 sky130_fd_sc_hd__fill_8 FILLER_10_47 ();
 sky130_fd_sc_hd__fill_8 FILLER_10_55 ();
 sky130_fd_sc_hd__fill_8 FILLER_10_63 ();
 sky130_fd_sc_hd__fill_4 FILLER_10_71 ();
 sky130_fd_sc_hd__fill_2 FILLER_10_75 ();
 sky130_fd_sc_hd__fill_8 FILLER_11_0 ();
 sky130_fd_sc_hd__fill_8 FILLER_11_8 ();
 sky130_fd_sc_hd__fill_8 FILLER_11_16 ();
 sky130_fd_sc_hd__fill_4 FILLER_11_24 ();
 sky130_fd_sc_hd__fill_2 FILLER_11_28 ();
 sky130_fd_sc_hd__fill_8 FILLER_11_31 ();
 sky130_fd_sc_hd__fill_8 FILLER_11_39 ();
 sky130_fd_sc_hd__fill_8 FILLER_11_47 ();
 sky130_fd_sc_hd__fill_4 FILLER_11_55 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_59 ();
 sky130_fd_sc_hd__fill_8 FILLER_11_61 ();
 sky130_fd_sc_hd__fill_8 FILLER_11_69 ();
endmodule
