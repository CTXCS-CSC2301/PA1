	@-----------------
	@	  CSC2301 PA 1-1,
	@	  This code computes 6*x - 7.
	@         You must make it compute: 2*x^2 - 5*x + 3
        @         R1 contains intial val, R3 contains final result.
	@------------------
	.extern printf
	.global main
	.func main
	@	  Setup the value we are going to compute on
	@	  You should only change x for testing purposes
main:	PUSH	{LR}
	LDR	R1, =x    @  Load address of x
	LDR	R1, [R1]  @  x is now in R1
	@------------------
	@   Your modifcations go here
	@------------------
	MOV	R2, #6      @  Load the value 6 into R2
	MUL	R3, R1, R2  @  The value 6*x is now in R3
	MOV	R2, #7	    @  Load the value of 7 into R2
	SUB	R3, R3, R2  @  R3 now contains the result 6x - 7
	@------------------
	@    Don't modify the rest of this code!
	@------------------
	LDR 	R0, =out    @ Grab address of string for printf
	MOV	R1, R3	    @ Copy result into correct register
	BL 	printf
	POP	{PC}

	
	.data
x:	.word 19
out:	.asciz "%d\n"
