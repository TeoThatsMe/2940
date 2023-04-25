module controlreg(data,plcr,out,clk);
  input [2:0] data;
  input plcr,clk;
  output reg [2:0] out;
  
  always @(posedge clk)
    if(plcr)
      out=data;
endmodule