\m4_TLV_version 1d -p verilog --bestsv --noline: tl-x.org
\SV
   m4_include_lib(['https://raw.githubusercontent.com/BalaDhinesh/Virtual-FPGA-Lab/main/tlv_lib/fpga_includes.tlv'])                   
\SV
   m4_makerchip_module   
   wire [15:0] led;
   reg [3:0] digit;
   reg [6:0] segment;
   wire  dp = 1;
 
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
                       digit <= 4'b0111;
                       segment <= 7'b1110111;
                       
                        /* TODO: 1. Keep the green NORTH signal active for 8 seconds 
                                2. Set state of signal to yellow NORTH after that 
                          HINT: Use if-else block
                        */
                       
                    end

                NORTH_Y :
                    begin
                       
                        // Enable first seven segment and set to Yellow
                        digit <= 4'b0111;
                        segment <= 7'b1111110;
                       
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
   // M4_BOARD numbering
   // 1 - Zedboard
   // 2 - Artix-7
   // 3 - Basys3
   // 4 - Icebreaker
   // 5 - Nexys
   m4_define(M4_BOARD, 3)
   m4+fpga_init()
   m4+fpga_led(*led)
   m4+fpga_sseg(*digit, *segment, *dp)
\SV
   endmodule
