`timescale 100ps / 100ps

module full_adder_4bit_tb();

wire [3:0] Sum ;
wire Cout ;
reg [3:0] A ;
reg [3:0] B ;
reg Cin ;

wire VPWR = 1'b1;
wire VGND = 1'b0;

full_adder_4bit uut ( 
 .A0( A[0] ), .A1( A[1] ), .A2( A[2] ), .A3( A[3] ),
 .B0( B[0] ), .B1( B[1] ), .B2( B[2] ), .B3( B[3] ),
 .CIN( Cin ),
 .S0( Sum[0] ), .S1( Sum[1] ), .S2( Sum[2] ), .S3( Sum[3] ),
 .COUT( Cout )
);

initial begin
  $dumpfile("full_adder_4bit.vcd");
  $dumpvars(0, full_adder_4bit_tb);
end

reg [4:0] expected;
integer i, j, k;
integer error_count = 0;


initial begin

        for (i = 0; i < 16; i = i + 1) begin
            for (j = 0; j < 16; j = j + 1) begin
                for (k = 0; k < 2; k = k + 1) begin
                    
                    A = i;
                    B = j;
                    Cin = k;
                    
                    #10;

                    expected = A + B + Cin;

                    if ({Cout, Sum} !== expected) begin
                        $display("ERROR: A=%d B=%d Cin=%b | Expected=%d Got=%d", 
                                 A, B, Cin, expected, {Cout, Sum});
                        error_count = error_count + 1;
                    end
                end
            end
        end

        if (error_count == 0) begin
            $display("---------------------------------------");
            $display("TEST PASSED: All 512 cases successful!");
            $display("---------------------------------------");
        end else begin
            $display("---------------------------------------");
            $display("TEST FAILED: %d errors found.", error_count);
            $display("---------------------------------------");
        end

        $finish;
end

endmodule