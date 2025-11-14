module top(
    input btnC,
    input btnU,
    output [6:0] led
    );
    
    ripple_counter A(
        .Clock(btnC),
        .Reset(btnU),
        .light0(led[0]),
        .light1(led[1]),
        .light2(led[2])
    );
    
    modulo_divider B(
        .Clock(btnC),
        .Reset(btnU),
        .outBit0(led[3]),
        .outBit1(led[4]),
        .outBit2(led[5]),
        .Q(led[6])
    );
    
endmodule
