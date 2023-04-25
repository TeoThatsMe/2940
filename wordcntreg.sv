module wordcntreg(din,plwcr,clk,dowcr);
  input [7:0] din;
  input plwcr,clk;
  output reg [7:0] dowcr;
  
  always @(posedge clk)
    if(plwcr)
      dowcr=din;
  
endmodule