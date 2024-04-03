`timescale 1ns / 1ps

// Module definition
module Mux_4_To_1 (
    input [1:0] S,
    input D1 ,
    input D2 ,
    input D3 ,
    input D4 ,
    output Y);
    
    reg Y;
    always@(*)
        begin
            case(S)
                2'd0 : Y = D1;
                2'd1 : Y = D2;
                2'd2 : Y = D3;
                2'd3 : Y = D4;
            endcase
        end
endmodule // MUX4 :1
