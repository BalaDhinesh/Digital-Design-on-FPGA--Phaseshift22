\m4_TLV_version 1d: tl-x.org


\TLV fpga_refresh($_var, #_delay)
   /* verilator lint_off UNSIGNED */
   $rst['']m4_plus_inst_id = *reset;
   $count['']m4_plus_inst_id[31:0] = ($RETAIN >= #_delay - 1) | >>1$rst['']m4_plus_inst_id ? 1'b0 : $RETAIN + 1 ; 
   $_var = ($count['']m4_plus_inst_id == #_delay - 1) ? 1'b1 : 1'b0 ;
   
\TLV osfpga_logo()
   |osfpga_logo_macro
      @0
         m4_ifelse_block(M4_MAKERCHIP, 1, ['
         \viz_alpha
               initEach() {
                  let osfpga_logo_url = "https://user-images.githubusercontent.com/64545984/131954393-6e21a24e-ee4e-44dc-b30f-2347c2229812.jpg"
                     let osfpga_img = new fabric.Image.fromURL(
                           osfpga_logo_url,
                           function (img) {
                              global.canvas.add(img)
                           },
                           {originX: "center",
                            originY: "center",
                            left: 300,
                            top: -230,
                            scaleX: 0.15,
                            scaleY: 0.15,
                            angle: 0
                           }
                        )
                   }
         '])
\TLV fpga_init()
   m4+osfpga_logo()
   |fpga_init_macro
      @0
         m4_ifelse_block(M4_MAKERCHIP, 1, ['
         *passed = *cyc_cnt > 500;
         *failed = 1'b0;   
         m4_ifelse_block(M4_BOARD, 1,['
         \viz_alpha
            initEach() {
                  let fpga_img_url = "https://user-images.githubusercontent.com/64545984/130666264-972dfe58-c2c8-4446-b0d3-eb9587fd3458.png"
                  let fpga_img = new fabric.Image.fromURL(
                        fpga_img_url,
                        function (img) {
                           global.canvas.add(img)
                           global.canvas.sendToBack(img);
                        },
                        {originX: "center",
                         originY: "center",
                         left: 0,
                         top: 10,
                         scaleX: 0.3,
                         scaleY: 0.3,
                         angle: 0
                        }
                     )
                }
         '],['
         m4_ifelse_block(M4_BOARD, 2,['
         \viz_alpha
            initEach() {
                  let fpga_img_url = "https://user-images.githubusercontent.com/64545984/130667389-08904919-5425-4ef3-aae4-c2dacf41f1c7.png"
                  let fpga_img = new fabric.Image.fromURL(
                        fpga_img_url,
                        function (img) {
                           global.canvas.add(img)
                           global.canvas.sendToBack(img);
                        },
                        {originX: "center",
                         originY: "center",
                         left: 0,
                         top: 10,
                         scaleX: 0.18,
                         scaleY: 0.18,
                         angle: 0
                        }
                     )
                  let seg = new fabric.Rect({
                     top: 60,
                     left: -244,
                     width: 140, 
                     height: 60, 
                     fill: "black",
                     opacity: 1
                  })
                return {objects :{seg}};
                
                }
         /digit[3:0]
            /led[7:0]
               \viz_alpha
                  initEach() {
                     let sseg = (scopes.led.index == 7) ? new fabric.Circle({
                           top: 109,
                           left: (scopes.digit.index == 3) ? -122 : (scopes.digit.index == 0) ? -212 : (scopes.digit.index == 1) ? -182 : -152 ,
                           radius: 2,
                           opacity: 1,
                           fill: "grey"
                        }) 
                        :
                        new fabric.Rect({
                           top: 76 + ((scopes.led.index == 1) ? -4 : (scopes.led.index == 2) ? 16 : (scopes.led.index == 3) ? 31 : (scopes.led.index == 4) ? 16 : (scopes.led.index == 5) ? -4 : (scopes.led.index == 6) ? 11 : -8),
                           left: ((scopes.digit.index == 0) ? -224 : (scopes.digit.index == 1) ? -194 : (scopes.digit.index == 2) ? -164 : -134) + ((scopes.led.index == 5) ? 13 : (scopes.led.index == 4) ? 11 : (scopes.led.index == 3) ? -2 : (scopes.led.index == 2) ? -8 : (scopes.led.index == 1) ? -6 : -1),
                           width: ((this.getIndex() == 6) || (this.getIndex() == 3) || (this.getIndex() == 0)) ? 14 : 3,
                           height: ((this.getIndex() == 5) || (this.getIndex() == 4) || (this.getIndex() == 2) || (this.getIndex() == 1)) ? 14 : 3,
                           fill: "grey",
                           skewX: ((this.getIndex() == 5) || (this.getIndex() == 4) || (this.getIndex() == 2) || (this.getIndex() == 1)) ? -9 : 0,
                           opacity: 1
                        })
                     return{objects : {sseg}};
                  }
         '],['
         m4_ifelse_block(M4_BOARD, 3,['
         \viz_alpha
            initEach() {
                  let fpga_img_url = "https://user-images.githubusercontent.com/64545984/130667995-6ea5cc8f-400c-470b-9585-5f8ba5bab0b9.png"
                  let fpga_img = new fabric.Image.fromURL(
                        fpga_img_url,
                        function (img) {
                           global.canvas.add(img)
                           global.canvas.sendToBack(img);
                        },
                        {originX: "center",
                         originY: "center",
                         left: 0,
                         top: 10,
                         scaleX: 0.09,
                         scaleY: 0.09,
                         angle: 0
                        }
                     )
                  let seg = new fabric.Rect({
                           top: 50,
                           left: -182,
                           width: 124, 
                           height: 39, 
                           fill: "black",
                           opacity: 1
                        })
                return {objects :{seg}};
                }
         /digit[3:0]
            /led[7:0]
               \viz_alpha
                  initEach() {
                     let sseg = (scopes.led.index == 7) ? new fabric.Circle({
                           top: 79,
                           left: (scopes.digit.index == 0) ? -157 : (scopes.digit.index == 1) ? -127 : (scopes.digit.index == 2) ? -97 : -67 ,
                           radius: 2,
                           opacity: 1,
                           fill: "grey"
                        }) 
                        :
                        new fabric.Rect({
                           top: 56 + ((scopes.led.index == 5) ? 1 : (scopes.led.index == 4) ? 13 : (scopes.led.index == 3) ? 23 : (scopes.led.index == 2) ? 13 : (scopes.led.index == 1) ? 1 : (scopes.led.index == 0) ? 11 : 0),
                           left: ((scopes.digit.index == 0) ? -169 : (scopes.digit.index == 1) ? -139 : (scopes.digit.index == 2) ? -109 : -79) + ((scopes.led.index == 5) ? 10 : (scopes.led.index == 4) ? 8 : (scopes.led.index == 3) ? -2 : (scopes.led.index == 2) ? -6 : (scopes.led.index == 1) ? -4 : 0),
                           width: ((this.getIndex() == 6) || (this.getIndex() == 3) || (this.getIndex() == 0)) ? 11 : 3,
                           height: ((this.getIndex() == 5) || (this.getIndex() == 4) || (this.getIndex() == 2) || (this.getIndex() == 1)) ? 11 : 3,
                           fill: "grey",
                           skewX: ((this.getIndex() == 5) || (this.getIndex() == 4) || (this.getIndex() == 2) || (this.getIndex() == 1)) ? -9 : 0,
                           opacity: 1
                        })
                     return{objects : {sseg }};
                  }
         '],['
         m4_ifelse_block(M4_BOARD, 4,['
         \viz_alpha
            initEach() {
                  console.log(M4_BOARD)
                  let fpga_img_url = "https://user-images.githubusercontent.com/64545984/130666826-b9e7bc53-104c-4b4b-8b2a-b8105edb00da.png"
                  let fpga_img = new fabric.Image.fromURL(
                        fpga_img_url,
                        function (img) {
                           global.canvas.add(img)
                           global.canvas.sendToBack(img);
                        },
                        {originX: "center",
                         originY: "center",
                         left: -100,
                         top: 10,
                         scaleX: 0.5,
                         scaleY: 0.5,
                         angle: 180
                        }
                     )
                }
         '],['
         m4_ifelse_block(M4_BOARD, 5,['
         \viz_alpha
            initEach() {
                  let fpga_img_url = "https://user-images.githubusercontent.com/64545984/130666896-00e2225d-0d4c-47c5-9493-af6512a430e4.png"
                  let fpga_img = new fabric.Image.fromURL(
                        fpga_img_url,
                        function (img) {
                           global.canvas.add(img)
                           global.canvas.sendToBack(img);
                        },
                        {originX: "center",
                         originY: "center",
                         scaleX: 1,
                         scaleY: 1,
                        }
                     )
                let seg = new fabric.Rect({
                     top: 90,
                     left: -126,
                     width: 218, 
                     height: 35, 
                     fill: "black",
                     opacity: 1
                  })
                
                return {objects :{seg}};
             }
         /digit[7:0]
            /led[7:0]
               \viz_alpha
                  initEach() {
                     let sseg = (scopes.led.index == 7) ? new fabric.Circle({
                           top: 119,
                           //left: (scopes.digit.index == 3) ? -122 : (scopes.digit.index == 0) ? -212 : (scopes.digit.index == 1) ? -182 : -152 ,
                           left : ((scopes.digit.index == 7) ? -104 : (scopes.digit.index == 6) ? -79 : (scopes.digit.index == 5) ? -54 : (scopes.digit.index == 4) ? -29 : (scopes.digit.index == 3) ? 6 : (scopes.digit.index == 2) ? 31 : (scopes.digit.index == 1) ? 56 : 81),
                           radius: 2,
                           opacity: 1,
                           fill: "grey"
                        }) 
                        :
                        new fabric.Rect({
                           top: 76 + ((scopes.led.index == 5) ? 19 : (scopes.led.index == 4) ? 32 : (scopes.led.index == 3) ? 43 : (scopes.led.index == 2) ? 32 : (scopes.led.index == 1) ? 19 : (scopes.led.index == 0) ? 30 : 18),
                           left: ((scopes.digit.index == 7) ? -114 : (scopes.digit.index == 6) ? -89 : (scopes.digit.index == 5) ? -64 : (scopes.digit.index == 4) ? -39 : (scopes.digit.index == 3) ? -4 : (scopes.digit.index == 2) ? 21 : (scopes.digit.index == 1) ? 46 : 71) + ((scopes.led.index == 5) ? 10 : (scopes.led.index == 4) ? 8 : (scopes.led.index == 3) ? -4 : (scopes.led.index == 2) ? -8 : (scopes.led.index == 1) ? -6 : (scopes.led.index == 0) ? -2 : -1),
                           width: ((this.getIndex() == 6) || (this.getIndex() == 3) || (this.getIndex() == 0)) ? 12 : 3,
                           height: ((this.getIndex() == 5) || (this.getIndex() == 4) || (this.getIndex() == 2) || (this.getIndex() == 1)) ? 11 : 3,
                           fill: "grey",
                           skewX: ((this.getIndex() == 5) || (this.getIndex() == 4) || (this.getIndex() == 2) || (this.getIndex() == 1)) ? -9 : 0,
                           opacity: 1
                        })
                     return{objects : {sseg}};
                  },
         '])
         '])
         '])
         '])
         '])
         '])
         
\TLV fpga_led($_leds)
   |led_pipe_macro
      @0
         m4_ifelse_block(M4_MAKERCHIP, 1, ['
         $led[\$size($_leds)-1:0] = $_leds;
         m4_ifelse_block(M4_BOARD, 1,['
         /led[7:0]
            \viz_alpha
               initEach() {
                  let led = new fabric.Rect({
                        top: 233,
                        left: 127 - 3.4 * (this.getIndex() + 1),
                        width: 6, 
                        height: 11, 
                        fill: "red",
                        opacity: 0
                     })
                  return{objects : {led}}; 
               }, 
               renderEach() {
                     var mod = ((('/top|led_pipe_macro$led'.asInt(-1) >> this.getScope("led").index) & 1) == 1);
                     this.getInitObject("led").set(mod ? {opacity: 1} : {opacity: 0});
                  }
         '],['
         m4_ifelse_block(M4_BOARD, 2,['
         /led[15:0]
            \viz_alpha
               initEach() {
                  let led = new fabric.Rect({
                        top: 150,
                        left: 218 - 27.5 * (this.getIndex() + 1),
                        width: 12, 
                        height: 12, 
                        fill: "red",
                        opacity: 0
                     })
                  return{objects : {led}}; 
               }, 
               renderEach() {
                     var mod = ((('/top|led_pipe_macro$led'.asInt(-1) >> this.getScope("led").index) & 1) == 1);
                     this.getInitObject("led").set(mod ? {opacity: 1} : {opacity: 0});
                  } 
         '],['
         m4_ifelse_block(M4_BOARD, 3,['
         /led[15:0]
            \viz_alpha
               initEach() {
                  let led = new fabric.Rect({
                        top: 92,
                        left: 195 - 25 * (this.getIndex() + 1),
                        width: 6, 
                        height: 10, 
                        fill: "red",
                        opacity: 0
                     })
                  return{objects : {led}}; 
               }, 
               renderEach() {
                     var mod = ((('/top|led_pipe_macro$led'.asInt(-1) >> this.getScope("led").index) & 1) == 1);
                     this.getInitObject("led").set(mod ? {opacity: 1} : {opacity: 0});
                  }  
         '],['
         m4_ifelse_block(M4_BOARD, 4,['

         
         '],['
         m4_ifelse_block(M4_BOARD, 5,['
         /led[15:0]
            \viz_alpha
               initEach() {
                  let led = new fabric.Rect({
                        top: 128,
                        left: 185 - 21.2 * (this.getIndex() + 1),
                        width: 8, 
                        height: 8, 
                        fill: "red",
                        opacity: 0
                     })
                  return{objects : {led}}; 
               }, 
               renderEach() {
                     var mod = ((('/top|led_pipe_macro$led'.asInt(-1) >> this.getScope("led").index) & 1) == 1);
                     this.getInitObject("led").set(mod ? {opacity: 1} : {opacity: 0});
               } 
         '])
         '])
         '])
         '])
         '])
         '])
         
\TLV fpga_template(|_pipe, @_stage, $leds)
   |_pipe
      @_stage
         m4_ifelse_block(M4_MAKERCHIP, 1, ['
         m4_ifelse_block(M4_BOARD, 1,['
         '],['
         m4_ifelse_block(M4_BOARD, 2,['
         '],['
         m4_ifelse_block(M4_BOARD, 3,['
         '],['
         m4_ifelse_block(M4_BOARD, 4,['
         '],['
         m4_ifelse_block(M4_BOARD, 5,['
         '])
         '])
         '])
         '])
         '])
         '])
         
\TLV fpga_sseg($_digit, $_sseg, $_dp)
   |sseg_pipe_macro
      @0
         m4_ifelse_block(M4_MAKERCHIP, 1, ['
         $digit[\$size($_digit)-1:0] = $_digit;
         $sseg[\$size($_sseg)-1:0] = $_sseg;
         $dp = $_dp;
         m4_ifelse_block(M4_BOARD, 1,['
         '],['
         m4_ifelse_block(M4_BOARD, 2,['
         /digit[3:0]
            /led[7:0]
               \viz_alpha
                  initEach() {
                     let sseg = (scopes.led.index == 7) ? new fabric.Circle({
                           top: 109,
                           left: (scopes.digit.index == 0) ? -122 : (scopes.digit.index == 3) ? -212 : (scopes.digit.index == 2) ? -182 : -152 ,
                           radius: 2,
                           opacity: 1,
                           fill: "grey"
                        }) 
                        :
                        new fabric.Rect({
                           top: 76 + ((scopes.led.index == 5) ? -4 : (scopes.led.index == 4) ? 16 : (scopes.led.index == 3) ? 31 : (scopes.led.index == 2) ? 16 : (scopes.led.index == 1) ? -4 : (scopes.led.index == 0) ? 11 : -8),
                           left: ((scopes.digit.index == 3) ? -224 : (scopes.digit.index == 2) ? -194 : (scopes.digit.index == 1) ? -164 : -134) + ((scopes.led.index == 5) ? 13 : (scopes.led.index == 4) ? 11 : (scopes.led.index == 3) ? -2 : (scopes.led.index == 2) ? -8 : (scopes.led.index == 1) ? -6 : -1),
                           width: ((this.getIndex() == 6) || (this.getIndex() == 3) || (this.getIndex() == 0)) ? 14 : 3,
                           height: ((this.getIndex() == 5) || (this.getIndex() == 4) || (this.getIndex() == 2) || (this.getIndex() == 1)) ? 14 : 3,
                           fill: "grey",
                           skewX: ((this.getIndex() == 5) || (this.getIndex() == 4) || (this.getIndex() == 2) || (this.getIndex() == 1)) ? -9 : 0,
                           opacity: 1
                        })
                     return{objects : {sseg}};
                  },
                  renderEach(){
                     var enable = ('/top|sseg_pipe_macro$digit'.asBinaryStr().split("").reverse().join(""));
                     this.getInitObject("sseg").bringToFront()
                     var fp_valid = '/top|sseg_pipe_macro$dp'.asBool() == 0
                     if(scopes.led.index == 7)
                     {
                        this.getInitObject("sseg").set(enable[scopes.digit.index] == 0 && fp_valid ? {fill: "red"} : {fill: "grey"})
                     }
                     else {
                        var hamm = ((('/top|sseg_pipe_macro$sseg'.asInt(-1) >> scopes.led.index) & 1) == 0);
                        this.getInitObject("sseg").set(hamm && enable[scopes.digit.index] == 0 ? {fill: "red"} : {fill: "grey"});
                     }
                  }
         '],['
         m4_ifelse_block(M4_BOARD, 3,['
         /digit[3:0]
            /led[7:0]
               \viz_alpha
                  initEach() {
                     let sseg = (scopes.led.index == 7) ? new fabric.Circle({
                           top: 79,
                           left: (scopes.digit.index == 3) ? -157 : (scopes.digit.index == 2) ? -127 : (scopes.digit.index == 1) ? -97 : -67 ,
                           radius: 2,
                           opacity: 1,
                           fill: "grey"
                        }) 
                        :
                        new fabric.Rect({
                           top: 56 + ((scopes.led.index == 5) ? 1 : (scopes.led.index == 4) ? 13 : (scopes.led.index == 3) ? 23 : (scopes.led.index == 2) ? 13 : (scopes.led.index == 1) ? 1 : (scopes.led.index == 0) ? 11 : 0),
                           left: ((scopes.digit.index == 3) ? -169 : (scopes.digit.index == 2) ? -139 : (scopes.digit.index == 1) ? -109 : -79) + ((scopes.led.index == 5) ? 10 : (scopes.led.index == 4) ? 8 : (scopes.led.index == 3) ? -2 : (scopes.led.index == 2) ? -6 : (scopes.led.index == 1) ? -4 : 0),
                           width: ((this.getIndex() == 6) || (this.getIndex() == 3) || (this.getIndex() == 0)) ? 11 : 3,
                           height: ((this.getIndex() == 5) || (this.getIndex() == 4) || (this.getIndex() == 2) || (this.getIndex() == 1)) ? 11 : 3,
                           fill: "grey",
                           skewX: ((this.getIndex() == 5) || (this.getIndex() == 4) || (this.getIndex() == 2) || (this.getIndex() == 1)) ? -9 : 0,
                           opacity: 1
                        })
                     return{objects : {sseg }};
                  },
                  renderEach() {
                     var enable = ('/top|sseg_pipe_macro$digit'.asBinaryStr().split("").reverse().join(""));
                     this.getInitObject("sseg").bringToFront()
                     var fp_valid = '/top|sseg_pipe_macro$dp'.asBool() == 0
                     if(scopes.led.index == 7)
                     {
                        this.getInitObject("sseg").set(enable[scopes.digit.index] == 0 && fp_valid ? {fill: "red"} : {fill: "grey"})
                     }
                     else {
                        var hamm = ((('/top|sseg_pipe_macro$sseg'.asInt(-1) >> scopes.led.index) & 1) == 0);
                        this.getInitObject("sseg").set(hamm && enable[scopes.digit.index] == 0 ? {fill: "red"} : {fill: "grey"});
                     }
                  }
         '],['
         m4_ifelse_block(M4_BOARD, 4,['
         \viz_alpha
            initEach() {
               let sseg_img_url = "https://user-images.githubusercontent.com/64545984/130668238-5f3cb129-7c02-4a62-96ee-d4e1cc7f6ee0.png"
               let sseg_img = new fabric.Image.fromURL(
                     sseg_img_url,
                     function (img) {
                        global.canvas.add(img)
                        global.canvas.sendToBack(img);
                     },
                     {originX: "center",
                      originY: "center",
                      left: 177,
                      top: 10,
                      scaleX: 0.3,
                      scaleY: 0.3,
                     }
                  )
                let sseg_img2 = new fabric.Image.fromURL(
                     sseg_img_url,
                     function (img) {
                        global.canvas.add(img)
                        global.canvas.sendToBack(img);
                     },
                     {originX: "center",
                      originY: "center",
                      left: 177,
                      top: -145,
                      scaleX: 0.3,
                      scaleY: 0.3,
                     }
                  )
                let seg = new fabric.Rect({
                  top: -60,
                  left: 130,
                  width: 176, 
                  height: 140, 
                  fill: "black",
                  opacity: 1
               })
               let seg1 = new fabric.Rect({
                  top: -215,
                  left: 130,
                  width: 176, 
                  height: 140, 
                  fill: "black",
                  opacity: 1
               })
             return {objects :{seg, seg1}};
             }
         /digit[3:0]
            /led[7:0]
               \viz_alpha
                  initEach() {
                     let sseg = (scopes.led.index == 7) ? new fabric.Circle({
                           top: (scopes.digit.index == 2) || (scopes.digit.index == 3) ? -110 : 42,
                           left: (scopes.digit.index == 0 | scopes.digit.index == 2) ? 270 : 195 ,
                           radius: 4,
                           opacity: 1,
                           fill: "grey"
                        }) 
                        :
                        new fabric.Rect({
                           top: (((scopes.digit.index == 2) || (scopes.digit.index == 3)) ? -160 : -10) + ((scopes.led.index == 5) ? -28 : (scopes.led.index == 4) ? 16 : (scopes.led.index == 3) ? 54 : (scopes.led.index == 2) ? 16 : (scopes.led.index == 1) ? -28 : (scopes.led.index == 0) ? 10 : -30),
                           left: ((scopes.digit.index == 0) || (scopes.digit.index == 2) ? 240 : 165) + ((scopes.led.index == 5) ? 26 : (scopes.led.index == 4) ? 19 : (scopes.led.index == 3) ? -12 : (scopes.led.index == 2) ? -20 : (scopes.led.index == 1) ? -13 : (scopes.led.index == 6) ? 1 : -5),
                           width: ((this.getIndex() == 6) || (this.getIndex() == 3) || (this.getIndex() == 0)) ? 30 : 6,
                           height: ((this.getIndex() == 5) || (this.getIndex() == 4) || (this.getIndex() == 2) || (this.getIndex() == 1)) ? 40 : 6,
                           fill: "grey",
                           skewX: ((this.getIndex() == 5) || (this.getIndex() == 4) || (this.getIndex() == 2) || (this.getIndex() == 1)) ? -9 : 0,
                           opacity: 1
                        })
                     return{objects : {sseg}};
                  },
                  renderEach() {
                     var enable = ('/top|sseg_pipe_macro$digit'.asBinaryStr().split("").reverse().join(""));
                     var dp = ('/top|sseg_pipe_macro$dp'.asBinaryStr());
                     this.getInitObject("sseg").bringToFront()
                     var fp_valid = dp == 0
                     if(scopes.led.index == 7)
                     {
                        this.getInitObject("sseg").set(enable[scopes.digit.index] == 0 && fp_valid ? {fill: "red"} : {fill: "grey"})
                     }
                     else {
                        var hamm = ((('/top|sseg_pipe_macro$sseg'.asInt(-1) >> scopes.led.index) & 1) == 0);
                        this.getInitObject("sseg").set(hamm && (enable[scopes.digit.index] == 0) ? {fill: "red"} : {fill: "grey"});
                     }
                  }
         '],['
         m4_ifelse_block(M4_BOARD, 5,['
         /digit[7:0]
            /led[7:0]
               \viz_alpha
                  initEach() {
                     let sseg = (scopes.led.index == 7) ? new fabric.Circle({
                           top: 119,
                           //left: (scopes.digit.index == 3) ? -122 : (scopes.digit.index == 0) ? -212 : (scopes.digit.index == 1) ? -182 : -152 ,
                           left : ((scopes.digit.index == 7) ? -104 : (scopes.digit.index == 6) ? -79 : (scopes.digit.index == 5) ? -54 : (scopes.digit.index == 4) ? -29 : (scopes.digit.index == 3) ? 6 : (scopes.digit.index == 2) ? 31 : (scopes.digit.index == 1) ? 56 : 81),
                           radius: 2,
                           opacity: 1,
                           fill: "grey"
                        }) 
                        :
                        new fabric.Rect({
                           top: 76 + ((scopes.led.index == 5) ? 19 : (scopes.led.index == 4) ? 32 : (scopes.led.index == 3) ? 43 : (scopes.led.index == 2) ? 32 : (scopes.led.index == 1) ? 19 : (scopes.led.index == 0) ? 30 : 18),
                           left: ((scopes.digit.index == 7) ? -114 : (scopes.digit.index == 6) ? -89 : (scopes.digit.index == 5) ? -64 : (scopes.digit.index == 4) ? -39 : (scopes.digit.index == 3) ? -4 : (scopes.digit.index == 2) ? 21 : (scopes.digit.index == 1) ? 46 : 71) + ((scopes.led.index == 5) ? 10 : (scopes.led.index == 4) ? 8 : (scopes.led.index == 3) ? -4 : (scopes.led.index == 2) ? -8 : (scopes.led.index == 1) ? -6 : (scopes.led.index == 0) ? -2 : -1),
                           width: ((this.getIndex() == 6) || (this.getIndex() == 3) || (this.getIndex() == 0)) ? 12 : 3,
                           height: ((this.getIndex() == 5) || (this.getIndex() == 4) || (this.getIndex() == 2) || (this.getIndex() == 1)) ? 11 : 3,
                           fill: "grey",
                           skewX: ((this.getIndex() == 5) || (this.getIndex() == 4) || (this.getIndex() == 2) || (this.getIndex() == 1)) ? -9 : 0,
                           opacity: 1
                        })
                     return{objects : {sseg}};
                  },
                  renderEach() {
                     var enable = ('/top|sseg_pipe_macro$digit'.asBinaryStr().split("").reverse().join(""));
                     this.getInitObject("sseg").bringToFront()
                     var fp_valid = '/top|sseg_pipe_macro$dp'.asBool() == 0
                     if(scopes.led.index == 7)
                     {
                        this.getInitObject("sseg").set(enable[scopes.digit.index] == 0 && fp_valid ? {fill: "red"} : {fill: "grey"})
                     }
                     else {
                        var hamm = ((('/top|sseg_pipe_macro$sseg'.asInt(-1) >> scopes.led.index) & 1) == 0);
                        this.getInitObject("sseg").set(hamm && enable[scopes.digit.index] == 0 ? {fill: "red"} : {fill: "grey"});
                     }
                  }
         '])
         '])
         '])
         '])
         '])
         '])

