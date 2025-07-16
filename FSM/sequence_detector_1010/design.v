module seq_det(input clk, reset, x,
               output reg out);

  parameter s0 = 2'b00; 
  parameter s1 = 2'b01;
  parameter s2 = 2'b10;
  parameter s3 = 2'b11;

  reg [1:0] present_state, next_state;

  always @(posedge clk or negedge reset) begin
    if (!reset)
      present_state <= s0;
    else
      present_state <= next_state;
  end
  always @(*) begin
    case (present_state)
      s0: begin
        if (x == 0) begin
          next_state = s0;
          out = 0;
        end else begin
          next_state = s1;
          out = 0;
        end
      end

      s1: begin
        if (x == 0) begin
          next_state = s2;
          out = 0;
        end else begin
          next_state = s1;
          out = 0;
        end
      end

      s2: begin
        if (x == 0) begin
          next_state = s0;
          out = 0;
        end else begin
          next_state = s3;
          out = 0;
        end
      end

     s3: begin
        if (x == 0) begin
          next_state = s2;
          out = 1; 
        end else begin
          next_state = s1;
          out = 0;
        end
      end

      default: begin
        next_state = s0;
        out = 0;
      end
    endcase
  end

endmodule
