// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module StreamingMaxPool_Batch_0_StreamingMaxPool_Pre (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        in_V_V_TDATA,
        in_V_V_TVALID,
        in_V_V_TREADY,
        out_V_V_TDATA,
        out_V_V_TVALID,
        out_V_V_TREADY
);

parameter    ap_ST_fsm_state1 = 8'd1;
parameter    ap_ST_fsm_state2 = 8'd2;
parameter    ap_ST_fsm_state3 = 8'd4;
parameter    ap_ST_fsm_state4 = 8'd8;
parameter    ap_ST_fsm_state5 = 8'd16;
parameter    ap_ST_fsm_state6 = 8'd32;
parameter    ap_ST_fsm_state7 = 8'd64;
parameter    ap_ST_fsm_state8 = 8'd128;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [23:0] in_V_V_TDATA;
input   in_V_V_TVALID;
output   in_V_V_TREADY;
output  [23:0] out_V_V_TDATA;
output   out_V_V_TVALID;
input   out_V_V_TREADY;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg in_V_V_TREADY;
reg out_V_V_TVALID;

(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    in_V_V_TDATA_blk_n;
wire    ap_CS_fsm_state5;
reg    out_V_V_TDATA_blk_n;
wire    ap_CS_fsm_state8;
wire   [3:0] i_fu_368_p2;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln153_fu_384_p2;
wire    ap_CS_fsm_state3;
wire   [3:0] yp_fu_390_p2;
reg   [3:0] yp_reg_642;
wire   [5:0] add_ln154_fu_402_p2;
reg   [5:0] add_ln154_reg_650;
wire    ap_CS_fsm_state4;
wire   [0:0] icmp_ln155_fu_408_p2;
reg   [0:0] icmp_ln155_reg_655;
wire   [0:0] icmp_ln154_fu_396_p2;
wire   [0:0] and_ln155_fu_434_p2;
reg   [0:0] and_ln155_reg_661;
wire   [3:0] select_ln165_fu_446_p3;
reg   [3:0] select_ln165_reg_666;
reg   [3:0] buf_0_V_addr_2_reg_671;
reg   [3:0] buf_1_V_addr_2_reg_676;
reg   [3:0] buf_2_V_addr_2_reg_681;
reg   [3:0] buf_3_V_addr_2_reg_686;
reg   [3:0] buf_4_V_addr_2_reg_691;
reg   [3:0] buf_5_V_addr_2_reg_696;
wire   [1:0] kx_fu_570_p3;
wire   [5:0] select_ln155_1_fu_584_p3;
wire   [3:0] outpix_fu_597_p2;
reg   [3:0] outpix_reg_732;
wire    ap_CS_fsm_state7;
wire   [0:0] icmp_ln173_fu_591_p2;
reg   [3:0] buf_0_V_address0;
reg    buf_0_V_ce0;
reg    buf_0_V_we0;
reg   [3:0] buf_0_V_d0;
wire   [3:0] buf_0_V_q0;
reg   [3:0] buf_1_V_address0;
reg    buf_1_V_ce0;
reg    buf_1_V_we0;
reg   [3:0] buf_1_V_d0;
wire   [3:0] buf_1_V_q0;
reg   [3:0] buf_2_V_address0;
reg    buf_2_V_ce0;
reg    buf_2_V_we0;
reg   [3:0] buf_2_V_d0;
wire   [3:0] buf_2_V_q0;
reg   [3:0] buf_3_V_address0;
reg    buf_3_V_ce0;
reg    buf_3_V_we0;
reg   [3:0] buf_3_V_d0;
wire   [3:0] buf_3_V_q0;
reg   [3:0] buf_4_V_address0;
reg    buf_4_V_ce0;
reg    buf_4_V_we0;
reg   [3:0] buf_4_V_d0;
wire   [3:0] buf_4_V_q0;
reg   [3:0] buf_5_V_address0;
reg    buf_5_V_ce0;
reg    buf_5_V_we0;
reg   [3:0] buf_5_V_d0;
wire   [3:0] buf_5_V_q0;
reg   [3:0] i_0_reg_283;
wire   [0:0] icmp_ln146_fu_362_p2;
reg   [3:0] yp_0_reg_294;
reg   [5:0] indvar_flatten25_reg_305;
reg   [5:0] indvar_flatten_reg_316;
reg   [3:0] xp_0_reg_328;
reg   [1:0] kx_0_reg_339;
reg   [3:0] outpix_0_reg_351;
wire    ap_CS_fsm_state6;
wire   [63:0] zext_ln149_fu_374_p1;
wire   [63:0] zext_ln165_fu_454_p1;
wire   [63:0] zext_ln178_fu_603_p1;
wire   [0:0] icmp_ln895_fu_469_p2;
wire   [3:0] trunc_ln647_fu_464_p1;
wire   [0:0] icmp_ln895_1_fu_486_p2;
wire   [3:0] p_Result_1_fu_475_p4;
wire   [0:0] icmp_ln895_2_fu_503_p2;
wire   [3:0] p_Result_s_fu_492_p4;
wire   [0:0] icmp_ln895_3_fu_520_p2;
wire   [3:0] p_Result_3_fu_509_p4;
wire   [0:0] icmp_ln895_4_fu_537_p2;
wire   [3:0] p_Result_4_fu_526_p4;
wire   [0:0] icmp_ln895_5_fu_554_p2;
wire   [3:0] p_Result_5_fu_543_p4;
wire   [0:0] icmp_ln157_fu_428_p2;
wire   [0:0] xor_ln155_fu_422_p2;
wire   [3:0] select_ln155_fu_414_p3;
wire   [3:0] xp_fu_440_p2;
wire   [0:0] or_ln157_fu_566_p2;
wire   [1:0] add_ln157_fu_560_p2;
wire   [5:0] add_ln155_1_fu_578_p2;
reg   [7:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 8'd1;
end

StreamingMaxPool_Batch_0_StreamingMaxPool_bkb #(
    .DataWidth( 4 ),
    .AddressRange( 14 ),
    .AddressWidth( 4 ))
buf_0_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(buf_0_V_address0),
    .ce0(buf_0_V_ce0),
    .we0(buf_0_V_we0),
    .d0(buf_0_V_d0),
    .q0(buf_0_V_q0)
);

StreamingMaxPool_Batch_0_StreamingMaxPool_bkb #(
    .DataWidth( 4 ),
    .AddressRange( 14 ),
    .AddressWidth( 4 ))
buf_1_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(buf_1_V_address0),
    .ce0(buf_1_V_ce0),
    .we0(buf_1_V_we0),
    .d0(buf_1_V_d0),
    .q0(buf_1_V_q0)
);

StreamingMaxPool_Batch_0_StreamingMaxPool_bkb #(
    .DataWidth( 4 ),
    .AddressRange( 14 ),
    .AddressWidth( 4 ))
buf_2_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(buf_2_V_address0),
    .ce0(buf_2_V_ce0),
    .we0(buf_2_V_we0),
    .d0(buf_2_V_d0),
    .q0(buf_2_V_q0)
);

StreamingMaxPool_Batch_0_StreamingMaxPool_bkb #(
    .DataWidth( 4 ),
    .AddressRange( 14 ),
    .AddressWidth( 4 ))
buf_3_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(buf_3_V_address0),
    .ce0(buf_3_V_ce0),
    .we0(buf_3_V_we0),
    .d0(buf_3_V_d0),
    .q0(buf_3_V_q0)
);

StreamingMaxPool_Batch_0_StreamingMaxPool_bkb #(
    .DataWidth( 4 ),
    .AddressRange( 14 ),
    .AddressWidth( 4 ))
buf_4_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(buf_4_V_address0),
    .ce0(buf_4_V_ce0),
    .we0(buf_4_V_we0),
    .d0(buf_4_V_d0),
    .q0(buf_4_V_q0)
);

StreamingMaxPool_Batch_0_StreamingMaxPool_bkb #(
    .DataWidth( 4 ),
    .AddressRange( 14 ),
    .AddressWidth( 4 ))
buf_5_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(buf_5_V_address0),
    .ce0(buf_5_V_ce0),
    .we0(buf_5_V_we0),
    .d0(buf_5_V_d0),
    .q0(buf_5_V_q0)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln146_fu_362_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        i_0_reg_283 <= i_fu_368_p2;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_0_reg_283 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln153_fu_384_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        indvar_flatten25_reg_305 <= 6'd0;
    end else if (((in_V_V_TVALID == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        indvar_flatten25_reg_305 <= add_ln154_reg_650;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln153_fu_384_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        indvar_flatten_reg_316 <= 6'd0;
    end else if (((in_V_V_TVALID == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        indvar_flatten_reg_316 <= select_ln155_1_fu_584_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln153_fu_384_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        kx_0_reg_339 <= 2'd0;
    end else if (((in_V_V_TVALID == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        kx_0_reg_339 <= kx_fu_570_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        outpix_0_reg_351 <= 4'd0;
    end else if (((out_V_V_TREADY == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
        outpix_0_reg_351 <= outpix_reg_732;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln153_fu_384_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        xp_0_reg_328 <= 4'd0;
    end else if (((in_V_V_TVALID == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        xp_0_reg_328 <= select_ln165_reg_666;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln146_fu_362_p2 == 1'd1))) begin
        yp_0_reg_294 <= 4'd0;
    end else if (((1'b1 == ap_CS_fsm_state7) & (icmp_ln173_fu_591_p2 == 1'd1))) begin
        yp_0_reg_294 <= yp_reg_642;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        add_ln154_reg_650 <= add_ln154_fu_402_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln154_fu_396_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        and_ln155_reg_661 <= and_ln155_fu_434_p2;
        buf_0_V_addr_2_reg_671 <= zext_ln165_fu_454_p1;
        buf_1_V_addr_2_reg_676 <= zext_ln165_fu_454_p1;
        buf_2_V_addr_2_reg_681 <= zext_ln165_fu_454_p1;
        buf_3_V_addr_2_reg_686 <= zext_ln165_fu_454_p1;
        buf_4_V_addr_2_reg_691 <= zext_ln165_fu_454_p1;
        buf_5_V_addr_2_reg_696 <= zext_ln165_fu_454_p1;
        icmp_ln155_reg_655 <= icmp_ln155_fu_408_p2;
        select_ln165_reg_666 <= select_ln165_fu_446_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        outpix_reg_732 <= outpix_fu_597_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        yp_reg_642 <= yp_fu_390_p2;
    end
end

always @ (*) begin
    if ((((icmp_ln153_fu_384_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((icmp_ln153_fu_384_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln173_fu_591_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
        buf_0_V_address0 = zext_ln178_fu_603_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buf_0_V_address0 = buf_0_V_addr_2_reg_671;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buf_0_V_address0 = zext_ln165_fu_454_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buf_0_V_address0 = zext_ln149_fu_374_p1;
    end else begin
        buf_0_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2) | ((in_V_V_TVALID == 1'b1) & (1'b1 == ap_CS_fsm_state5)) | ((icmp_ln173_fu_591_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7)))) begin
        buf_0_V_ce0 = 1'b1;
    end else begin
        buf_0_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buf_0_V_d0 = trunc_ln647_fu_464_p1;
    end else if (((1'b1 == ap_CS_fsm_state2) | ((icmp_ln173_fu_591_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7)))) begin
        buf_0_V_d0 = 4'd0;
    end else begin
        buf_0_V_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((icmp_ln146_fu_362_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)) | ((in_V_V_TVALID == 1'b1) & (1'b1 == ap_CS_fsm_state5) & (icmp_ln895_fu_469_p2 == 1'd1)) | ((icmp_ln173_fu_591_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7)))) begin
        buf_0_V_we0 = 1'b1;
    end else begin
        buf_0_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln173_fu_591_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
        buf_1_V_address0 = zext_ln178_fu_603_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buf_1_V_address0 = buf_1_V_addr_2_reg_676;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buf_1_V_address0 = zext_ln165_fu_454_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buf_1_V_address0 = zext_ln149_fu_374_p1;
    end else begin
        buf_1_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2) | ((in_V_V_TVALID == 1'b1) & (1'b1 == ap_CS_fsm_state5)) | ((icmp_ln173_fu_591_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7)))) begin
        buf_1_V_ce0 = 1'b1;
    end else begin
        buf_1_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buf_1_V_d0 = {{in_V_V_TDATA[7:4]}};
    end else if (((1'b1 == ap_CS_fsm_state2) | ((icmp_ln173_fu_591_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7)))) begin
        buf_1_V_d0 = 4'd0;
    end else begin
        buf_1_V_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((icmp_ln146_fu_362_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)) | ((in_V_V_TVALID == 1'b1) & (1'b1 == ap_CS_fsm_state5) & (icmp_ln895_1_fu_486_p2 == 1'd1)) | ((icmp_ln173_fu_591_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7)))) begin
        buf_1_V_we0 = 1'b1;
    end else begin
        buf_1_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln173_fu_591_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
        buf_2_V_address0 = zext_ln178_fu_603_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buf_2_V_address0 = buf_2_V_addr_2_reg_681;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buf_2_V_address0 = zext_ln165_fu_454_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buf_2_V_address0 = zext_ln149_fu_374_p1;
    end else begin
        buf_2_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2) | ((in_V_V_TVALID == 1'b1) & (1'b1 == ap_CS_fsm_state5)) | ((icmp_ln173_fu_591_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7)))) begin
        buf_2_V_ce0 = 1'b1;
    end else begin
        buf_2_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buf_2_V_d0 = {{in_V_V_TDATA[11:8]}};
    end else if (((1'b1 == ap_CS_fsm_state2) | ((icmp_ln173_fu_591_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7)))) begin
        buf_2_V_d0 = 4'd0;
    end else begin
        buf_2_V_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((icmp_ln146_fu_362_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)) | ((in_V_V_TVALID == 1'b1) & (1'b1 == ap_CS_fsm_state5) & (icmp_ln895_2_fu_503_p2 == 1'd1)) | ((icmp_ln173_fu_591_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7)))) begin
        buf_2_V_we0 = 1'b1;
    end else begin
        buf_2_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln173_fu_591_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
        buf_3_V_address0 = zext_ln178_fu_603_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buf_3_V_address0 = buf_3_V_addr_2_reg_686;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buf_3_V_address0 = zext_ln165_fu_454_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buf_3_V_address0 = zext_ln149_fu_374_p1;
    end else begin
        buf_3_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2) | ((in_V_V_TVALID == 1'b1) & (1'b1 == ap_CS_fsm_state5)) | ((icmp_ln173_fu_591_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7)))) begin
        buf_3_V_ce0 = 1'b1;
    end else begin
        buf_3_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buf_3_V_d0 = {{in_V_V_TDATA[15:12]}};
    end else if (((1'b1 == ap_CS_fsm_state2) | ((icmp_ln173_fu_591_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7)))) begin
        buf_3_V_d0 = 4'd0;
    end else begin
        buf_3_V_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((icmp_ln146_fu_362_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)) | ((in_V_V_TVALID == 1'b1) & (1'b1 == ap_CS_fsm_state5) & (icmp_ln895_3_fu_520_p2 == 1'd1)) | ((icmp_ln173_fu_591_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7)))) begin
        buf_3_V_we0 = 1'b1;
    end else begin
        buf_3_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln173_fu_591_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
        buf_4_V_address0 = zext_ln178_fu_603_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buf_4_V_address0 = buf_4_V_addr_2_reg_691;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buf_4_V_address0 = zext_ln165_fu_454_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buf_4_V_address0 = zext_ln149_fu_374_p1;
    end else begin
        buf_4_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2) | ((in_V_V_TVALID == 1'b1) & (1'b1 == ap_CS_fsm_state5)) | ((icmp_ln173_fu_591_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7)))) begin
        buf_4_V_ce0 = 1'b1;
    end else begin
        buf_4_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buf_4_V_d0 = {{in_V_V_TDATA[19:16]}};
    end else if (((1'b1 == ap_CS_fsm_state2) | ((icmp_ln173_fu_591_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7)))) begin
        buf_4_V_d0 = 4'd0;
    end else begin
        buf_4_V_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((icmp_ln146_fu_362_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)) | ((in_V_V_TVALID == 1'b1) & (1'b1 == ap_CS_fsm_state5) & (icmp_ln895_4_fu_537_p2 == 1'd1)) | ((icmp_ln173_fu_591_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7)))) begin
        buf_4_V_we0 = 1'b1;
    end else begin
        buf_4_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln173_fu_591_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
        buf_5_V_address0 = zext_ln178_fu_603_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        buf_5_V_address0 = buf_5_V_addr_2_reg_696;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        buf_5_V_address0 = zext_ln165_fu_454_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        buf_5_V_address0 = zext_ln149_fu_374_p1;
    end else begin
        buf_5_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2) | ((in_V_V_TVALID == 1'b1) & (1'b1 == ap_CS_fsm_state5)) | ((icmp_ln173_fu_591_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7)))) begin
        buf_5_V_ce0 = 1'b1;
    end else begin
        buf_5_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buf_5_V_d0 = {{in_V_V_TDATA[23:20]}};
    end else if (((1'b1 == ap_CS_fsm_state2) | ((icmp_ln173_fu_591_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7)))) begin
        buf_5_V_d0 = 4'd0;
    end else begin
        buf_5_V_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((icmp_ln146_fu_362_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)) | ((in_V_V_TVALID == 1'b1) & (1'b1 == ap_CS_fsm_state5) & (icmp_ln895_5_fu_554_p2 == 1'd1)) | ((icmp_ln173_fu_591_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7)))) begin
        buf_5_V_we0 = 1'b1;
    end else begin
        buf_5_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        in_V_V_TDATA_blk_n = in_V_V_TVALID;
    end else begin
        in_V_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((in_V_V_TVALID == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
        in_V_V_TREADY = 1'b1;
    end else begin
        in_V_V_TREADY = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        out_V_V_TDATA_blk_n = out_V_V_TREADY;
    end else begin
        out_V_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((out_V_V_TREADY == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
        out_V_V_TVALID = 1'b1;
    end else begin
        out_V_V_TVALID = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln146_fu_362_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln153_fu_384_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((icmp_ln154_fu_396_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((in_V_V_TVALID == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            if (((1'b1 == ap_CS_fsm_state7) & (icmp_ln173_fu_591_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state8 : begin
            if (((out_V_V_TREADY == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln154_fu_402_p2 = (indvar_flatten25_reg_305 + 6'd1);

assign add_ln155_1_fu_578_p2 = (indvar_flatten_reg_316 + 6'd1);

assign add_ln157_fu_560_p2 = (kx_0_reg_339 + 2'd1);

assign and_ln155_fu_434_p2 = (xor_ln155_fu_422_p2 & icmp_ln157_fu_428_p2);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign i_fu_368_p2 = (i_0_reg_283 + 4'd1);

assign icmp_ln146_fu_362_p2 = ((i_0_reg_283 == 4'd14) ? 1'b1 : 1'b0);

assign icmp_ln153_fu_384_p2 = ((yp_0_reg_294 == 4'd14) ? 1'b1 : 1'b0);

assign icmp_ln154_fu_396_p2 = ((indvar_flatten25_reg_305 == 6'd56) ? 1'b1 : 1'b0);

assign icmp_ln155_fu_408_p2 = ((indvar_flatten_reg_316 == 6'd28) ? 1'b1 : 1'b0);

assign icmp_ln157_fu_428_p2 = ((kx_0_reg_339 == 2'd2) ? 1'b1 : 1'b0);

assign icmp_ln173_fu_591_p2 = ((outpix_0_reg_351 == 4'd14) ? 1'b1 : 1'b0);

assign icmp_ln895_1_fu_486_p2 = ((p_Result_1_fu_475_p4 > buf_1_V_q0) ? 1'b1 : 1'b0);

assign icmp_ln895_2_fu_503_p2 = ((p_Result_s_fu_492_p4 > buf_2_V_q0) ? 1'b1 : 1'b0);

assign icmp_ln895_3_fu_520_p2 = ((p_Result_3_fu_509_p4 > buf_3_V_q0) ? 1'b1 : 1'b0);

assign icmp_ln895_4_fu_537_p2 = ((p_Result_4_fu_526_p4 > buf_4_V_q0) ? 1'b1 : 1'b0);

assign icmp_ln895_5_fu_554_p2 = ((p_Result_5_fu_543_p4 > buf_5_V_q0) ? 1'b1 : 1'b0);

assign icmp_ln895_fu_469_p2 = ((trunc_ln647_fu_464_p1 > buf_0_V_q0) ? 1'b1 : 1'b0);

assign kx_fu_570_p3 = ((or_ln157_fu_566_p2[0:0] === 1'b1) ? 2'd1 : add_ln157_fu_560_p2);

assign or_ln157_fu_566_p2 = (icmp_ln155_reg_655 | and_ln155_reg_661);

assign out_V_V_TDATA = {{{{{{buf_5_V_q0}, {buf_4_V_q0}}, {buf_3_V_q0}}, {buf_2_V_q0}}, {buf_1_V_q0}}, {buf_0_V_q0}};

assign outpix_fu_597_p2 = (outpix_0_reg_351 + 4'd1);

assign p_Result_1_fu_475_p4 = {{in_V_V_TDATA[7:4]}};

assign p_Result_3_fu_509_p4 = {{in_V_V_TDATA[15:12]}};

assign p_Result_4_fu_526_p4 = {{in_V_V_TDATA[19:16]}};

assign p_Result_5_fu_543_p4 = {{in_V_V_TDATA[23:20]}};

assign p_Result_s_fu_492_p4 = {{in_V_V_TDATA[11:8]}};

assign select_ln155_1_fu_584_p3 = ((icmp_ln155_reg_655[0:0] === 1'b1) ? 6'd1 : add_ln155_1_fu_578_p2);

assign select_ln155_fu_414_p3 = ((icmp_ln155_fu_408_p2[0:0] === 1'b1) ? 4'd0 : xp_0_reg_328);

assign select_ln165_fu_446_p3 = ((and_ln155_fu_434_p2[0:0] === 1'b1) ? xp_fu_440_p2 : select_ln155_fu_414_p3);

assign trunc_ln647_fu_464_p1 = in_V_V_TDATA[3:0];

assign xor_ln155_fu_422_p2 = (icmp_ln155_fu_408_p2 ^ 1'd1);

assign xp_fu_440_p2 = (4'd1 + select_ln155_fu_414_p3);

assign yp_fu_390_p2 = (yp_0_reg_294 + 4'd1);

assign zext_ln149_fu_374_p1 = i_0_reg_283;

assign zext_ln165_fu_454_p1 = select_ln165_fu_446_p3;

assign zext_ln178_fu_603_p1 = outpix_0_reg_351;

endmodule //StreamingMaxPool_Batch_0_StreamingMaxPool_Pre
