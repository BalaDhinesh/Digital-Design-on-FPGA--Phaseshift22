\m4_TLV_version 1d: tl-x.org
\SV
  m4_include_lib(['https://raw.githubusercontent.com/BalaDhinesh/Virtual-FPGA-Lab/main/tlv_lib/fpga_includes.tlv'])
  m4_makerchip_module   // (Expanded in Nav-TLV pane.)
   // write your code here
   
\TLV
   m4_define(M4_BOARD, 1)  
   m4+fpga_init()
\SV
   endmodule
