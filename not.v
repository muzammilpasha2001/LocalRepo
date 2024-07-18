module mynot(a,out);
input a;
output out;
assign out=~a;
endmodule


module tb;
reg a;
wire out;
mynot dut(a,out);
initial
begin 
$monitor($time, "a=%b,out=%b", a,out);
$display("this is a test");
$display("this is a testbench");
a=1'b1;
#10 
a=1'b0;
#10
end 
endmodule