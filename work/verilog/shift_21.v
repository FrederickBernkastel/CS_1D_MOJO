/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module shift_21 (
    input [7:0] a,
    input [7:0] b,
    input [5:0] alufn,
    output reg [7:0] out
  );
  
  
  
  integer i;
  
  always @* begin
    
    case (alufn[0+1-:2])
      2'h0: begin
        out = a << b[0+2-:3];
      end
      2'h1: begin
        out = a >> b[0+2-:3];
      end
      2'h3: begin
        for (i = 1'h0; i < 4'h8; i = i + 1) begin
          if (i < 4'h8 - b) begin
            out[(i)*1+0-:1] = a[(i + b[0+2-:3])*1+0-:1];
          end else begin
            out[(i)*1+0-:1] = a[7+0-:1];
          end
        end
      end
      default: begin
        out = 8'h00;
      end
    endcase
  end
endmodule
