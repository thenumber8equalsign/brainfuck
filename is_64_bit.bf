# This one was written by yours truly
# me thenumber8equalsign
# on my t480
# it takes a whole minute in 32 bit mode with optimization and abort overflow
# 5 minutes in 64 bit mode with optimization and abort overflow

# Calculate 256
++++++++[>++++++++<-] # put 64 in cell 1 0 in cell 0
>[<++++>-]< # multiply cell 1 by 4 while moving it to cell 0

# square now it is 2 ** 16
>[-]>[-]<<
[>+<-]
>[-[>+<<++>-]<+>>[<+>-]<]<

# square again now it is 2 ** 32
# note this takes a very very long time
>[-]>[-]<<
[>+<-]
>[-[>+<<++>-]<+>>[<+>-]<]<

>>>+<<<
[
	# 2 ** 32 is not 0 therefore we must be in a 64 bit environment
	++++++[>++++++++<-]
	>[<+>-]<
	++++++.--.
	[-]

	>>>-<<<
]
>>>[

	# not 64 bit
	[-]>[-]<
	++++++++++[>+++++++++++<-] # load 'n'
	>[<+>-]<
	.
	+.
	+++++.
	[-]
	++++++++[>++++<-]
	>[<+>-]<
	.
	++++++++++++++++++++++.
	--.
	[-]>[-]<

]<<<

[-]
++++++++++.
