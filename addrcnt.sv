module addrcnt(data,plac,ena,inca,deca,clk,aci,aco,doac);
  input [7:0] data;
  input plac,ena,inca,deca,clk,aci;
  output aco;
  output reg [7:0] doac;
  
  always @(posedge clk)
    begin
      if(plac)
      doac=data;
  else
    if(ena)
      if(inca && ~aci)
        begin
          doac=doac+1;
        end
  else
    if(deca)
      begin
        if(doac==8'b0 && aci==1'b0)
          doac=doac-1;
        else
          if(doac!=8'b0)
            doac=doac-1;
      end
      
    end

  assign aco = (~((doac===8'hff) && inca && ena)) && (~((doac===8'h00) && deca && ena)) || aci;
endmodule