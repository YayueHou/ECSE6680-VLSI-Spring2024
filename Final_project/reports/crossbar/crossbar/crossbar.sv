`timescale 1ns/1ps

module crossbar (
    input logic [2:0] Selector,
    input var [7:0][3:0] dIn,
    output logic [3:0] dOut
);
    
    always_comb begin
        case (Selector)
            3'b000: dOut = dIn[0][3:0];
            3'b001: dOut = dIn[1][3:0];
            3'b011: dOut = dIn[2][3:0];
            3'b010: dOut = dIn[3][3:0];
            3'b110: dOut = dIn[4][3:0];
            3'b100: dOut = dIn[5][3:0];
            3'b101: dOut = dIn[6][3:0];
            3'b111: dOut = dIn[7][3:0];
            default:  dOut = 0 ;
        endcase
    end
endmodule
