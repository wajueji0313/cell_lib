module test (

);

reg  [7 :0]  test_cnt  ;
always @ (posedge mclk or negedge mreset_n)
begin
    if (!mreset_n)
        test_cnt          <=  8'b0 ;
    else 
        test_cnt          <=  test_cnt + 8'b1 ;
end

endmodule
