module decoder(instr,docr,clk,plar,plwr,plcr,plac,ena,inca,deca,reswc,plwc,enw,incw,decw,oedata,sela,selw,seldata);
  input [2:0] instr,docr;
  input clk;
  output reg plar,plwr,plcr,plac,ena,inca,deca,reswc,plwc,enw,incw,decw,oedata,sela,selw;
  output reg [1:0] seldata;

  always @(instr or docr)
    casex({instr,docr})
      6'b000_xxx:{plar,plwr,sela,selw,plcr,seldata,plac,ena,inca,deca,reswc,plwc,enw,incw,decw,oedata}=17'b0_0_0_0_1_00_0_0_0_0_0_0_0_0_0_0;
      
      6'b001_xxx:{plar,plwr,sela,selw,plcr,seldata,plac,ena,inca,deca,reswc,plwc,enw,incw,decw,oedata}=17'b0_0_0_0_0_10_0_0_0_0_0_0_0_0_0_1;
      
      6'b010_xxx:{plar,plwr,sela,selw,plcr,seldata,plac,ena,inca,deca,reswc,plwc,enw,incw,decw,oedata}=17'b0_0_0_0_0_01_0_0_0_0_0_0_0_0_0_1;
      
      6'b011_xxx:{plar,plwr,sela,selw,plcr,seldata,plac,ena,inca,deca,reswc,plwc,enw,incw,decw,oedata}=17'b0_0_0_0_0_00_0_0_0_0_0_0_0_0_0_1;
      
      6'b100_x01:{plar,plwr,sela,selw,plcr,seldata,plac,ena,inca,deca,reswc,plwc,enw,incw,decw,oedata}=17'b0_0_1_0_0_00_1_0_0_0_1_0_0_0_0_0;
      6'b100_x00:{plar,plwr,sela,selw,plcr,seldata,plac,ena,inca,deca,reswc,plwc,enw,incw,decw,oedata}=17'b0_0_1_1_0_00_1_0_0_0_0_1_0_0_0_0;
      6'b100_x10:{plar,plwr,sela,selw,plcr,seldata,plac,ena,inca,deca,reswc,plwc,enw,incw,decw,oedata}=17'b0_0_1_1_0_00_1_0_0_0_0_1_0_0_0_0;
      6'b100_x11:{plar,plwr,sela,selw,plcr,seldata,plac,ena,inca,deca,reswc,plwc,enw,incw,decw,oedata}=17'b0_0_1_1_0_00_1_0_0_0_0_1_0_0_0_0;
      
      6'b101_xxx:{plar,plwr,sela,selw,plcr,seldata,plac,ena,inca,deca,reswc,plwc,enw,incw,decw,oedata}=17'b1_0_0_0_0_00_1_0_0_0_0_0_0_0_0_0;
      
      6'b110_x01:{plar,plwr,sela,selw,plcr,seldata,plac,ena,inca,deca,reswc,plwc,enw,incw,decw,oedata}=17'b0_1_0_0_0_00_1_0_0_0_1_0_0_0_0_0;
      6'b110_x00:{plar,plwr,sela,selw,plcr,seldata,plac,ena,inca,deca,reswc,plwc,enw,incw,decw,oedata}=17'b0_1_0_0_0_00_0_0_0_0_0_1_0_0_0_0;
      6'b110_x10:{plar,plwr,sela,selw,plcr,seldata,plac,ena,inca,deca,reswc,plwc,enw,incw,decw,oedata}=17'b0_1_0_0_0_00_0_0_0_0_0_1_0_0_0_0;
      6'b110_x11:{plar,plwr,sela,selw,plcr,seldata,plac,ena,inca,deca,reswc,plwc,enw,incw,decw,oedata}=17'b0_1_0_0_0_00_0_0_0_0_0_1_0_0_0_0;
      
      6'b111_010:{plar,plwr,sela,selw,plcr,seldata,plac,ena,inca,deca,reswc,plwc,enw,incw,decw,oedata}=17'b0_0_0_0_0_00_0_1_1_0_0_0_0_0_0_0;
      6'b111_110:{plar,plwr,sela,selw,plcr,seldata,plac,ena,inca,deca,reswc,plwc,enw,incw,decw,oedata}=17'b0_0_0_0_0_00_0_1_0_1_0_0_0_0_0_0;
      6'b111_000:{plar,plwr,sela,selw,plcr,seldata,plac,ena,inca,deca,reswc,plwc,enw,incw,decw,oedata}=17'b0_0_0_0_0_00_0_1_1_0_0_0_1_0_1_0;
      6'b111_100:{plar,plwr,sela,selw,plcr,seldata,plac,ena,inca,deca,reswc,plwc,enw,incw,decw,oedata}=17'b0_0_0_0_0_00_0_1_0_1_0_0_1_0_1_0;
      6'b111_001:{plar,plwr,sela,selw,plcr,seldata,plac,ena,inca,deca,reswc,plwc,enw,incw,decw,oedata}=17'b0_0_0_0_0_00_0_1_1_0_0_0_1_1_0_0;
      6'b111_101:{plar,plwr,sela,selw,plcr,seldata,plac,ena,inca,deca,reswc,plwc,enw,incw,decw,oedata}=17'b0_0_0_0_0_00_0_1_0_1_0_0_1_1_0_0;
      6'b111_011:{plar,plwr,sela,selw,plcr,seldata,plac,ena,inca,deca,reswc,plwc,enw,incw,decw,oedata}=17'b0_0_0_0_0_00_0_1_1_0_0_0_1_1_0_0;
      6'b111_111:{plar,plwr,sela,selw,plcr,seldata,plac,ena,inca,deca,reswc,plwc,enw,incw,decw,oedata}=17'b0_0_0_0_0_00_0_1_0_1_0_0_1_1_0_0;
      
    endcase
endmodule