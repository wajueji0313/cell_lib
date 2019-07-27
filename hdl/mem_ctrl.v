module mem_ctrl(

):




always @ (posedge mclk or negedge mreset_n)
begin
    if (!mreset_n)
       test_r            <=   8'b0 ;
    else 
        test_r           <=   dat_in ;
end

endmodule
