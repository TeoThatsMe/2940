module mux1x2(din1,din2,sel,clk,out);
  input [7:0] din1,din2;
  input sel,clk;
  output [7:0] out;
  
  /*
  always @(posedge clk)
    if(sel)
      out=din2;
  else
    out=din1;
*/
  assign out=( sel ? din2 : din1);
  
endmodule