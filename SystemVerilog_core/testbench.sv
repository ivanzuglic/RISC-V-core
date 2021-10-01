`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Author: Ivan Zuglic
// 
// Create Date: 06/16/2021 12:20:58 PM
// Module Name: testbench
// Project Name: riscv_core
// Target Devices: ZedBoard 
// Description: Testbench for seeing Data Memory, all registers and
//              result of the test program  
// 
// 
// 
//////////////////////////////////////////////////////////////////////////////////


module testbench;
    reg clk;
    reg reset;
    wire [7:0] dmem_result;
    wire [32-1:0] xreg_out [31:0];
    wire [32-1:0] dmem_out [31:0];
    
    core dut(
        .clk(clk),
        .reset(reset),
        .dmem_result(dmem_result),
        .xreg_out(xreg_out),
        .dmem_out(dmem_out)
    );
    
    initial
        begin
            clk <= 0;
            reset <= 1;
        end
    
    always
        begin
            #5 clk <= !clk;    
            reset <= 0;
        end
         
endmodule
