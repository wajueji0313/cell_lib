module cnt (
input  a   ,
input  a   ,
input  a   ,
input  a   ,
input  a   ,
input  a   ,
);

//  ==============================================

reg  [15 :0] cnt  ;
always @ (posedge mclk or negedge mreset_n)
begin
    if (!mreset_n)
        cnt <= 16'b0 ;
    else if (cnt == 16'd65535)
        cnt <= 16'b0 ;
    else if (condition_0)
        cnt <= 16'b0 ;
    else if (condition_1)
        cnt <= 16'b0 ;
    else
        cnt <= cnt + 16'b1 ;
end

// ===============================================\
wire cnt_r  ;
wire cnt_value = cnt + 16'b1 ; 
assign cnt_r = (cnt_value == 16'd65535) ? 16'b0 ; 
              :(condition_0) ? 16'b0 ;
              :(condition_1) ? 16'b0 ;
              : cnt_value ;

reg  [15 :0] dff_r  ;
always @ (posedge mclk or negedge mreset_n)
begin
    if (!mreset_n)
        dff_r <= 16'b0 ;
    else
        dff_r <= cnt_r;
end

endmodule  
