			.data
msg_1:		.asciiz "ferferf"

			.text
			.globl main
main:
	
	sw $fp, -4($sp)
	sw $ra, -8($sp)
	sw $s0, -12($sp)
	move $s0, $a0
	move $fp, $sp
	sub $sp, $sp, 16
	li $v0 ,4
	la $a0, msg_1
	syscall
finFunc_main: 
	add $sp, $sp, 16
	lw $s0, -12($fp)
	sw $fp, -8($sp)
	sw $ra, -4($sp)
	jr $ra
