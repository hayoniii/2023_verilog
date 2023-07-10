module ring_counter(
    input clk,
    input n_rst,
    output reg [3:0] out
);

always @(posedge clk or negedge n_rst) begin
    if(!n_rst)
        out = 4'b0001;
    else
        out = {out[2:0], out[3]};
end

endmodule