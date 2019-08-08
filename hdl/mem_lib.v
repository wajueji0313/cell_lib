
//  mem description

module ram_16384x39
  ( input  CLK,
    input  [13:0] ADR,
    input  [38:0] D,

    output reg [38:0] Q,
    input  WE );

   // behavior to be replaced by actual SRAM in VLE

   reg [38:0]   ram_core [16383:0];

   always @(posedge CLK) begin
      if (WE) begin// for active high WE - must be specified by user
         ram_core[ADR] <= D; Q <= 'x; 
      end else
           Q <= ram_core[ADR];
   end





















