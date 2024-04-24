module test_ComputeArray;


    // Parameters
    parameter OUT_BIT = 32;
    parameter MAC_R = 32;
    parameter MAC_C = 8;
    parameter MAC_O = 4;
    parameter LOW_PRE = 0;
    parameter INWID = 4;

    // Clock period
    parameter CLK_PERIOD = 10;

    // Signals
    logic clk;
    logic reset;
    logic [1:0] Mode;
    logic [INWID*4-1:0] wgt[MAC_O*MAC_R*MAC_C-1:0];
    logic [INWID*4-1:0] act[MAC_O*MAC_R*MAC_C-1:0];
    logic [OUT_BIT-1:0] acc[MAC_R*MAC_C-1:0];
    logic [OUT_BIT-1:0] out[MAC_R*MAC_C-1:0];

    // Instantiate DUT
    ComputeArray #(
        .OUT_BIT(OUT_BIT),
        .LOW_PRE(LOW_PRE),
        .MAC_C(MAC_C),
        .MAC_O(MAC_O),
        .MAC_R(MAC_R),
        .INWID(INWID)
    ) dut (
        .clk(clk),
        .reset(reset),
        .ctrl(Mode),
        .wgt(wgt),
        .act(act),
        .acc(acc),
        .out(out)
    );

    // Clock generation
    always #((CLK_PERIOD / 2)) clk = ~clk;

    // Reset generation
    initial begin
        clk = 0;
        reset = 1;
        #10;
        reset = 0;
        #10;
        reset = 1;
    end

    // Test stimuli
    initial begin
        #20;
        repeat(20) begin
        // Randomize inputs
        foreach (acc[i]) acc[i] = $urandom_range(0,62222);
        foreach (act[i]) act[i] = $urandom_range(0,62222);
        foreach (wgt[i]) wgt[i] = $urandom_range(0,62222);


        // Set mode
        Mode = $urandom_range(0,3);
        //Mode = 2'b11;
        // Wait for computation
        #50;

        // Verify output
        // Add code to compare the output with expected values

        // Finish simulation
        end
        $finish;
    end

endmodule
