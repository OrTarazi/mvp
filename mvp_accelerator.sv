module mvp_accelerator (
    input logic [31:0] data_in,
    input logic enable,
    output logic [31:0] data_out
);
    always_comb begin 
        if (enable) begin
            data_out = data_in[31:24] * data_in[15:8] + data_in[23:16] * data_in[7:0];
        end
        else data_out = 32'd0;
    end
    

endmodule
