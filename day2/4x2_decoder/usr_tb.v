module tb_usr();

    reg Clk;
    reg rst;
    reg Sin;
    reg [3:0] Pin;
    reg shift;
    reg load;
    reg [1:0] mod;
    wire Sout;
    wire [3:0] Pout;

    usr DUT (
        .Clk(Clk), .rst(rst), .Sin(Sin), .Pin(Pin),
        .shift(shift), .load(load), .mod(mod),
        .Sout(Sout), .Pout(Pout)
    );

    always #5 Clk = ~Clk;

    initial begin
        Clk = 0; rst = 1; Sin = 0; Pin = 0; shift = 0; load = 0; mod = 0;
        #10 rst = 0;

        mod = 2'b11; Pin = 4'b1010; load = 1;
        #10 load = 0; 
        
        mod = 2'b00; shift = 1; Sin = 1;
        #30 shift = 0; Sin = 0;

        mod = 2'b10; Pin = 4'b1100; load = 1;
        #10 load = 0; shift = 1; 
        #40 shift = 0;

        #10 $finish;
    end

endmodule
