module exp #(
    parameter OUT_BIT = 32,
    parameter INWID = 4
) (
    input logic clk, reset,
    input logic we,
    input wire [INWID*4-1:0] a,
    output reg [OUT_BIT-1:0] out
);

    logic [OUT_BIT-1:0] a_int;
    logic [OUT_BIT-1:0] a_fl;
    reg [OUT_BIT-1:0] exp;

    always_ff @(posedge clk or negedge reset) begin
        if (~reset) begin
            a_int <= 0;
            a_fl <= 0;
            exp <= 0;
        end
        else begin
            a_int <= 2 << a;
            a_fl <= 1 + (a >> 1);
            exp <= a_fl * a_int;
        end
    end

    assign out = exp;

endmodule


module exp_tb;

    // Parameters
    parameter CLK_PERIOD = 10; // Clock period in time units
    parameter SIM_TIME = 100; // Simulation time in time units
    
    // Signals
    logic clk = 0;
    logic reset = 0;
    logic we = 0;
    logic [16-1:0] a; // Adjust the width as needed
    logic [32-1:0] out;

    // Instantiate the module under test
    exp #(.OUT_BIT(32), .INWID(4)) dut (
        .clk(clk),
        .reset(reset),
        .we(we),
        .a(a),
        .out(out)
    );

    // Clock generation
    always #(CLK_PERIOD/2) clk = ~clk;

    // Reset generation
    initial begin
        reset = 1;
        #10;
        reset = 0;
        #10;
        reset = 1;
    end

    // Test vectors
    initial begin
        // Test case 1
        repeat(20) begin
        we = 1;
        a =  $urandom_range(0,16); // Input a
        #20; // Wait for some time
        we = 0;
        #10; // Wait for some time
        $display("a = %h, out = %h", a, out);
        end
        // Add more test cases as needed
    end



endmodule