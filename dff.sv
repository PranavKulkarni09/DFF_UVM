module dff(clk, rst, din, dout);
  input clk, rst, din;
  output reg dout;
  always@(posedge clk)
    begin
      if(rst)
        dout<=0;
      else
        dout<=din;
    end
endmodule

interface dff_if;
  logic clk, rst, din; //input
  logic dout; //output
endinterface
