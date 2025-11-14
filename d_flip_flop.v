module d_flip_flop(
    input Data,
    input Clock,
    input Reset,
    output reg Q,
    output NotQ
    );
        
    initial begin
        Q <= 0;
    end
    
    always @(posedge Clock) 
        if (Reset)
            Q <= 0; 
        else
            Q <= Data;
        
    assign NotQ = ~Q;

endmodule
