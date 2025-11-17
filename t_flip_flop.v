module t_flip_flop(
    input T,
    input Clock,
    input Reset,
    output Q,
    output NotQ
);
       
    wire jk_flip_flop_Q;    
    wire jk_flip_flop_NotQ;    
        
    jk_flip_flop Use(
        .J(T),
        .K(T),
        .Clock(Clock),
        .Reset(Reset),
        .Q(jk_flip_flop_Q),
        .NotQ(jk_flip_flop_NotQ)
    ); 

    assign Q = jk_flip_flop_Q;
    assign NotQ = jk_flip_flop_NotQ;

endmodule
