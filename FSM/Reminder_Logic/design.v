module rem3(input clk, reset, x,
            output reg [1:0] out);

  parameter a = 2'b00; 
  parameter b = 2'b01; 
  parameter c = 2'b10; 

  reg [1:0] p_state, n_state;

  always @(posedge clk) begin
    if (reset)
      p_state <= a;
    else
      p_state <= n_state;
  end

  always @(*) begin
    case (p_state)
      a: begin
        if (x == 0) begin
          n_state = a;
          out = 2'b00;
        end else begin
          n_state = b;
          out = 2'b01;
        end
      end

      b: begin
        if (x == 0) begin
          n_state = c;
          out = 2'b10;
        end else begin
          n_state = a;
          out = 2'b00;
        end
      end

      c: begin
        if (x == 0) begin
          n_state = b;
          out = 2'b01;
        end else begin
          n_state = c;
          out = 2'b10;
        end
      end

      default: begin
        n_state = a;
        out = 2'b00;
      end
    endcase
  end

endmodule
