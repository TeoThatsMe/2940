module tcc(doac,dowc,dowcr,mode,wci,done);
  input [7:0] doac,dowc,dowcr;
  input clk,wci;
  input [1:0] mode;
  output reg done;
  
  always @(mode or wci or doac or dowc or dowcr)
    casex({mode,wci})
      3'b00_0:done=(dowc===1);
      3'b00_1:done=(dowc===0);
      
      3'b01_0:done=(dowc+1===dowcr);
      3'b01_1:done=(dowc===dowcr);
      
      3'b10_x:done=(dowc===doac);
      
      3'b11_x:done=1'b0;
    endcase
endmodule
