			.data
msg_1:		.asciiz "ferferf"

			.text
<<<<<<< HEAD
			.globl main
main:
=======
			.global main
suma:
>>>>>>> a019231c85608e40de1bb8bf23f6c646946aa1f9
	
	sw $fp, -4($sp)
	sw $ra, -8($sp)
	sw $s0, -12($sp)
	move $s0, $a0
	move $fp, $sp
<<<<<<< HEAD
	sub $sp, $sp, 16
	li $v0 ,4
	la $a0, msg_1
	syscall
finFunc_main: 
	add $sp, $sp, 16
=======
	sub $sp, $sp, 25
	add $t2, $s0, $t1
	sw $t2, r
	
	
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
	
	
	
	
	sw $t2, 1
	
	
	
	
	sw $t2, 2
	
	li $v0 ,4
	la $a0, msg_3
	syscall
	div $t4, $s1, $t3
	add $t6, $t4, $t5
	sw $t6, a
	
	
	
	
	
	
	
	sw $t6, 4
	
	
	
	li $v0 ,4
	la $a0, msg_4
	syscall
finFunc_hola: 
	add $sp, $sp, 32
	lw $s1, -16($fp)
>>>>>>> a019231c85608e40de1bb8bf23f6c646946aa1f9
	lw $s0, -12($fp)
	sw $fp, -8($sp)
	sw $ra, -4($sp)
	jr $ra
