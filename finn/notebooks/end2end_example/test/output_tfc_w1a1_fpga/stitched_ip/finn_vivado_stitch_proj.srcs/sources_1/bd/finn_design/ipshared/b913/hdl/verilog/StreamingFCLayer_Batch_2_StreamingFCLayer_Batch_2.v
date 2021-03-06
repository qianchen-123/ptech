// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="StreamingFCLayer_Batch_2_StreamingFCLayer_Batch_2,hls_ip_2020_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xqrku060-cna1509-1M-m,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.151000,HLS_SYN_LAT=12005,HLS_SYN_TPT=none,HLS_SYN_MEM=10,HLS_SYN_DSP=0,HLS_SYN_FF=1774,HLS_SYN_LUT=1446,HLS_VERSION=2020_1}" *)

module StreamingFCLayer_Batch_2_StreamingFCLayer_Batch_2 (
        ap_clk,
        ap_rst_n,
        in0_V_V_TDATA,
        in0_V_V_TVALID,
        in0_V_V_TREADY,
        weights_V_V_TDATA,
        weights_V_V_TVALID,
        weights_V_V_TREADY,
        out_V_V_TDATA,
        out_V_V_TVALID,
        out_V_V_TREADY
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;

input   ap_clk;
input   ap_rst_n;
input  [15:0] in0_V_V_TDATA;
input   in0_V_V_TVALID;
output   in0_V_V_TREADY;
input  [15:0] weights_V_V_TDATA;
input   weights_V_V_TVALID;
output   weights_V_V_TREADY;
output  [7:0] out_V_V_TDATA;
output   out_V_V_TVALID;
input   out_V_V_TREADY;

reg in0_V_V_TREADY;
reg weights_V_V_TREADY;

 reg    ap_rst_n_inv;
wire    grp_Matrix_Vector_Activa_fu_58_ap_start;
wire    grp_Matrix_Vector_Activa_fu_58_ap_done;
wire    grp_Matrix_Vector_Activa_fu_58_ap_idle;
wire    grp_Matrix_Vector_Activa_fu_58_ap_ready;
wire    grp_Matrix_Vector_Activa_fu_58_in_V_V_TREADY;
wire   [7:0] grp_Matrix_Vector_Activa_fu_58_out_V_V_TDATA;
wire    grp_Matrix_Vector_Activa_fu_58_out_V_V_TVALID;
wire    grp_Matrix_Vector_Activa_fu_58_out_V_V_TREADY;
wire    grp_Matrix_Vector_Activa_fu_58_weight_V_V_TREADY;
reg    grp_Matrix_Vector_Activa_fu_58_ap_start_reg;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state3;
reg   [3:0] ap_NS_fsm;
wire    ap_CS_fsm_state4;
wire    regslice_both_out_V_V_U_apdone_blk;
wire    regslice_both_in0_V_V_U_apdone_blk;
wire   [15:0] in0_V_V_TDATA_int;
wire    in0_V_V_TVALID_int;
reg    in0_V_V_TREADY_int;
wire    regslice_both_in0_V_V_U_ack_in;
wire    regslice_both_weights_V_V_U_apdone_blk;
wire   [15:0] weights_V_V_TDATA_int;
wire    weights_V_V_TVALID_int;
reg    weights_V_V_TREADY_int;
wire    regslice_both_weights_V_V_U_ack_in;
wire    out_V_V_TREADY_int;
wire    regslice_both_out_V_V_U_vld_out;

// power-on initialization
initial begin
#0 grp_Matrix_Vector_Activa_fu_58_ap_start_reg = 1'b0;
#0 ap_CS_fsm = 4'd1;
end

StreamingFCLayer_Batch_2_Matrix_Vector_Activa grp_Matrix_Vector_Activa_fu_58(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(grp_Matrix_Vector_Activa_fu_58_ap_start),
    .ap_done(grp_Matrix_Vector_Activa_fu_58_ap_done),
    .ap_idle(grp_Matrix_Vector_Activa_fu_58_ap_idle),
    .ap_ready(grp_Matrix_Vector_Activa_fu_58_ap_ready),
    .in_V_V_TDATA(in0_V_V_TDATA_int),
    .in_V_V_TVALID(in0_V_V_TVALID_int),
    .in_V_V_TREADY(grp_Matrix_Vector_Activa_fu_58_in_V_V_TREADY),
    .out_V_V_TDATA(grp_Matrix_Vector_Activa_fu_58_out_V_V_TDATA),
    .out_V_V_TVALID(grp_Matrix_Vector_Activa_fu_58_out_V_V_TVALID),
    .out_V_V_TREADY(grp_Matrix_Vector_Activa_fu_58_out_V_V_TREADY),
    .weight_V_V_TDATA(weights_V_V_TDATA_int),
    .weight_V_V_TVALID(weights_V_V_TVALID_int),
    .weight_V_V_TREADY(grp_Matrix_Vector_Activa_fu_58_weight_V_V_TREADY)
);

regslice_both #(
    .DataWidth( 16 ))
regslice_both_in0_V_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(in0_V_V_TDATA),
    .vld_in(in0_V_V_TVALID),
    .ack_in(regslice_both_in0_V_V_U_ack_in),
    .data_out(in0_V_V_TDATA_int),
    .vld_out(in0_V_V_TVALID_int),
    .ack_out(in0_V_V_TREADY_int),
    .apdone_blk(regslice_both_in0_V_V_U_apdone_blk)
);

regslice_both #(
    .DataWidth( 16 ))
regslice_both_weights_V_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(weights_V_V_TDATA),
    .vld_in(weights_V_V_TVALID),
    .ack_in(regslice_both_weights_V_V_U_ack_in),
    .data_out(weights_V_V_TDATA_int),
    .vld_out(weights_V_V_TVALID_int),
    .ack_out(weights_V_V_TREADY_int),
    .apdone_blk(regslice_both_weights_V_V_U_apdone_blk)
);

regslice_both #(
    .DataWidth( 8 ))
regslice_both_out_V_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(grp_Matrix_Vector_Activa_fu_58_out_V_V_TDATA),
    .vld_in(grp_Matrix_Vector_Activa_fu_58_out_V_V_TVALID),
    .ack_in(out_V_V_TREADY_int),
    .data_out(out_V_V_TDATA),
    .vld_out(regslice_both_out_V_V_U_vld_out),
    .ack_out(out_V_V_TREADY),
    .apdone_blk(regslice_both_out_V_V_U_apdone_blk)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        grp_Matrix_Vector_Activa_fu_58_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state2)) begin
            grp_Matrix_Vector_Activa_fu_58_ap_start_reg <= 1'b1;
        end else if ((grp_Matrix_Vector_Activa_fu_58_ap_ready == 1'b1)) begin
            grp_Matrix_Vector_Activa_fu_58_ap_start_reg <= 1'b0;
        end
    end
end

always @ (*) begin
    if (((regslice_both_in0_V_V_U_ack_in == 1'b1) & (in0_V_V_TVALID == 1'b1))) begin
        in0_V_V_TREADY = 1'b1;
    end else begin
        in0_V_V_TREADY = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        in0_V_V_TREADY_int = grp_Matrix_Vector_Activa_fu_58_in_V_V_TREADY;
    end else begin
        in0_V_V_TREADY_int = 1'b0;
    end
end

always @ (*) begin
    if (((regslice_both_weights_V_V_U_ack_in == 1'b1) & (weights_V_V_TVALID == 1'b1))) begin
        weights_V_V_TREADY = 1'b1;
    end else begin
        weights_V_V_TREADY = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        weights_V_V_TREADY_int = grp_Matrix_Vector_Activa_fu_58_weight_V_V_TREADY;
    end else begin
        weights_V_V_TREADY_int = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if (((grp_Matrix_Vector_Activa_fu_58_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (regslice_both_out_V_V_U_apdone_blk == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign grp_Matrix_Vector_Activa_fu_58_ap_start = grp_Matrix_Vector_Activa_fu_58_ap_start_reg;

assign grp_Matrix_Vector_Activa_fu_58_out_V_V_TREADY = (out_V_V_TREADY_int & ap_CS_fsm_state3);

assign out_V_V_TVALID = regslice_both_out_V_V_U_vld_out;

endmodule //StreamingFCLayer_Batch_2_StreamingFCLayer_Batch_2
