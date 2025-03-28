// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
// The algorithm is based on repetitive addition.

//// Replace this comment with your code.
@R2
M=0
@R0
D=M
@R1
D=D-M
@R0gtR1
D;JGT
@R0
D=M
@gt
M=D
@R1
D=M
@lt
M=D
(R0gtR1)
    @R1
    D=M
    @gt
    M=D
    @R0
    D=M
    @lt
    M=D

(LOOP)
    @lt
    DM=M-1

    @exit
    D;JLT

    @gt
    D=M

    @R2
    M=D+M

    @lt
    D=M

    @LOOP
    D;JGT

(exit)
    @exit
    0;JMP


