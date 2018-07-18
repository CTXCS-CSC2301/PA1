	@-----------------
	@	  CSC2301 PA 1-2,
	@	  You will use scanf to read an integer (x) from the user
	@         Then you will compute 2*x, 3*x, 4*x, 5*x, and 6*x.
	@         Those values you will put into R2, R3, R4, R5, and R6
	@	  R1 must contain the value x.
	@------------------
	.extern printf
	.extern scanf
	.global main
	.func main
main:	PUSH	{LR}
	@-------------------
	@ Your code starts here
	@-------------------
   	   @  Load address of 'in' into R0
	   @  Load address of 'x' into R1
	   @  call scanf
	   @  Load address of 'x' into R1
	LDR	R1, [R1]  @  Given to you.  Now value of x in R1
	   @  compute 2x and store in R2
	   @  compute 3x and store in R3
	   @  compute 4x and store in R4
	   @  compute 5x and store in R5
	   @  compute 6x and store in R6

	@------------------
	@    Don't modify the rest of this code!
	@------------------
	LDR 	R0, =out    @ Grab address of string for printf
	PUSH	{R4-R6}
	BL 	printf
	POP	{R4-R6}
	POP	{PC}

	
	.data
x:	.word 0
out:	.asciz "x=%d, 2x=%d, 3x=%d, 4x=%d, 5x=%d, 6x=%d\n"
in:	.asciz "%d"
