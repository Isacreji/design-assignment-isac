module decoder_4x2_tb;
    reg [3:0] in;
    wire [1:0] out;

    decoder_4x2 uut (
        .in(in),
        .out(out)
    );

    initial begin
        in = 4'b0001; #10;
        in = 4'b0010; #10;
        in = 4'b0100; #10;
        in = 4'b1000; #10;
        in = 4'b0000; #10;
        $finish;
    end
    
    initial begin
        $monitor("Time=%0t | in=%b | out=%b", $time, in, out);
    end
endmodule
