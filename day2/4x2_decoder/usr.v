module usr (
    input Clk,
    input rst,
    input Sin,
    input [3:0] Pin,
    input shift,
    input load,
    input [1:0] mod,
    output Sout,
    output [3:0] Pout
);

    reg [3:0] q;

    assign Pout = q;
    assign Sout = q[0];

    always @(posedge Clk or posedge rst) begin
        if (rst) begin
            q <= 4'b0000;
        end else begin
            case (mod)
                2'b00: begin
                    if (shift) q <= {Sin, q[3:1]};
                end
                2'b01: begin
                    if (shift) q <= {Sin, q[3:1]};
                end
                2'b10: begin
                    if (load)       q <= Pin;
                    else if (shift) q <= {1'b0, q[3:1]};
                end
                2'b11: begin
                    if (load) q <= Pin;
                end
            endcase
        end
    end

endmodule
