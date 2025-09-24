`timescale 1ns / 1ps

`default_nettype none
`include "mm_definitions.vh"

module top_matrix_multiplication
#(
    parameter NBITS = `FACTOR_WIDTH_DEFAULT,
    parameter RESULT_WIDTH = `PRODUCT_WIDTH_DEFAULT
)
(
    input wire signed [NBITS-1:0] A_11,
    input wire signed [NBITS-1:0] A_12,
    input wire signed [NBITS-1:0] A_13,
    input wire signed [NBITS-1:0] A_21,
    input wire signed [NBITS-1:0] A_22,
    input wire signed [NBITS-1:0] A_23,
    input wire signed [NBITS-1:0] A_31,
    input wire signed [NBITS-1:0] A_32,
    input wire signed [NBITS-1:0] A_33,
    input wire signed [NBITS-1:0] B_11,
    input wire signed [NBITS-1:0] B_21,
    input wire signed [NBITS-1:0] B_31,
    
    output wire signed [RESULT_WIDTH-1:0] C_11, 
    output wire signed [RESULT_WIDTH-1:0] C_21,
    output wire signed [RESULT_WIDTH-1:0] C_31
    );
        
    matrix_mult_controller 
    #(
        .NBITS(NBITS),
        .RESULT_WIDTH(RESULT_WIDTH)
    )
    controller
    (
        .A_11(A_11),
        .A_12(A_12),
        .A_13(A_13),
        .A_21(A_21),
        .A_22(A_22),
        .A_23(A_23),
        .A_31(A_31),
        .A_32(A_32),
        .A_33(A_33),
        .B_11(B_11),
        .B_21(B_21),
        .B_31(B_31),
        
        .C_11(C_11),
        .C_21(C_21),
        .C_31(C_31) 
    );
endmodule
