// sch_path: /home/me/sky130_adder_4bit/xschem/full_adder_4bit.sch
module full_adder_4bit
(
  output wire S0,
  output wire S1,
  output wire S2,
  output wire S3,
  output wire COUT,
  input wire A0,
  input wire B0,
  input wire A1,
  input wire B1,
  input wire A2,
  input wire B2,
  input wire A3,
  input wire B3,
  input wire CIN
);
wire net1 ;
wire net2 ;
wire net3 ;

sky130_fd_sc_hd__fa_1
x1 ( 
 .A( A0 ),
 .B( B0 ),
 .CIN( CIN ),
 .COUT( net1 ),
 .SUM( S0 )
);


sky130_fd_sc_hd__fa_1
x2 ( 
 .A( A1 ),
 .B( B1 ),
 .CIN( net1 ),
 .COUT( net2 ),
 .SUM( S1 )
);


sky130_fd_sc_hd__fa_1
x3 ( 
 .A( A2 ),
 .B( B2 ),
 .CIN( net2 ),
 .COUT( net3 ),
 .SUM( S2 )
);


sky130_fd_sc_hd__fa_1
x4 ( 
 .A( A3 ),
 .B( B3 ),
 .CIN( net3 ),
 .COUT( COUT ),
 .SUM( S3 )
);

endmodule
