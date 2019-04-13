module test (
    input  a ,
    input  b ,
    output c 
);

assign c = a + b ;


//test logic 
reg  [15 :0] test_cnt ;
always @ (posedge mclk or negedge mreset_n)
begin
    if (!mreset_n)
        test_cnt <= 16'b0 ;
    else
        test_cnt <= test_cnt + 16'b1 ;
end

reg  [3 :0]  state , state_nxt ;
always @ (posedge mclk or negedge mreset_n)
begin
    if (!mreset_n)
        state <= IDLE ;
    else 
        state <= state_nxt ;
end

always @ (*)
begin
    case (state)
    4'd1 : 
          if (a)
              state = 4'd2 ;
          else 
              state = 4'd1 ;
    4'd2 :
          if (a)
              state = 4'd2 ;
          else 
              state = 4'd1 ;
    4'd3 :
          if (a)
              state = 4'd2 ;
          else 
              state = 4'd1 ;
    4'd4 :
          if (a)
              state = 4'd2 ;
          else 
              state = 4'd1 ;
    4'd5 :
    default : state = 4'd1 ;
end











always @ (posedge mclk or negedge mreset_n)
begin

end

always @ (posedge mclk or negedge mreset_n)
begin

end




endmodule
