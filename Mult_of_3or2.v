`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Katie Bashus
// 
// Create Date: 10/02/2023 01:36:38 PM
// Design Name: 
// Module Name: Mult_of_3or2
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


module Mult_of_3or2(A, Multof3, Multof2);
    input [3:0] A;
    output Multof3;
    output Multof2;
    
    assign Multof3 = (A[3] & A[2] & ~A[1] & ~A[0]) | (A[3] & ~A[2] & ~A[1] & A[0]) | (A[3] & A[2] & A[1] & A[0]) | (~A[3] & ~A[2] & A[1] & A[0]) | 
                    (~A[3] & A[2] & A[1] & ~A[0]);
    
    assign Multof2 = (A[3] & ~A[2] & ~A[1] & ~A[0]) | (A[1] & ~A[0]) | (A[2] & ~A[1] & ~A[0]);
    
endmodule
