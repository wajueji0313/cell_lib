module fsm ();


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


endmodule
