module ml1265_LB2 (
    input [3:0] a,
    input [3:0] b,
    output [3:0] sum,
    output carry
);
    wire c1, c2, c3; // carry wires between full adders
    // half adder then full adders for 4-bit addition
    half_adder ha0 (
        .A(a[0]),
        .B(b[0]),
        .S(sum[0]),
        .C(c1)
    );

    full_adder fa1 (
        .X(a[1]),
        .Y(b[1]),
        .Cin(c1),
        .Sum(sum[1]),
        .Cout(c2)
    );

    full_adder fa2 (
        .X(a[2]),
        .Y(b[2]),
        .Cin(c2),
        .Sum(sum[2]),
        .Cout(c3)
    );

    full_adder fa3 (
        .X(a[3]),
        .Y(b[3]),
        .Cin(c3),
        .Sum(sum[3]),
        .Cout(carry)
    );
endmodule