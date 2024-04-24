/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Thu Nov 16 15:54:54 2023
/////////////////////////////////////////////////////////////


module comparator ( a, b, res );
  input [7:0] a;
  input [7:0] b;
  output res;
  wire   N0, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32;
  assign res = N0;

  BUFX2 U3 ( .A(n14), .Y(n3) );
  BUFX2 U4 ( .A(n20), .Y(n4) );
  BUFX2 U5 ( .A(n23), .Y(n5) );
  BUFX2 U6 ( .A(n22), .Y(n6) );
  OAI21X1 U7 ( .A(b[7]), .B(n7), .C(n8), .Y(N0) );
  OAI21X1 U8 ( .A(a[7]), .B(n9), .C(n10), .Y(n8) );
  OAI21X1 U9 ( .A(b[6]), .B(n11), .C(n12), .Y(n10) );
  OAI21X1 U10 ( .A(a[6]), .B(n13), .C(n3), .Y(n12) );
  AOI22X1 U11 ( .A(b[5]), .B(n15), .C(n16), .D(n17), .Y(n14) );
  OR2X1 U12 ( .A(n17), .B(n16), .Y(n15) );
  OAI21X1 U13 ( .A(a[4]), .B(n18), .C(n19), .Y(n16) );
  OAI21X1 U14 ( .A(n4), .B(n21), .C(b[4]), .Y(n19) );
  INVX1 U15 ( .A(a[4]), .Y(n21) );
  INVX1 U16 ( .A(n4), .Y(n18) );
  AOI21X1 U17 ( .A(n6), .B(a[3]), .C(n5), .Y(n20) );
  AOI21X1 U18 ( .A(n24), .B(n25), .C(b[3]), .Y(n23) );
  INVX1 U19 ( .A(a[3]), .Y(n25) );
  INVX1 U20 ( .A(n6), .Y(n24) );
  AOI21X1 U21 ( .A(n26), .B(n27), .C(n28), .Y(n22) );
  INVX1 U22 ( .A(n29), .Y(n28) );
  OAI21X1 U23 ( .A(n27), .B(n26), .C(b[2]), .Y(n29) );
  OAI21X1 U24 ( .A(n30), .B(a[1]), .C(n31), .Y(n27) );
  OAI21X1 U25 ( .A(b[0]), .B(n32), .C(b[1]), .Y(n31) );
  NOR3X1 U26 ( .A(n32), .B(b[1]), .C(b[0]), .Y(n30) );
  INVX1 U27 ( .A(a[0]), .Y(n32) );
  INVX1 U28 ( .A(a[2]), .Y(n26) );
  INVX1 U29 ( .A(a[5]), .Y(n17) );
  INVX1 U30 ( .A(b[6]), .Y(n13) );
  INVX1 U31 ( .A(a[6]), .Y(n11) );
  INVX1 U32 ( .A(b[7]), .Y(n9) );
  INVX1 U33 ( .A(a[7]), .Y(n7) );
endmodule

