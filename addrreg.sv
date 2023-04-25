module addrreg(din,plar,clk,doar);
  input [7:0] din;
  input plar,clk;
  output reg [7:0] doar;
  
  always @(posedge clk)
    if(plar)
      doar=din;
  
endmodule