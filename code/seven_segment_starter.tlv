\m4_TLV_version 1d: tl-x.org
\SV
   m4_include_lib(['https://raw.githubusercontent.com/BalaDhinesh/Virtual-FPGA-Lab/main/tlv_lib/fpga_includes.tlv'])
   m4_makerchip_module   // (Expanded in Nav-TLV pane.)
   // write your code here
   wire [3:0] digit;
   wire [6:0] segment;
   wire dp;
   assign digit = 4'b0000;
   assign segment = 7'b0000000;
   assign dp = 0;
   
\TLV
   m4_define(M4_BOARD, 2)  
   m4+fpga_init()
   m4+fpga_sseg(*digit, *segment, *dp)
\SV
   endmodule
