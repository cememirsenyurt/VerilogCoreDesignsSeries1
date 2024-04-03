`timescale 1ns / 1ps

module Mux_4_To_1_tb();

    reg [1:0] S_tb;
    reg D1_tb;
    reg D2_tb;
    reg D3_tb;
    reg D4_tb;
    wire Y_tb;
    
    Mux_4_To_1 instant
    (
    .S(S_tb),
    .D1(D1_tb),
    .D2(D2_tb),
    .D3(D3_tb),
    .D4(D4_tb),
    .Y(Y_tb)   
    );
    
    initial
        begin
            D1_tb = 1'b0;
            D2_tb = 1'b1;
            D3_tb = 1'b0;
            D4_tb = 1'b1;
            S_tb  = 2'b00;
            #20;
        
            D1_tb = 1'b0;
            D2_tb = 1'b1;
            D3_tb = 1'b0;
            D4_tb = 1'b1;
            S_tb  = 2'b01;
            #20;
            
            D1_tb = 1'b0;
            D2_tb = 1'b1;
            D3_tb = 1'b0;
            D4_tb = 1'b1;
            S_tb  = 2'b10;
            #20;
            
            D1_tb = 1'b0;
            D2_tb = 1'b1;
            D3_tb = 1'b0;
            D4_tb = 1'b1;
            S_tb  = 2'b11;
            #20;
        end

endmodule
