`timescale 1ns / 1ps

module FA(
    A,
    B,
    Cin,
    Sum,
    Cout
    );
    
    input A;
    input B;
    input Cin;
    output Sum;
    output Cout;

    assign Sum = A ^ B ^ Cin;   //bitwise XOR
    assign Cout = (A & B) | (A & Cin) | (B & Cin); 
endmodule
