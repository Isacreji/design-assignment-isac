module tb_sr_flipflop();

    reg clk;
    reg s;
    reg r;
    wire q;
    wire q_bar;

    sr_flipflop DUT (
        .clk(clk),
        .s(s),
        .r(r),
        .q(q),
        .q_bar(q_bar)
    );

    always #5 clk = ~clk; 

    initial begin
        clk = 0; s = 0; r = 0;
        
        #10 s = 1; r = 0; 
        #10 s = 0; r = 0; 
        #10 s = 0; r = 1; 
        #10 s = 0; r = 0; 
        #10 s = 1; r = 1; 
        
        #10 $finish;
    end

endmodule
