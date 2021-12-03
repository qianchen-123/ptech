// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module FMPadding_Batch_0_FMPadding (
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

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_pp0_stage0 = 3'd2;
parameter    ap_ST_fsm_state4 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [7:0] in_V_V_TDATA;
input   in_V_V_TVALID;
output   in_V_V_TREADY;
output  [7:0] out_V_V_TDATA;
output   out_V_V_TVALID;
input   out_V_V_TREADY;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg in_V_V_TREADY;
reg out_V_V_TVALID;

(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    in_V_V_TDATA_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_pp0_stage0;
wire   [0:0] icmp_ln279_fu_139_p2;
wire   [0:0] or_ln285_1_fu_243_p2;
reg    out_V_V_TDATA_blk_n;
reg    ap_enable_reg_pp0_iter1;
reg   [0:0] icmp_ln279_reg_264;
reg   [10:0] indvar_flatten_reg_67;
reg   [5:0] y_0_reg_78;
reg   [5:0] x_0_reg_89;
reg    ap_predicate_op33_read_state2;
reg    ap_block_state2_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
reg    ap_block_state3_io;
reg    ap_block_pp0_stage0_11001;
wire   [10:0] add_ln279_fu_145_p2;
wire   [5:0] select_ln279_fu_207_p3;
wire   [3:0] tmp_V_2_fu_249_p1;
wire   [5:0] x_fu_253_p2;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
wire   [3:0] ap_phi_reg_pp0_iter0_tmp_V_reg_100;
reg   [3:0] ap_phi_reg_pp0_iter1_tmp_V_reg_100;
reg    ap_block_pp0_stage0_01001;
wire   [4:0] tmp_1_fu_111_p4;
wire   [0:0] icmp_ln285_fu_121_p2;
wire   [0:0] icmp_ln285_1_fu_127_p2;
wire   [0:0] icmp_ln280_fu_151_p2;
wire   [5:0] add_ln279_1_fu_165_p2;
wire   [4:0] tmp_2_fu_171_p4;
wire   [0:0] icmp_ln285_2_fu_181_p2;
wire   [0:0] icmp_ln285_3_fu_187_p2;
wire   [0:0] or_ln285_3_fu_193_p2;
wire   [0:0] or_ln285_fu_133_p2;
wire   [5:0] select_ln285_fu_157_p3;
wire   [4:0] tmp_3_fu_215_p4;
wire   [0:0] icmp_ln289_1_fu_231_p2;
wire   [0:0] icmp_ln289_fu_225_p2;
wire   [0:0] or_ln285_2_fu_237_p2;
wire   [0:0] select_ln285_1_fu_199_p3;
wire    ap_CS_fsm_state4;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_85;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
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
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state2))) begin
            ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state2);
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_85)) begin
        if (((or_ln285_1_fu_243_p2 == 1'd1) & (icmp_ln279_fu_139_p2 == 1'd0))) begin
            ap_phi_reg_pp0_iter1_tmp_V_reg_100 <= 4'd0;
        end else if (((or_ln285_1_fu_243_p2 == 1'd0) & (icmp_ln279_fu_139_p2 == 1'd0))) begin
            ap_phi_reg_pp0_iter1_tmp_V_reg_100 <= tmp_V_2_fu_249_p1;
        end else if ((1'b1 == 1'b1)) begin
            ap_phi_reg_pp0_iter1_tmp_V_reg_100 <= ap_phi_reg_pp0_iter0_tmp_V_reg_100;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln279_fu_139_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten_reg_67 <= add_ln279_fu_145_p2;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        indvar_flatten_reg_67 <= 11'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln279_fu_139_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        x_0_reg_89 <= x_fu_253_p2;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        x_0_reg_89 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln279_fu_139_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        y_0_reg_78 <= select_ln279_fu_207_p3;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        y_0_reg_78 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln279_reg_264 <= icmp_ln279_fu_139_p2;
    end
end

always @ (*) begin
    if ((icmp_ln279_fu_139_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((or_ln285_1_fu_243_p2 == 1'd0) & (icmp_ln279_fu_139_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        in_V_V_TDATA_blk_n = in_V_V_TVALID;
    end else begin
        in_V_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_predicate_op33_read_state2 == 1'b1))) begin
        in_V_V_TREADY = 1'b1;
    end else begin
        in_V_V_TREADY = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln279_reg_264 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        out_V_V_TDATA_blk_n = out_V_V_TREADY;
    end else begin
        out_V_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln279_reg_264 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        out_V_V_TVALID = 1'b1;
    end else begin
        out_V_V_TVALID = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if (~((1'b0 == ap_block_pp0_stage0_subdone) & (icmp_ln279_fu_139_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (icmp_ln279_fu_139_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln279_1_fu_165_p2 = (y_0_reg_78 + 6'd1);

assign add_ln279_fu_145_p2 = (indvar_flatten_reg_67 + 11'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((in_V_V_TVALID == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_op33_read_state2 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state3_io)) | ((in_V_V_TVALID == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_op33_read_state2 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state3_io)) | ((in_V_V_TVALID == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_op33_read_state2 == 1'b1)));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter0 = ((in_V_V_TVALID == 1'b0) & (ap_predicate_op33_read_state2 == 1'b1));
end

always @ (*) begin
    ap_block_state3_io = ((icmp_ln279_reg_264 == 1'd0) & (out_V_V_TREADY == 1'b0));
end

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_condition_85 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_phi_reg_pp0_iter0_tmp_V_reg_100 = 'bx;

always @ (*) begin
    ap_predicate_op33_read_state2 = ((or_ln285_1_fu_243_p2 == 1'd0) & (icmp_ln279_fu_139_p2 == 1'd0));
end

assign icmp_ln279_fu_139_p2 = ((indvar_flatten_reg_67 == 11'd1024) ? 1'b1 : 1'b0);

assign icmp_ln280_fu_151_p2 = ((x_0_reg_89 == 6'd32) ? 1'b1 : 1'b0);

assign icmp_ln285_1_fu_127_p2 = ((y_0_reg_78 > 6'd29) ? 1'b1 : 1'b0);

assign icmp_ln285_2_fu_181_p2 = ((tmp_2_fu_171_p4 == 5'd0) ? 1'b1 : 1'b0);

assign icmp_ln285_3_fu_187_p2 = ((add_ln279_1_fu_165_p2 > 6'd29) ? 1'b1 : 1'b0);

assign icmp_ln285_fu_121_p2 = ((tmp_1_fu_111_p4 == 5'd0) ? 1'b1 : 1'b0);

assign icmp_ln289_1_fu_231_p2 = ((select_ln285_fu_157_p3 > 6'd29) ? 1'b1 : 1'b0);

assign icmp_ln289_fu_225_p2 = ((tmp_3_fu_215_p4 == 5'd0) ? 1'b1 : 1'b0);

assign or_ln285_1_fu_243_p2 = (select_ln285_1_fu_199_p3 | or_ln285_2_fu_237_p2);

assign or_ln285_2_fu_237_p2 = (icmp_ln289_fu_225_p2 | icmp_ln289_1_fu_231_p2);

assign or_ln285_3_fu_193_p2 = (icmp_ln285_3_fu_187_p2 | icmp_ln285_2_fu_181_p2);

assign or_ln285_fu_133_p2 = (icmp_ln285_fu_121_p2 | icmp_ln285_1_fu_127_p2);

assign out_V_V_TDATA = ap_phi_reg_pp0_iter1_tmp_V_reg_100;

assign select_ln279_fu_207_p3 = ((icmp_ln280_fu_151_p2[0:0] === 1'b1) ? add_ln279_1_fu_165_p2 : y_0_reg_78);

assign select_ln285_1_fu_199_p3 = ((icmp_ln280_fu_151_p2[0:0] === 1'b1) ? or_ln285_3_fu_193_p2 : or_ln285_fu_133_p2);

assign select_ln285_fu_157_p3 = ((icmp_ln280_fu_151_p2[0:0] === 1'b1) ? 6'd0 : x_0_reg_89);

assign tmp_1_fu_111_p4 = {{y_0_reg_78[5:1]}};

assign tmp_2_fu_171_p4 = {{add_ln279_1_fu_165_p2[5:1]}};

assign tmp_3_fu_215_p4 = {{select_ln285_fu_157_p3[5:1]}};

assign tmp_V_2_fu_249_p1 = in_V_V_TDATA[3:0];

assign x_fu_253_p2 = (select_ln285_fu_157_p3 + 6'd1);

endmodule //FMPadding_Batch_0_FMPadding
