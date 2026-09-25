`timescale 1ns / 1ps

module ml1265_LB2_tb;

    // test inputs
    reg [3:0] a_in;
    reg [3:0] b_in;

    // test outputs
    wire [3:0] sum_out;
    wire carry_out;

    // unit under test
    ml1265_LB2 UUT (
        .a(a_in),
        .b(b_in),
        .sum(sum_out),
        .carry(carry_out)
    );

    initial begin

        // test 1: 0 + 0 = 0
        a_in = 4'b0000;
        b_in = 4'b0000;
        #10;

        // test 2: 1 + 1 = 2
        a_in = 4'b0001;
        b_in = 4'b0001;
        #10;

        // test 3: 2 + 1 = 3
        a_in = 4'b0010;
        b_in = 4'b0001;
        #10;

        // test 4: 3 + 3 = 6
        a_in = 4'b0011;
        b_in = 4'b0011;
        #10;

        // test 5: 4 + 3 = 7
        a_in = 4'b0100;
        b_in = 4'b0011;
        #10;

        // test 6: 7 + 1 = 8
        a_in = 4'b0111;
        b_in = 4'b0001;
        #10;

        // test 7: 7 + 7 = 14
        a_in = 4'b0111;
        b_in = 4'b0111;
        #10;

        // test 8: 8 + 8 = 16
        a_in = 4'b1000;
        b_in = 4'b1000;
        #10;

        // test 9: 15 + 1 = 16
        a_in = 4'b1111;
        b_in = 4'b0001;
        #10;

        // test 10: 15 + 15 = 30
        a_in = 4'b1111;
        b_in = 4'b1111;
        #10;

        // test 11: 5 + 3 = 8
        a_in = 4'b0101;
        b_in = 4'b0011;
        #10;

        // test 12: 10 + 5 = 15
        a_in = 4'b1010;
        b_in = 4'b0101;
        #10;

        // test 13: 9 + 6 = 15
        a_in = 4'b1001;
        b_in = 4'b0110;
        #10;

        // test 14: 0 + 15 = 15
        a_in = 4'b0000;
        b_in = 4'b1111;
        #10;

        // test 15: 2 + 14 = 16
        a_in = 4'b0010;
        b_in = 4'b1110;
        #10;

        // test 16: 12 + 3 = 15
        a_in = 4'b1100;
        b_in = 4'b0011;
        #10;

        $finish;

    end

endmodule