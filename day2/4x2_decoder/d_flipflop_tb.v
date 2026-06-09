module tb_d_flipflop();

    reg clk;
    reg d;
    wire q;
    wire q_bar;

    d_flipflop DUT (
        .clk(clk),
        .d(d),
        .q(q),
        .q_bar(q_bar)
    );

    always #5 clk = ~clk; 

    initial begin
        clk = 0; d = 0;
        
        #10 d = 1; 
        #10 d = 0; 
        #10 d = 1; 
        #15 d = 0; 
        
        #10 $finish;
    end

endmodule
