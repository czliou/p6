	.data
.a:	.word 0
	.data
.b:	.word 0
	.text
	.globl main
main:	
__start:
	sw    $ra, 0($sp)	#PUSH
	subu  $sp, $sp, 4
	sw    $fp, 0($sp)	#PUSH
	subu  $sp, $sp, 4
	addu  $fp, $sp, 8
_main_Exit:
	lw    $ra, 0($fp)
	move  $t0, $fp
	lw    $fp, -4($fp)	#restore FP
	move  $sp, $t0
	li    $v0, 10
	syscall		#only do this for main
