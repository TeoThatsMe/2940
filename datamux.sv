module datamux(in1,in2,in3,seldata,clk,out);
  input [7:0] in1,in2,in3;
  input clk;
  input [1:0] seldata;
  output [7:0] out;
  
  assign out= ((seldata==2'b00) ? in1 : ((seldata==2'b01) ? in2 : in3));
  
endmodule