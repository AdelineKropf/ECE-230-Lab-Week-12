module modulo_divider(
    input Clock,
    input Reset,
    output outBit0,
    output outBit1,
    output outBit2,
    output Q
);
        
    wire bit0;
    wire Y0;
    wire Cout0;
    
    wire bit1;
    wire Y1;
    wire Cout1;
    
    wire bit2;
    wire Y2;
    wire Cout2;
    
    wire shouldReset;
    wire doutLogic;
    wire qOut;

 
    
    full_adder A(
        .A(bit0),
        .B(1'b0),
        .Cin(1'b1),
        .Y(Y0),
        .Cout(Cout0)
    );
    
    d_flip_flop AA(
        .Data(Y0),
        .Clock(Clock),
        .Reset(shouldReset),
        .Q(bit0),
        .NotQ()
    );
    
    full_adder B(
        .A(bit1),
        .B(1'b0),
        .Cin(Cout0),
        .Y(Y1),
        .Cout(Cout1)
    );
    
    d_flip_flop BB(
        .Data(Y1),
        .Clock(Clock),
        .Reset(shouldReset),
        .Q(bit1),
        .NotQ()
    );
    
    full_adder C(
        .A(bit2),
        .B(1'b0),
        .Cin(Cout1),
        .Y(Y2),
        .Cout(Cout2)
    );
    
    d_flip_flop CC(
        .Data(Y2),
        .Clock(Clock),
        .Reset(shouldReset),
        .Q(bit2),
        .NotQ()
    );
    
    assign shouldReset = (bit0 & bit2) ;
    assign doutLogic = shouldReset ^ qOut;
    
    d_flip_flop DD(
        .Data(doutLogic),
        .Clock(Clock),
        .Reset(Reset),
        .Q(qOut),
        .NotQ()
    );
    
    assign outBit0 = bit0;
    assign outBit1 = bit1;
    assign outBit2 = bit2;
    
    assign Q = qOut;
    
endmodule
