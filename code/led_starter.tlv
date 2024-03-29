\m4_TLV_version 1d: tl-x.org
\SV
   m4_include_lib(['https://raw.githubusercontent.com/BalaDhinesh/Digital-Design-on-FPGA--Phaseshift22/main/src/fpga_includes.tlv'])
   m4_makerchip_module   // (Expanded in Nav-TLV pane.)
   reg [7:0] led;
   always @(posedge clk) begin
   	if(reset) led <= 0;
      else led <= led + 1;
   end
                   
\TLV
   m4_define(M4_BOARD, 3)  
   m4+fpga_init()
   m4+fpga_led(*led)
\SV
   endmodule