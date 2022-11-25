\m4_TLV_version 1d -p verilog --bestsv --noline: tl-x.org

\SV
   m4_include_lib(['https://raw.githubusercontent.com/os-fpga/Virtual-FPGA-Lab/main/tlv_lib/fpga_includes.tlv'])    
   
\SV
  module top(input wire clk, input wire reset, input wire [31:0] cyc_cnt, output wire passed, output wire failed);    /* verilator lint_save */ /* verilator lint_off UNOPTFLAT */  bit [256:0] RW_rand_raw; bit [256+63:0] RW_rand_vect; pseudo_rand #(.WIDTH(257)) pseudo_rand (clk, reset, RW_rand_raw[256:0]); assign RW_rand_vect[256+63:0] = {RW_rand_raw[62:0], RW_rand_raw};  /* verilator lint_restore */  /* verilator lint_off WIDTH */ /* verilator lint_off UNOPTFLAT */  
   logic [15:0] led; 
   logic [6:0] sseg_segment_n; 
   logic sseg_decimal_point_n; 
   logic [7:0] sseg_digit_n;
     
   always @(posedge clk) begin
   	if(reset) led <= 0;
      else led <= led + 1;
   end
       
\TLV
   /board
      m4+board(/board, /fpga, 3, *, ['top: 0, left: -1500, width: 7000, height: 7000'])   // 3rd arg selects the board.
   
\SV
   endmodule