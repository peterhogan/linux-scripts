#PURPOSE: Simple program that exits and returns a status code back to the linux kernel
#
#

#INPUT: None

#OUTPUT: Returns a status code, this can be viewed by typing 
#
#  	echo $?
# After running the program
#
#VARIABLE 
#	%eax holds the system call number
#	%ebx holds the return status
.section .data

.section .text
.globl _start
_start:
movl $1, %eax		# this is the linux kernel command number
			# (system call) for exiting a program

movl $23, %ebx		# this is the status number we will return to the 
addl $5, %ebx			# operating system. Change this around and it will 
			# return different things to echo $?

#int $0x80		# this wakes up the kernel to run the exit command
