`timescale 1ns / 1ps

module FBFA(
    A,
    B,
    Cin,
    Sum,
    Cout
    );
    
    input[3:0] A;
    input[3:0] B;
    input Cin;      
    output[3:0] Sum;
    output Cout;
    wire [2:0] cWire;
    
    FA  FA1(A[0], B[0], Cin, Sum[0], cWire[0]);
    FA  FA2(A[1], B[1], cWire[0], Sum[1], cWire[1]);
    FA  FA3(A[2], B[2], cWire[1], Sum[2], cWire[2]);
    FA  FA4(A[3], B[3], cWire[2], Sum[3], Cout);
    
    
endmodule
