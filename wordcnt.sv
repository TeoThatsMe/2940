module wordcnt(data,plwc,reswc,enw,incw,decw,clk,wci,wco,dowc);
  input [7:0] data;
  input plwc,reswc,enw,incw,decw,clk,wci;
  output wco;
  output reg [7:0] dowc;
  
  always @(posedge clk)
    begin
    if(reswc)
      dowc=8'b0;
  else
    if(plwc)
      dowc=data;
  else
    if(enw)
      if(incw && ~wci)
        begin
          dowc=dowc+1;
        end
  else
    if(decw)
      begin
        if(dowc==8'b0 && wci==1'b0)
          dowc=dowc-1;
        else
          if(dowc!=8'b0)
            dowc=dowc-1;
      end
      
    end
  
  assign wco = (~((dowc===8'hff) && incw && enw)) && (~((dowc===8'h00) && decw && enw)) || wci;

endmodule