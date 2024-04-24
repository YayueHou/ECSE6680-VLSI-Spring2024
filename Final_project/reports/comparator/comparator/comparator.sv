module comparator(
    input logic [7:0] a,b,
    output logic res 
);
always_comb begin
    if( a > b )
        res = 1;
    else 
        res = 0;
end
endmodule