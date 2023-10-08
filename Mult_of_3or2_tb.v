`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Katie Bashus
// 
// Create Date: 10/02/2023 01:44:21 PM
// Design Name: 
// Module Name: Mult_of_3or2_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Mult_of_3or2_tb();
    reg [3:0] A;
    wire Multof3;
    wire Multof2;
    
    Mult_of_3or2  uut1(.A(A), .Multof3(Multof3), .Multof2(Multof2));
    
    initial 
    begin
        A=4'b0000; 
        #2 A=4'b0001;
        #2 A=4'b0010;
        #2 A=4'b0011; 
        #2 A=4'b0100; 
        #2 A=4'b0101;
        #2 A=4'b0110;
        #2 A=4'b0111;
        #2 A=4'b1000;
        #2 A=4'b1001;
        #2 A=4'b1010;
        #2 A=4'b1011;
        #2 A=4'b1100;
        #2 A=4'b1101;
        #2 A=4'b1110;
        #2 A=4'b1111;
        #2 
        $stop;
    end
    
endmodule
