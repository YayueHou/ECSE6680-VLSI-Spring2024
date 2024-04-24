/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Thu Nov 16 15:56:51 2023
/////////////////////////////////////////////////////////////


module crossbar ( Selector, .dIn({\dIn[7][3] , \dIn[7][2] , \dIn[7][1] , 
        \dIn[7][0] , \dIn[6][3] , \dIn[6][2] , \dIn[6][1] , \dIn[6][0] , 
        \dIn[5][3] , \dIn[5][2] , \dIn[5][1] , \dIn[5][0] , \dIn[4][3] , 
        \dIn[4][2] , \dIn[4][1] , \dIn[4][0] , \dIn[3][3] , \dIn[3][2] , 
        \dIn[3][1] , \dIn[3][0] , \dIn[2][3] , \dIn[2][2] , \dIn[2][1] , 
        \dIn[2][0] , \dIn[1][3] , \dIn[1][2] , \dIn[1][1] , \dIn[1][0] , 
        \dIn[0][3] , \dIn[0][2] , \dIn[0][1] , \dIn[0][0] }), dOut );
  input [2:0] Selector;
  output [3:0] dOut;
  input \dIn[7][3] , \dIn[7][2] , \dIn[7][1] , \dIn[7][0] , \dIn[6][3] ,
         \dIn[6][2] , \dIn[6][1] , \dIn[6][0] , \dIn[5][3] , \dIn[5][2] ,
         \dIn[5][1] , \dIn[5][0] , \dIn[4][3] , \dIn[4][2] , \dIn[4][1] ,
         \dIn[4][0] , \dIn[3][3] , \dIn[3][2] , \dIn[3][1] , \dIn[3][0] ,
         \dIn[2][3] , \dIn[2][2] , \dIn[2][1] , \dIn[2][0] , \dIn[1][3] ,
         \dIn[1][2] , \dIn[1][1] , \dIn[1][0] , \dIn[0][3] , \dIn[0][2] ,
         \dIn[0][1] , \dIn[0][0] ;
  wire   n93, n94, n95, n96, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92;

  AND2X1 U39 ( .A(n46), .B(n50), .Y(n84) );
  AND2X1 U40 ( .A(n45), .B(n49), .Y(n79) );
  AND2X1 U41 ( .A(n44), .B(n48), .Y(n74) );
  AND2X1 U42 ( .A(n43), .B(n47), .Y(n61) );
  BUFX2 U43 ( .A(n93), .Y(dOut[3]) );
  BUFX2 U44 ( .A(n94), .Y(dOut[2]) );
  BUFX2 U45 ( .A(n95), .Y(dOut[1]) );
  BUFX2 U46 ( .A(n96), .Y(dOut[0]) );
  BUFX2 U47 ( .A(n87), .Y(n39) );
  BUFX2 U48 ( .A(n88), .Y(n40) );
  BUFX2 U49 ( .A(n90), .Y(n41) );
  BUFX2 U50 ( .A(n92), .Y(n42) );
  BUFX2 U51 ( .A(n62), .Y(n43) );
  BUFX2 U52 ( .A(n75), .Y(n44) );
  BUFX2 U53 ( .A(n80), .Y(n45) );
  BUFX2 U54 ( .A(n85), .Y(n46) );
  BUFX2 U55 ( .A(n63), .Y(n47) );
  BUFX2 U56 ( .A(n76), .Y(n48) );
  BUFX2 U57 ( .A(n81), .Y(n49) );
  BUFX2 U58 ( .A(n86), .Y(n50) );
  BUFX2 U59 ( .A(n59), .Y(n51) );
  BUFX2 U60 ( .A(n72), .Y(n52) );
  BUFX2 U61 ( .A(n77), .Y(n53) );
  BUFX2 U62 ( .A(n82), .Y(n54) );
  BUFX2 U63 ( .A(n60), .Y(n55) );
  BUFX2 U64 ( .A(n73), .Y(n56) );
  BUFX2 U65 ( .A(n78), .Y(n57) );
  BUFX2 U66 ( .A(n83), .Y(n58) );
  NAND3X1 U67 ( .A(n51), .B(n55), .C(n61), .Y(n93) );
  AOI22X1 U68 ( .A(\dIn[6][3] ), .B(n64), .C(\dIn[7][3] ), .D(n65), .Y(n63) );
  AOI22X1 U69 ( .A(\dIn[4][3] ), .B(n66), .C(\dIn[5][3] ), .D(n67), .Y(n62) );
  AOI22X1 U70 ( .A(\dIn[2][3] ), .B(n68), .C(\dIn[3][3] ), .D(n69), .Y(n60) );
  AOI22X1 U71 ( .A(\dIn[0][3] ), .B(n70), .C(\dIn[1][3] ), .D(n71), .Y(n59) );
  NAND3X1 U72 ( .A(n52), .B(n56), .C(n74), .Y(n94) );
  AOI22X1 U73 ( .A(\dIn[6][2] ), .B(n64), .C(\dIn[7][2] ), .D(n65), .Y(n76) );
  AOI22X1 U74 ( .A(\dIn[4][2] ), .B(n66), .C(\dIn[5][2] ), .D(n67), .Y(n75) );
  AOI22X1 U75 ( .A(\dIn[2][2] ), .B(n68), .C(\dIn[3][2] ), .D(n69), .Y(n73) );
  AOI22X1 U76 ( .A(\dIn[0][2] ), .B(n70), .C(\dIn[1][2] ), .D(n71), .Y(n72) );
  NAND3X1 U77 ( .A(n53), .B(n57), .C(n79), .Y(n95) );
  AOI22X1 U78 ( .A(\dIn[6][1] ), .B(n64), .C(\dIn[7][1] ), .D(n65), .Y(n81) );
  AOI22X1 U79 ( .A(\dIn[4][1] ), .B(n66), .C(\dIn[5][1] ), .D(n67), .Y(n80) );
  AOI22X1 U80 ( .A(\dIn[2][1] ), .B(n68), .C(\dIn[3][1] ), .D(n69), .Y(n78) );
  AOI22X1 U81 ( .A(\dIn[0][1] ), .B(n70), .C(\dIn[1][1] ), .D(n71), .Y(n77) );
  NAND3X1 U82 ( .A(n54), .B(n58), .C(n84), .Y(n96) );
  AOI22X1 U83 ( .A(\dIn[6][0] ), .B(n64), .C(\dIn[7][0] ), .D(n65), .Y(n86) );
  INVX1 U84 ( .A(n39), .Y(n65) );
  NAND3X1 U85 ( .A(Selector[2]), .B(Selector[0]), .C(Selector[1]), .Y(n87) );
  INVX1 U86 ( .A(n40), .Y(n64) );
  NAND3X1 U87 ( .A(Selector[0]), .B(n89), .C(Selector[2]), .Y(n88) );
  AOI22X1 U88 ( .A(\dIn[4][0] ), .B(n66), .C(\dIn[5][0] ), .D(n67), .Y(n85) );
  INVX1 U89 ( .A(n41), .Y(n67) );
  NAND3X1 U90 ( .A(n91), .B(n89), .C(Selector[2]), .Y(n90) );
  INVX1 U91 ( .A(n42), .Y(n66) );
  NAND3X1 U92 ( .A(Selector[2]), .B(n91), .C(Selector[1]), .Y(n92) );
  AOI22X1 U93 ( .A(\dIn[2][0] ), .B(n68), .C(\dIn[3][0] ), .D(n69), .Y(n83) );
  NOR3X1 U94 ( .A(Selector[0]), .B(Selector[2]), .C(n89), .Y(n69) );
  NOR3X1 U95 ( .A(n91), .B(Selector[2]), .C(n89), .Y(n68) );
  INVX1 U96 ( .A(Selector[1]), .Y(n89) );
  AOI22X1 U97 ( .A(\dIn[0][0] ), .B(n70), .C(\dIn[1][0] ), .D(n71), .Y(n82) );
  NOR3X1 U98 ( .A(Selector[1]), .B(Selector[2]), .C(n91), .Y(n71) );
  INVX1 U99 ( .A(Selector[0]), .Y(n91) );
  NOR3X1 U100 ( .A(Selector[1]), .B(Selector[2]), .C(Selector[0]), .Y(n70) );
endmodule

