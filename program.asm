			.data
msg_1:		.asciiz"ferferf"
msg_2:		.asciiz"ferferf"
msg_3:		.asciiz"ferferf"
msg_4:		.asciiz"HELLO"
c:			.space '1'
g			.WORD 0

			.text
			
suma:
	
	sw $fp, -4($sp)
	sw $ra, -8($sp)
	sw $s0, -12($sp)
	move $s0, $a0
	move $fp, $sp
	sub $sp, $sp, 25
	add $t2, $s0, $t1
<<<<<<< HEAD
=======
	
	
>>>>>>> b847eea20e9fc452319b47d169b8e2934cbb3cde
	li $v0 ,4
	la $a0, msg_1
	syscall
	
	li $v0 ,4
	la $a0, msg_2
	syscall
finFunc_suma: 
	add $sp, $sp, 25
	lw $s0, -12($fp)
	sw $fp, -8($sp)
	sw $ra, -4($sp)
	jr $ra
hola:
	
	sw $fp, -4($sp)
	sw $ra, -8($sp)
	sw $s0, -12($sp)
	sw $s1, -16($sp)
	move $s0, $a0
	move $s1, $a1
	move $fp, $sp
	sub $sp, $sp, 32
	
	
	
	
	
	
	
	
	
	li $v0 ,4
	la $a0, msg_3
	syscall
	div $t4, $s1, $t3
	add $t6, $t4, $t5
<<<<<<< HEAD
=======
	
	
	
	
	
	
	
	
	
	
>>>>>>> b847eea20e9fc452319b47d169b8e2934cbb3cde
	li $v0 ,4
	la $a0, msg_4
	syscall
finFunc_hola: 
	add $sp, $sp, 32
	lw $s1, -16($fp)
	lw $s0, -12($fp)
	sw $fp, -8($sp)
	sw $ra, -4($sp)
	jr $ra
