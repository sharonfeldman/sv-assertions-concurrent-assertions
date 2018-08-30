//+++++++++++++++++++++++++++++++++++++++++++++++
//   Testbench Code
//+++++++++++++++++++++++++++++++++++++++++++++++
module concurrent_assertion_tb();

reg clk = 0;
reg reset, req = 0;
wire gnt;

always #3 clk ++;

initial begin
  reset <= 1;
  #20 reset <= 0;
  // Make the assertion pass
  #100 @ (posedge clk) req  <= 1;
  @ (posedge clk) req <= 0;
  // Make the assertion fail
  #100 @ (posedge clk) req  <= 1;
  repeat (5) @ (posedge clk);
  req <= 0;
  #10 $finish;
end

concurrent_assertion dut (clk,req,reset,gnt);

endmodule

//In the above code, all the layers of Concurrent assertions are shown. 
//The basic building blocks are boolean layer, which evaluates to TRUE or FALSE. 
//Sequence is basically built on top of boolean layer. 
//A sequence is the most basic construct for defining any concurrent assertion. 
//Property layer is build on top of sequence layer (Not always). 
//To make a property to be part of a simulation it needs to be used in assert statement. 
//Which basically tells the simulator to test the property for correctness.