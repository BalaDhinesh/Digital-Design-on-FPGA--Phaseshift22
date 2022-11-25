\m4_TLV_version 1d -p verilog --bestsv --noline: tl-x.org

\SV
   m4_include_lib(['https://raw.githubusercontent.com/os-fpga/Virtual-FPGA-Lab/main/tlv_lib/fpga_includes.tlv'])    
   
\SV
  module top(input wire clk, input wire reset, input wire [31:0] cyc_cnt, output wire passed, output wire failed);    /* verilator lint_save */ /* verilator lint_off UNOPTFLAT */  bit [256:0] RW_rand_raw; bit [256+63:0] RW_rand_vect; pseudo_rand #(.WIDTH(257)) pseudo_rand (clk, reset, RW_rand_raw[256:0]); assign RW_rand_vect[256+63:0] = {RW_rand_raw[62:0], RW_rand_raw};  /* verilator lint_restore */  /* verilator lint_off WIDTH */ /* verilator lint_off UNOPTFLAT */  
   logic [15:0] led; 
   logic [6:0] sseg_segment_n; 
   logic sseg_decimal_point_n; 
   logic [7:0] sseg_digit_n;
 
   reg [2:0] state;
   reg [2:0] count;
 
   parameter [2:0] NORTH	=	3'b000;
   parameter [2:0] NORTH_Y	=	3'b001;
   parameter [2:0] SOUTH	=	3'b010;
   parameter [2:0] SOUTH_Y	=	3'b011;
   parameter [2:0] EAST		=	3'b100;
   parameter [2:0] EAST_Y	=	3'b101;
   parameter [2:0] WEST		=	3'b110;
   parameter [2:0] WEST_Y	=	3'b111;

   always @(posedge clk, posedge reset)
     begin
        if (reset)
            begin
               
                /* TODO: Set initial state to NORTH and count signal to zero */
                // 
                // 
               
            end
        else
            begin
                case (state)
                NORTH :
                    begin
                       
                       // Enable first seven segment and set to Green 
                       sseg_digit_n <= 4'b0111;
                       sseg_segment_n <= 7'b1110111;
                       
                        /* TODO: 1. Keep the green NORTH signal active for 8 seconds 
                                2. Set state of signal to yellow NORTH after that 
                          HINT: Use if-else block
                        */
                       
                    end

                NORTH_Y :
                    begin
                       
                        // Enable first seven segment and set to Yellow
                        sseg_digit_n <= 4'b0111;
                        sseg_segment_n <= 7'b1111110;
                       
                        /* TODO: 1. Keep the yellow NORTH signal active for 4 seconds 
                                2. Set state of signal to green SOUTH after that 
                        */
                       
                    end

               SOUTH :
                    begin
                       
                        // TODO: Enable second seven segment and set to Green 
                       
                        /* TODO: 1. Keep the green SOUTH signal active for 8 seconds 
                                 2. Set state of signal to yellow SOUTH after that 
                        */
                       
                    end

                SOUTH_Y :
                    begin
                    
                        // TODO: Enable second seven segment and set to Yellow 
                    
                        /* TODO: 1. Keep the yellow SOUTH signal active for 4 seconds 
                                    2. Set state of signal to green EAST after that 
                        */
                    
                    end
                   
                EAST :
                    begin
                    
                        // TODO: Enable third seven segment and set to Green 
                    
                        /* TODO: 1. Keep the green EAST signal active for 8 seconds 
                                2. Set state of signal to yellow EAST after that 
                        */
                    
                    end
                EAST_Y :
                    begin
                    
                    // TODO: Enable third seven segment and set to Yellow 
                    
                    /* TODO: 1. Keep the yellow EAST signal active for 4 seconds 
                                2. Set state of signal to green WEST after that 
                    */
                   
                    end
                WEST :
                    begin

                    // TODO: Enable fourth seven segment and set to Green 

                    /* TODO: 1. Keep the green WEST signal active for 8 seconds 
                            2. Set state of signal to yellow WEST after that 
                    */

                    end
                WEST_Y :
                    begin

                    // TODO: Enable fourth seven segment and set to Yellow 

                    /* TODO: 1. Keep the yellow EAST signal active for 4 seconds 
                            2. Move back to NORTH signal again
                    */

                    end
            endcase 
        end 
    end 
	assign led = count;

\TLV
   /board
      m4+board(/board, /fpga, 3, *, ['top: 0, left: -1500, width: 7000, height: 7000'])   // 3rd arg selects the board.
   
\SV
   endmodule
