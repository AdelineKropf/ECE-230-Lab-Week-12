module full_adder(
    //declare inputs
    input A, B, Cin,
    //declare outputs
    output Y, Cout
);

assign Y = (A ^ B) ^ Cin;
assign Cout = (A & B) | (B & Cin) | (A & Cin);

endmodule
