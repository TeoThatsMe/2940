module test;
  reg [7:0] data;
  reg [2:0] instr;
  reg oeaddr,clk,aci,wci;
  wire [7:0] address;
  wire aco,wco,done;
  
  am2940 am2940_inst(address,oeaddr,data,clk,aci,aco,wci,wco,done,instr);
  
  
  initial
    begin
      #0 clk=1'b0;
      forever #5 clk=~clk;
    end
  
  initial
    #500 $finish;
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
    end
  
  initial
    begin
      #0 data=8'b0;instr=3'b0;oeaddr=1'b0;aci=1'b0;wci=1'b0;instr=3'b001;
      #10 instr=3'b000;
      #10 data=8'b01100011;instr=3'b110;
      #10 data=8'b01101100;instr=3'b101;
      #10 instr=3'b111;
      #60 instr=3'b010;
      #10 instr=3'b011;
      #10 instr=3'b100;
      #10 instr=3'b010;
      #10 instr=3'b011;
    end
  
  
endmodule