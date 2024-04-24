module sparse_gen #(parameter OUT_BIT = 32, parameter LOW_PRE = 0, parameter INWID = 4)(
    input logic clk, reset,
    input wire [7:0] a[7:0],
    output reg [7:0] out
);
logic [7:0]b[3:0];
logic [7:0]c[1:0];
logic [7:0]mac;
logic [7:0]out_r;
comparator comp0(.a(a[0]),.b(a[1]),.res(b[0]));
comparator comp1(.a(a[2]),.b(a[3]),.res(b[1]));
comparator comp2(.a(a[4]),.b(a[5]),.res(b[2]));
comparator comp3(.a(a[6]),.b(a[7]),.res(b[3]));
comparator comp4(.a(b[0]),.b(b[1]),.res(c[0]));
comparator comp5(.a(b[2]),.b(b[3]),.res(c[1]));
comparator comp6(.a(c[0]),.b(c[1]),.res(mac));


always_ff @(posedge clk or negedge reset) begin
    if (~reset) out_r<=0;
    else out_r<=mac;
end    
assign out = out_r;


endmodule

module comparator (
    input wire [7:0] a,
    input wire [7:0] b,
    output logic [7:0] res
);
always_comb begin
    if (a>b) res = a;
    else res = b;
end
endmodule


module sparse_tb;

    // Parameters
    parameter CLK_PERIOD = 10; // Clock period in time units
    parameter SIM_TIME = 100; // Simulation time in time units
    
    // Signals
    logic clk = 0;
    logic reset = 0;
    logic [7:0] a [7:0];
    logic [7:0] out;
    
    // Instantiate the module under test
    sparse_gen #(.OUT_BIT(8)) dut (
        .clk(clk),
        .reset(reset),
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

        foreach (a[i]) a[i] = $urandom_range(0,64);

        #10; // Wait for some time
        
        $display("Input values:");
        for (int i = 0; i < 8; i = i + 1)
            $display("a[%0d] = %h", i, a[i]);
        
        #10; // Wait for some time
        
        $display("Output value:");
        $display("out = %h", out);

        // Add more test cases as needed
    end
    end

endmodule