module mux (
       input  a  ,
       input  b  ,
       input  c  ,
       input  d  ,
       input  e  ,
       output f
);

assign  f = sel ? a 
           :sel ? b
           :sel ? c
           :sel ? d
           :sel ? e
           :1'b0 ;

assign f = sel & a 
          :sel & b 
          :sel & c 
          :sel & d 
          :sel & e
          : 1'b0 ;

assign f = {32{sel} & a 
          :{32{sel} & b 
          :{32{sel} & c 
          :{32{sel} & d 
          :{32{sel} & e
          : 1'b0 ;


reg  [15 :0]  test_r ;
always @ (posedge mclk or negedge mreset_n)
begin
    if (!mreset_n)
        test_r <= 16'b0 ;
    else
        test_r <= f ;
end

 
endmodule 
