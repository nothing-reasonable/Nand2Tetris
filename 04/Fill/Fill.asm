// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, 
// the screen should be cleared.

//// Replace this comment with your code.

(MainLOOP)
    @KBD
    D=M

    @KEYNOTPRESSED
        D;JEQ

    @KEYPRESSED
        D;JNE

(KEYPRESSED)
    @0
    D=A

    @i
    M=D
    (LOOP)
        @KBD
        D=M

        @KEYNOTPRESSED
            D;JEQ

        @i
        D=M

        @SCREEN
        A=D+A
        M=-1

        @1
        D=D+1

        @i
        M=D

        @LOOP
        0;JMP


(KEYNOTPRESSED)
    @0
    D=A

    @i
    M=D
    (LOOP2)
        @KBD
        D=M

        @KEYPRESSED
            D;JNE

        @i
        D=M

        @SCREEN
        A=D+A
        M=0

        @1
        D=D+1

        @i
        M=D

        @LOOP2
        0;JMP


    

    
