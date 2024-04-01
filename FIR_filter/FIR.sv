module fir_filter_pipeline (
    input logic clk,
    input logic reset,
    input logic signed [15:0] x,
    output logic signed [15:0] y
);

// Coefficients for the FIR filter
parameter [15:0] coeff[128:0] = 
    '{3,
12,
29,
56,
90,
125,
145,
134,
69,
-62,
-265,
-525,
-808,
-1065,
-1240,
-1284,
-1170,
-905,
-534,
-131,
218,
436,
480,
352,
104,
-178,
-399,
-485,
-407,
-194,
80,
319,
436,
388,
191,
-83,
-332,
-458,
-409,
-194,
107,
382,
518,
451,
192,
-168,
-491,
-640,
-535,
-191,
280,
698,
880,
708,
191,
-521,
-1173,
-1468,
-1171,
-190,
1372,
3236,
5003,
6266,
6725,
6266,
5003,
3236,
1372,
-190,
-1171,
-1468,
-1173,
-521,
191,
708,
880,
698,
280,
-191,
-535,
-640,
-491,
-168,
192,
451,
518,
382,
107,
-194,
-409,
-458,
-332,
-83,
191,
388,
436,
319,
80,
-194,
-407,
-485,
-399,
-178,
104,
352,
480,
436,
218,
-131,
-534,
-905,
-1170,
-1284,
-1240,
-1065,
-808,
-525,
-265,
-62,
69,
134,
145,
125,
90,
56,
29,
12,
3};

// Internal pipeline registers
logic signed [15:0] delay_line1 [127:0];
//logic signed [15:0] delay_line2 [63:0];
//logic signed carry1 [0:63];
//logic signed carry2 [0:63];
// Output register
logic signed [15:0] y_reg;
integer i;

always_ff @(posedge clk or posedge reset) begin
    if (reset) begin
        // Reset all pipeline registers and output register
        delay_line1 <= '{default: 16'd0};
        //delay_line2 <= '{default: 16'd0};
       // carry1 <= '{default: 16'd0};
        //carry2 <= '{default: 16'd0};
        y_reg <= 16'd0;
    end else begin
        delay_line1[0] <= x*coeff[0];
        for (i=1;i<128;i=i+1)begin
        // Shift input through the pipeline
            //{carry1[i],delay_line1[i]} <= delay_line1[i-1] + x*coeff[i];// + carry1[i-1];
            delay_line1[i] <= delay_line1[i-1] + x*coeff[i];// + carry1[i-1];
        end
        //delay_line2[0] <= x;
        //for (i=1;i<64;i=i+1)begin
        // Shift input through the pipeline
        //{carry2[i],delay_line2[i]} <= delay_line2[i-1] + x*coeff[i+64];// +carry2[i-1];
        //{carry2[i],delay_line2[i]} <= delay_line2[i-1] + x*coeff[i+64];// +carry2[i-1];
        //end

        // FIR filter operation
        y_reg <=  delay_line1[127] + x*coeff[128];
    end
end

assign y = y_reg;

endmodule
