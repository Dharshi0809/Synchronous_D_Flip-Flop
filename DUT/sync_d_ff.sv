module syn_d_ff(reset,clk,d,q);
  input wire clk,reset,d;
  output reg q;
  always@(posedge clk)begin
    if(reset)
      q<=1'b0;
    else
      q<=d;
  end
endmodule
