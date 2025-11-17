module ripple_counter(
    input Clock,
    input Reset,
    output light0,
    output light1,
    output light2
);
    
    wire output1;
    
    t_flip_flop A(
        .T(1),
        .Clock(Clock),
        .Reset(Reset),
        .Q(output1),
        .NotQ()
    );
    
    wire output2;
    
    t_flip_flop B(
        .T(1),
        .Clock(output1),
        .Reset(Reset),
        .Q(output2),
        .NotQ()
    );
    
    wire output3;
    
    t_flip_flop C(
        .T(1),
        .Clock(output2),
        .Reset(Reset),
        .Q(output3),
        .NotQ()
    );
    
    assign light0 = output1;
    assign light1 = output2;
    assign light2 = output3;
    
endmodule
