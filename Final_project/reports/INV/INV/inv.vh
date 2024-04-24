/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Tue Apr 16 15:20:24 2024
/////////////////////////////////////////////////////////////


module inv ( clk, reset, we, d, q );
  input [15:0] d;
  output [15:0] q;
  input clk, reset, we;
  wire   n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, N5, N21, N22, N23, N24, N25, N26, N27, N28,
         N29, N30, N31, N32, N33, N34, N35, N36, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98;
  assign N5 = d[0];

  DFFSR \reg_data_reg[15]  ( .D(n51), .CLK(clk), .R(n98), .S(1'b1), .Q(n99) );
  DFFSR \reg_data_reg[14]  ( .D(n47), .CLK(clk), .R(n98), .S(1'b1), .Q(n100)
         );
  DFFSR \reg_data_reg[13]  ( .D(n48), .CLK(clk), .R(n98), .S(1'b1), .Q(n101)
         );
  DFFSR \reg_data_reg[12]  ( .D(n49), .CLK(clk), .R(n98), .S(1'b1), .Q(n102)
         );
  DFFSR \reg_data_reg[11]  ( .D(n41), .CLK(clk), .R(n98), .S(1'b1), .Q(n103)
         );
  DFFSR \reg_data_reg[10]  ( .D(n40), .CLK(clk), .R(n98), .S(1'b1), .Q(n104)
         );
  DFFSR \reg_data_reg[9]  ( .D(n39), .CLK(clk), .R(n98), .S(1'b1), .Q(n105) );
  DFFSR \reg_data_reg[8]  ( .D(n38), .CLK(clk), .R(n98), .S(1'b1), .Q(n106) );
  DFFSR \reg_data_reg[7]  ( .D(n37), .CLK(clk), .R(n98), .S(1'b1), .Q(n107) );
  DFFSR \reg_data_reg[6]  ( .D(n36), .CLK(clk), .R(n98), .S(1'b1), .Q(n108) );
  DFFSR \reg_data_reg[5]  ( .D(n42), .CLK(clk), .R(n98), .S(1'b1), .Q(n109) );
  DFFSR \reg_data_reg[4]  ( .D(n43), .CLK(clk), .R(n98), .S(1'b1), .Q(n110) );
  DFFSR \reg_data_reg[3]  ( .D(n44), .CLK(clk), .R(n98), .S(1'b1), .Q(n111) );
  DFFSR \reg_data_reg[2]  ( .D(n45), .CLK(clk), .R(n98), .S(1'b1), .Q(n112) );
  DFFSR \reg_data_reg[1]  ( .D(n46), .CLK(clk), .R(n98), .S(1'b1), .Q(n113) );
  DFFSR \reg_data_reg[0]  ( .D(N21), .CLK(clk), .R(n98), .S(1'b1), .Q(n114) );
  INVX1 U37 ( .A(d[5]), .Y(n76) );
  INVX1 U38 ( .A(d[8]), .Y(n82) );
  INVX1 U39 ( .A(d[11]), .Y(n88) );
  OR2X1 U40 ( .A(n50), .B(d[2]), .Y(n65) );
  AND2X1 U41 ( .A(n53), .B(n72), .Y(n54) );
  INVX1 U42 ( .A(d[3]), .Y(n72) );
  INVX1 U43 ( .A(d[6]), .Y(n78) );
  INVX1 U44 ( .A(d[9]), .Y(n84) );
  INVX1 U45 ( .A(d[12]), .Y(n90) );
  INVX1 U46 ( .A(d[4]), .Y(n74) );
  INVX1 U47 ( .A(d[7]), .Y(n80) );
  INVX1 U48 ( .A(d[10]), .Y(n86) );
  INVX1 U49 ( .A(d[13]), .Y(n92) );
  BUFX2 U50 ( .A(n114), .Y(q[0]) );
  BUFX2 U51 ( .A(n113), .Y(q[1]) );
  BUFX2 U52 ( .A(n112), .Y(q[2]) );
  BUFX2 U53 ( .A(n111), .Y(q[3]) );
  BUFX2 U54 ( .A(n110), .Y(q[4]) );
  BUFX2 U55 ( .A(n109), .Y(q[5]) );
  BUFX2 U56 ( .A(n108), .Y(q[6]) );
  BUFX2 U57 ( .A(n107), .Y(q[7]) );
  BUFX2 U58 ( .A(n106), .Y(q[8]) );
  BUFX2 U59 ( .A(n105), .Y(q[9]) );
  BUFX2 U60 ( .A(n104), .Y(q[10]) );
  BUFX2 U61 ( .A(n103), .Y(q[11]) );
  BUFX2 U62 ( .A(n102), .Y(q[12]) );
  BUFX2 U63 ( .A(n101), .Y(q[13]) );
  BUFX2 U64 ( .A(n100), .Y(q[14]) );
  BUFX2 U65 ( .A(n99), .Y(q[15]) );
  OR2X1 U66 ( .A(n77), .B(n96), .Y(N27) );
  INVX1 U67 ( .A(N27), .Y(n36) );
  OR2X1 U68 ( .A(n79), .B(n96), .Y(N28) );
  INVX1 U69 ( .A(N28), .Y(n37) );
  OR2X1 U70 ( .A(n81), .B(n96), .Y(N29) );
  INVX1 U71 ( .A(N29), .Y(n38) );
  OR2X1 U72 ( .A(n83), .B(n96), .Y(N30) );
  INVX1 U73 ( .A(N30), .Y(n39) );
  OR2X1 U74 ( .A(n85), .B(n96), .Y(N31) );
  INVX1 U75 ( .A(N31), .Y(n40) );
  OR2X1 U76 ( .A(n87), .B(n96), .Y(N32) );
  INVX1 U77 ( .A(N32), .Y(n41) );
  OR2X1 U78 ( .A(n75), .B(n96), .Y(N26) );
  INVX1 U79 ( .A(N26), .Y(n42) );
  OR2X1 U80 ( .A(n73), .B(n96), .Y(N25) );
  INVX1 U81 ( .A(N25), .Y(n43) );
  OR2X1 U82 ( .A(n71), .B(n96), .Y(N24) );
  INVX1 U83 ( .A(N24), .Y(n44) );
  OR2X1 U84 ( .A(n70), .B(n96), .Y(N23) );
  INVX1 U85 ( .A(N23), .Y(n45) );
  OR2X1 U86 ( .A(n66), .B(n96), .Y(N22) );
  INVX1 U87 ( .A(N22), .Y(n46) );
  OR2X1 U88 ( .A(n93), .B(n96), .Y(N35) );
  INVX1 U89 ( .A(N35), .Y(n47) );
  OR2X1 U90 ( .A(n91), .B(n96), .Y(N34) );
  INVX1 U91 ( .A(N34), .Y(n48) );
  OR2X1 U92 ( .A(n89), .B(n96), .Y(N33) );
  INVX1 U93 ( .A(N33), .Y(n49) );
  AND2X1 U94 ( .A(n68), .B(n67), .Y(n69) );
  INVX1 U95 ( .A(n69), .Y(n50) );
  OR2X1 U96 ( .A(n97), .B(n96), .Y(N36) );
  INVX1 U97 ( .A(N36), .Y(n51) );
  AND2X1 U98 ( .A(n64), .B(n94), .Y(n95) );
  INVX1 U99 ( .A(n95), .Y(n52) );
  INVX1 U100 ( .A(n65), .Y(n53) );
  INVX1 U101 ( .A(N5), .Y(n67) );
  INVX1 U102 ( .A(d[14]), .Y(n94) );
  AND2X1 U103 ( .A(n59), .B(n76), .Y(n55) );
  AND2X1 U104 ( .A(n55), .B(n78), .Y(n56) );
  AND2X1 U105 ( .A(n56), .B(n80), .Y(n57) );
  AND2X1 U106 ( .A(n57), .B(n82), .Y(n58) );
  AND2X1 U107 ( .A(n54), .B(n74), .Y(n59) );
  AND2X1 U108 ( .A(n58), .B(n84), .Y(n60) );
  AND2X1 U109 ( .A(n60), .B(n86), .Y(n61) );
  AND2X1 U110 ( .A(n61), .B(n88), .Y(n62) );
  AND2X1 U111 ( .A(n62), .B(n90), .Y(n63) );
  AND2X1 U112 ( .A(n63), .B(n92), .Y(n64) );
  INVX1 U113 ( .A(d[1]), .Y(n68) );
  INVX1 U114 ( .A(we), .Y(n96) );
  AND2X1 U115 ( .A(N5), .B(we), .Y(N21) );
  INVX1 U116 ( .A(reset), .Y(n98) );
  XOR2X1 U117 ( .A(n68), .B(N5), .Y(n66) );
  XOR2X1 U118 ( .A(d[2]), .B(n69), .Y(n70) );
  XOR2X1 U119 ( .A(d[3]), .B(n53), .Y(n71) );
  XOR2X1 U120 ( .A(d[4]), .B(n54), .Y(n73) );
  XOR2X1 U121 ( .A(d[5]), .B(n59), .Y(n75) );
  XOR2X1 U122 ( .A(d[6]), .B(n55), .Y(n77) );
  XOR2X1 U123 ( .A(d[7]), .B(n56), .Y(n79) );
  XOR2X1 U124 ( .A(d[8]), .B(n57), .Y(n81) );
  XOR2X1 U125 ( .A(d[9]), .B(n58), .Y(n83) );
  XOR2X1 U126 ( .A(d[10]), .B(n60), .Y(n85) );
  XOR2X1 U127 ( .A(d[11]), .B(n61), .Y(n87) );
  XOR2X1 U128 ( .A(d[12]), .B(n62), .Y(n89) );
  XOR2X1 U129 ( .A(d[13]), .B(n63), .Y(n91) );
  XOR2X1 U130 ( .A(d[14]), .B(n64), .Y(n93) );
  XNOR2X1 U131 ( .A(d[15]), .B(n52), .Y(n97) );
endmodule

