module d_flipflop (
    input clk,
    input d,
    output reg q,
    output q_bar
);

    assign q_bar = ~q;

    always @(posedge clk) begin
        q <= d;
    end

endmodule
