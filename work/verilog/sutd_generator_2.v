/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module sutd_generator_2 (
    input clk,
    input rst,
    input reset_button,
    output reg [15:0] out
  );
  
  
  
  reg [27:0] M_counter_d, M_counter_q = 1'h0;
  
  always @* begin
    M_counter_d = M_counter_q;
    
    if (reset_button) begin
      M_counter_d = 1'h0;
    end
    
    case (M_counter_q[25+2-:3])
      1'h0: begin
        out = 16'hfc3f;
      end
      1'h1: begin
        out = 16'hf999;
      end
      2'h2: begin
        out = 16'h666f;
      end
      2'h3: begin
        out = 16'h7997;
      end
      default: begin
        out = 16'hffff;
      end
    endcase
    M_counter_d = M_counter_q + 1'h1;
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_counter_q <= 1'h0;
    end else begin
      M_counter_q <= M_counter_d;
    end
  end
  
endmodule
