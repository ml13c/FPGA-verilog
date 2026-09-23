module full_adder (
    input X,
    input Y,
    input Cin,
    output Sum,
    output Cout
);
    assign Sum = X ^ Y ^ Cin; // Sum is the XOR of inputs
    assign Cout = (X & Y) | (Cin & (X ^ Y)); // carry out is generated if any two inputs are high so (8+8=16;C = 1)
endmodule
/*
REMEMBER
VHDL      Verilog
xor        ^
and        &
or         |
<=          assign ... = ...
entity     module
end entity  endmodule
*/