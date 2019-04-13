module demultiplexer (
       input    a   ,
       output   b   ,
       output   c   ,
       output   d   ,
       output   e   ,
       output   f   
);

assign  b = sel ? a : 1'b0 ; 
assign  c = sel ? a : 1'b0 ; 
assign  d = sel ? a : 1'b0 ; 
assign  e = sel ? a : 1'b0 ; 
assign  f = sel ? a : 1'b0 ; 


//assign  b = {32{sel} & a : 1'b0 ; 
//assign  c = {32{sel} & a : 1'b0 ; 
//assign  d = {32{sel} & a : 1'b0 ; 
//assign  e = {32{sel} & a : 1'b0 ; 
//assign  f = {32{sel} & a : 1'b0 ; 


endmodule
