`timescale 1ns / 1ps

module Mux_2_To_1_tb();

    reg S_tb;
    reg D1_tb;
    reg D2_tb;
    wire Y_tb;
    
    Mux_2_To_1 instant
    (
    .S(S_tb),
    .D1(D1_tb),
    .D2(D2_tb),
    .Y(Y_tb)
    );
    
    initial
        begin
        
        D1_tb = 1'b0;
        D2_tb = 1'b1;
        S_tb  = 1'b0;
        #20;
        
        D1_tb = 1'b0;
        D2_tb = 1'b1;
        S_tb  = 1'b1;
        #20;

        end
        
endmodule
