/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module random_led_generator_3 (
    input clk,
    input rst,
    input randomize_trigger,
    output reg [15:0] leds
  );
  
  
  
  reg [3:0] M_randomize_d, M_randomize_q = 1'h0;
  
  reg [15:0] M_leds_mem_d, M_leds_mem_q = 16'ha5a5;
  
  always @* begin
    M_randomize_d = M_randomize_q;
    M_leds_mem_d = M_leds_mem_q;
    
    M_randomize_d = M_randomize_q + 1'h1;
    if (randomize_trigger) begin
      
      case (M_randomize_q[0+3-:4])
        4'h0: begin
          M_leds_mem_d = 16'hf0f0;
        end
        4'h1: begin
          M_leds_mem_d = 16'hcccc;
        end
        4'h2: begin
          M_leds_mem_d = 16'haaaa;
        end
        4'h3: begin
          M_leds_mem_d = 16'he172;
        end
        4'h4: begin
          M_leds_mem_d = 16'hc972;
        end
        4'h5: begin
          M_leds_mem_d = 16'hcb32;
        end
        4'h6: begin
          M_leds_mem_d = 16'hd2d2;
        end
        4'h7: begin
          M_leds_mem_d = 16'hd2b4;
        end
        4'h8: begin
          M_leds_mem_d = 16'h0b4f;
        end
        4'h9: begin
          M_leds_mem_d = 16'h4b4d;
        end
        4'ha: begin
          M_leds_mem_d = 16'h0d67;
        end
        4'hb: begin
          M_leds_mem_d = 16'h0d6d;
        end
        4'hc: begin
          M_leds_mem_d = 16'hf20d;
        end
        4'hd: begin
          M_leds_mem_d = 16'hf264;
        end
        4'he: begin
          M_leds_mem_d = 16'hb54a;
        end
        default: begin
          M_leds_mem_d = 16'ha5a5;
        end
      endcase
    end else begin
      M_leds_mem_d = (M_leds_mem_q << 1'h1) + M_leds_mem_q[15+0-:1];
    end
    leds = M_leds_mem_q;
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_leds_mem_q <= 16'ha5a5;
    end else begin
      M_leds_mem_q <= M_leds_mem_d;
    end
  end
  
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_randomize_q <= 1'h0;
    end else begin
      M_randomize_q <= M_randomize_d;
    end
  end
  
endmodule
