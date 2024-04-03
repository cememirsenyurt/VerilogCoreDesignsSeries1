`timescale 1ns / 1ps

module FBFA_tb();
    
    reg [3:0] A_tb;
    reg [3:0] B_tb;
    reg Cin_tb;
    wire [3:0] Sum_tb;
    wire Cout_tb;
    
    FBFA instant
    (
    .A(A_tb),
    .B(B_tb),
    .Cin(Cin_tb),
    .Sum(Sum_tb),
    .Cout(Cout_tb)
    );
    
    // Test samples
    initial // initial block executes only once
        begin
        A_tb   = 4'b0110;
        B_tb   = 4'b0100;
        Cin_tb = 1'b0;
        #20;
        
        A_tb   = 4'b1000;
        B_tb   = 4'b1001;
        Cin_tb = 1'b0;
        #20;
        
        A_tb   = 4'b1110;
        B_tb   = 4'b0010;
        Cin_tb = 1'b0;
        #20;
        
        A_tb   = 4'b1010;
        B_tb   = 4'b1011;
        Cin_tb = 1'b0;
        #20;
        
end
endmodule
