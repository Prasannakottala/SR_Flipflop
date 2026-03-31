// Code your design here
module sr_ff(s,r,clk,rst,q,qbar);
  input s,r,clk,rst;
  output reg q;
  output reg qbar;
  always @(posedge clk or posedge rst) begin;
    if (rst) begin
    q<=0;
     qbar<=1;
    end
     begin
       if (s==0 && r==0) 
    q<=q;
       else if (s==1 && r==0)
    q<=1;
       else if (s==0 && r==1)
    qbar<=0;
      else 
        q<=qbar;
    end
    assign qbar =~q;
  end
endmodule

      
      
      