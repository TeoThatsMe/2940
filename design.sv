module am2940(address,oeaddr,data,clk,aci,aco,wci,wco,done,instr);
  input [7:0] data;
  input oeaddr,clk,aci,wci;
  input [2:0] instr;
  output [7:0] address;
  output aco,wco,done;
  
  wire cr2,cr1,cr0,plar,plwr,plcr,plac,ena,inca,deca,reswc,plwc,enw,incw,decw,oedata,sela,selw;
  wire [1:0] seldata;
  wire [7:0] doar,domuxa,dowcr,doac,domuxw,dowc,dodm;
  wire [2:0] docr;
  
  decoder decoder_inst(instr,docr,clk,plar,plwr,plcr,plac,ena,inca,deca,reswc,plwc,enw,incw,decw,oedata,sela,selw,seldata);
  
  addrreg addrreg_inst(data,plar,clk,doar);
  mux1x2 mux1x2_addrreg_inst(data,doar,sela,clk,domuxa);
  addrcnt addrcnt_inst(domuxa,plac,ena,inca,deca,clk,aci,aco,doac);
  
  controlreg controlreg_inst(data[2:0],plcr,docr,clk);
  
  wordcntreg wordcntreg_inst(data,plwr,clk,dowcr);
  mux1x2 mux1x2_wordcntreg_inst(data,dowcr,selw,clk,domuxw);
  wordcnt wordcnt_inst(domuxw,plwc,reswc,enw,incw,decw,clk,wci,wco,dowc);
  
  datamux datamux_inst(doac,dowc,{5'b11111,docr},seldata,clk,dodm);
  
  tcc tcc_inst(doac,dowc,dowcr,docr[1:0],wci,done);
  
endmodule