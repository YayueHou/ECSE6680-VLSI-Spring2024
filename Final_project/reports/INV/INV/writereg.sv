`timescale 1ns/1ps
module inv(
    input  logic clk, reset, we,
    input  logic [15:0] d, 
    output logic [15:0] q);
logic [15:0] reg_data;
  always_ff @(posedge clk, posedge reset)
    if (reset)  reg_data <= 0;
    else  if (we) reg_data <= -d; else reg_data<=0;
assign q = reg_data;
endmodule
