module sequence_detector_1010 (
    input clk,
    input rst,
    input din,
    output reg dout
);

    // State Encoding
    parameter S0 = 2'b00, 
              S1 = 2'b01, 
              S2 = 2'b10, 
              S3 = 2'b11;

    reg [1:0] state, next_state;

    // State Register
    always @(posedge clk or posedge rst) begin
        if (rst)
            state <= S0;
        else
            state <= next_state;
    end

    // Next State Logic using if-else
    always @(*) begin
        if (state == S0) begin
            if (din == 1) next_state = S1;
            else          next_state = S0;
        end 
        else if (state == S1) begin
            if (din == 0) next_state = S2;
            else          next_state = S1;
        end 
        else if (state == S2) begin
            if (din == 1) next_state = S3;
            else          next_state = S0;
        end 
        else if (state == S3) begin
            if (din == 0) next_state = S0;  // Pattern matched
            else          next_state = S1;
        end 
        else begin
            next_state = S0;
        end
    end

    // Output Logic
    always @(posedge clk or posedge rst) begin
        if (rst)
            dout <= 1'b0;
        else if (state == S3 && din == 0) // '1010' matched
            dout <= 1'b1;
        else
            dout <= 1'b0;
    end

endmodule
