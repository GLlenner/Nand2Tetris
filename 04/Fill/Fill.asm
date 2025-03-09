// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, 
// the screen should be cleared.

//// Replace this comment with your code.


    @8196
    D=A

    @n
    M=D     //n==8196

    @screen
    D=M

    @arr
    M=D
(LOOP)
    @keyboard
    D=M

    @i
    M=0

    @ZERO
    D;JEQ

    (POSITIVE)
        @i
        D=M
        @n
        D=D-M

        @LOOP
        D;JEQ

        @i
        D=M

        @arr
        A=D+M
        M=-1

        @i
        M =M+1

        @POSITIVE
        0;JMP

    (ZERO)
        @i
        D=M
        @n
        D=D-M

        @LOOP
        D;JEQ

        @i
        D=M

        @arr
        A=D+M
        M=0

        @i
        M =M+1

        @ZERO
        0;JMP


    


    