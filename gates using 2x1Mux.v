`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.07.2023 13:48:02
// Design Name: 
// Module Name: gates
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module Mux2x1(sl,a,b,y);
input wire sl;
input wire a;
input wire b;
output reg y; 
always @(sl,a,b) begin
if(sl==0)begin
y=a; end
else begin
y=b; 
end
end
endmodule

module or_gate(a,b,y);
input a,b;
output y;
Mux2x1 m1(a,b,1,y);
endmodule

module and_gate(a,b,y);
input a,b;
output y;
Mux2x1 m1(a,0,b,y);
endmodule

module not_gate(a,y);
input a;
output y;
Mux2x1 m1(a,1,0,y);
endmodule

module xor_gate(a,b,y);
input a,b;
output y;
Mux2x1 m1(a,b,!b,y);
endmodule

module nand_gate(a,b,y);
input a,b;
output y;
wire t1;
and_gate a1(a,b,t1);
not_gate n1(t1,y);
endmodule