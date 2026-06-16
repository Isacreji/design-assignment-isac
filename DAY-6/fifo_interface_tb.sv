module tb_fifo;
    logic clk;
    logic rst_n;
    logic wr_en;
    logic rd_en;
    logic [7:0] data_in;
    logic [7:0] data_out;
    logic full;
    logic empty;

    fifo dut (
        .clk(clk), .rst_n(rst_n), .wr_en(wr_en), .rd_en(rd_en),
        .data_in(data_in), .data_out(data_out), .full(full), .empty(empty)
    );

    always #5 clk = ~clk;

    initial begin
        fifo_transaction tr;
        tr = new();

        clk = 0;
        rst_n = 0;
        wr_en = 0;
        rd_en = 0;
        data_in = 0;

        #10 rst_n = 1; 

        $display("--- Starting FIFO Test ---");

        for (int i=0; i<10; i++) begin
            if (!tr.randomize()) $display("Randomization failed!");

            wr_en = tr.wr_en;
            rd_en = tr.rd_en;
            data_in = tr.data_in;

            @(posedge clk); 
            #1; 

            tr.data_out = data_out;
            tr.full = full;
            tr.empty = empty;

            tr.display($sformatf("Trans %0d", i+1));
        end

        #20 $display("--- End of Test ---");
        $finish;
    end
endmodule
