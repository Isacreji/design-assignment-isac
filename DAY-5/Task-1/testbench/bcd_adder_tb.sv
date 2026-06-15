interface bcd_if;
  logic [3:0] a;
  logic [3:0] b;
  logic       cin;
  logic [3:0] sum;
  logic       cout;
endinterface
module tb_bcd_adder;
bcd_if bcd_intf();
  
  bcd_adder dut (
    .a(bcd_intf.a),
    .b(bcd_intf.b),
    .cin(bcd_intf.cin),
    .sum(bcd_intf.sum),
    .cout(bcd_intf.cout)
  );
  initial begin
    
    bcd_intf.a = 4'b0101; 
    bcd_intf.b = 4'b0011; 
    bcd_intf.cin = 0;
    #10; 
    
    
    bcd_intf.a = 4'b1001; 
    bcd_intf.b = 4'b1000; 
    bcd_intf.cin = 0;
    #10;
    
    $finish;
  end
endmodule
