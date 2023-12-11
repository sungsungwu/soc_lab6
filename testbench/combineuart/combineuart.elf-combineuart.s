	.file	"combineuart.c"
	.option nopic
	.attribute arch, "rv32i2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/ubuntu/lab6/lab-wlos_baseline/testbench/combineuart" "combineuart.c"
	.align	2
	.type	flush_cpu_icache, @function
flush_cpu_icache:
.LFB21:
	.file 1 "../../firmware/system.h"
	.loc 1 15 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 26 1
	nop
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE21:
	.size	flush_cpu_icache, .-flush_cpu_icache
	.align	2
	.type	flush_cpu_dcache, @function
flush_cpu_dcache:
.LFB22:
	.loc 1 29 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)
	.cfi_offset 8, -4
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 1 33 1
	nop
	lw	s0,12(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE22:
	.size	flush_cpu_dcache, .-flush_cpu_dcache
	.globl	taps
	.data
	.align	2
	.type	taps, @object
	.size	taps, 44
taps:
	.word	0
	.word	-10
	.word	-9
	.word	23
	.word	56
	.word	63
	.word	56
	.word	23
	.word	-9
	.word	-10
	.word	0
	.globl	inputbuffer
	.bss
	.align	2
	.type	inputbuffer, @object
	.size	inputbuffer, 44
inputbuffer:
	.zero	44
	.globl	inputsignal
	.data
	.align	2
	.type	inputsignal, @object
	.size	inputsignal, 44
inputsignal:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.word	10
	.word	11
	.globl	outputsignal
	.bss
	.align	2
	.type	outputsignal, @object
	.size	outputsignal, 44
outputsignal:
	.zero	44
	.globl	A
	.data
	.align	2
	.type	A, @object
	.size	A, 64
A:
	.word	0
	.word	1
	.word	2
	.word	3
	.word	0
	.word	1
	.word	2
	.word	3
	.word	0
	.word	1
	.word	2
	.word	3
	.word	0
	.word	1
	.word	2
	.word	3
	.globl	B
	.align	2
	.type	B, @object
	.size	B, 64
B:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.word	10
	.word	11
	.word	12
	.word	13
	.word	14
	.word	15
	.word	16
	.globl	result
	.bss
	.align	2
	.type	result, @object
	.size	result, 64
result:
	.zero	64
	.globl	A_qs
	.data
	.align	2
	.type	A_qs, @object
	.size	A_qs, 40
A_qs:
	.word	893
	.word	40
	.word	3233
	.word	4267
	.word	2669
	.word	2541
	.word	9073
	.word	6023
	.word	5681
	.word	4622
	.section	.mprj,"ax",@progbits
	.align	2
	.globl	uart_write
	.type	uart_write, @function
uart_write:
.LFB321:
	.file 2 "combineuart.c"
	.loc 2 9 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	.loc 2 10 10
	nop
.L4:
	.loc 2 10 14 discriminator 1
	li	a5,805306368
	addi	a5,a5,8
	lw	a5,0(a5)
	.loc 2 10 11 discriminator 1
	andi	a5,a5,8
	bne	a5,zero,.L4
	.loc 2 11 6
	li	a5,805306368
	addi	a5,a5,4
	.loc 2 11 39
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 2 12 1
	nop
	lw	s0,28(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE321:
	.size	uart_write, .-uart_write
	.align	2
	.globl	uart_write_char
	.type	uart_write_char, @function
uart_write_char:
.LFB322:
	.loc 2 15 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	mv	a5,a0
	sb	a5,-17(s0)
	.loc 2 16 5
	lbu	a4,-17(s0)
	li	a5,10
	bne	a4,a5,.L8
	.loc 2 17 3
	li	a0,13
	call	uart_write_char
.L8:
	.loc 2 20 10
	nop
.L7:
	.loc 2 20 14 discriminator 1
	li	a5,805306368
	addi	a5,a5,8
	lw	a5,0(a5)
	.loc 2 20 11 discriminator 1
	andi	a5,a5,8
	bne	a5,zero,.L7
	.loc 2 21 6
	li	a5,805306368
	addi	a5,a5,4
	.loc 2 21 39
	lbu	a4,-17(s0)
	sw	a4,0(a5)
	.loc 2 22 1
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE322:
	.size	uart_write_char, .-uart_write_char
	.align	2
	.globl	uart_write_string
	.type	uart_write_string, @function
uart_write_string:
.LFB323:
	.loc 2 25 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	.loc 2 26 11
	j	.L10
.L11:
	.loc 2 27 28
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 2 27 9
	lbu	a5,0(a5)
	mv	a0,a5
	call	uart_write_char
.L10:
	.loc 2 26 12
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	bne	a5,zero,.L11
	.loc 2 28 1
	nop
	nop
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE323:
	.size	uart_write_string, .-uart_write_string
	.align	2
	.globl	uart_read_char
	.type	uart_read_char, @function
uart_read_char:
.LFB324:
	.loc 2 32 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 2 34 12
	li	a5,805306368
	addi	a5,a5,8
	lw	a5,0(a5)
	.loc 2 34 44
	srli	a5,a5,5
	.loc 2 34 7
	bne	a5,zero,.L13
	.loc 2 34 67 discriminator 1
	li	a5,805306368
	addi	a5,a5,8
	lw	a5,0(a5)
	.loc 2 34 99 discriminator 1
	srli	a5,a5,4
	.loc 2 34 60 discriminator 1
	bne	a5,zero,.L13
.LBB2:
	.loc 2 35 17
	sw	zero,-24(s0)
	.loc 2 35 9
	j	.L14
.L15:
	.loc 2 36 13 discriminator 3
 #APP
# 36 "combineuart.c" 1
	nop
# 0 "" 2
	.loc 2 35 32 discriminator 3
 #NO_APP
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L14:
	.loc 2 35 26 discriminator 1
	lw	a5,-24(s0)
	ble	a5,zero,.L15
.LBE2:
	.loc 2 38 16
	li	a5,805306368
	lw	a5,0(a5)
	.loc 2 38 13
	sb	a5,-17(s0)
.L13:
	.loc 2 41 12
	lbu	a5,-17(s0)
	.loc 2 42 1
	mv	a0,a5
	lw	s0,28(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE324:
	.size	uart_read_char, .-uart_read_char
	.align	2
	.globl	uart_read
	.type	uart_read, @function
uart_read:
.LFB325:
	.loc 2 45 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 2 47 12
	li	a5,805306368
	addi	a5,a5,8
	lw	a5,0(a5)
	.loc 2 47 44
	srli	a5,a5,5
	.loc 2 47 7
	bne	a5,zero,.L18
	.loc 2 47 67 discriminator 1
	li	a5,805306368
	addi	a5,a5,8
	lw	a5,0(a5)
	.loc 2 47 99 discriminator 1
	srli	a5,a5,4
	.loc 2 47 60 discriminator 1
	bne	a5,zero,.L18
.LBB3:
	.loc 2 48 17
	sw	zero,-24(s0)
	.loc 2 48 9
	j	.L19
.L20:
	.loc 2 49 13 discriminator 3
 #APP
# 49 "combineuart.c" 1
	nop
# 0 "" 2
	.loc 2 48 32 discriminator 3
 #NO_APP
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L19:
	.loc 2 48 26 discriminator 1
	lw	a5,-24(s0)
	ble	a5,zero,.L20
.LBE3:
	.loc 2 51 16
	li	a5,805306368
	lw	a5,0(a5)
	.loc 2 51 13
	sw	a5,-20(s0)
.L18:
	.loc 2 54 12
	lw	a5,-20(s0)
	.loc 2 55 1
	mv	a0,a5
	lw	s0,28(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE325:
	.size	uart_read, .-uart_read
	.section	.mprjram,"ax",@progbits
	.align	2
	.globl	initfir
	.type	initfir, @function
initfir:
.LFB326:
	.loc 2 59 61
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
.LBB4:
	.loc 2 60 10
	sw	zero,-20(s0)
	.loc 2 60 2
	j	.L23
.L24:
	.loc 2 61 18 discriminator 3
	lui	a5,%hi(inputbuffer)
	addi	a4,a5,%lo(inputbuffer)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	sw	zero,0(a5)
	.loc 2 62 19 discriminator 3
	lui	a5,%hi(outputsignal)
	addi	a4,a5,%lo(outputsignal)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	sw	zero,0(a5)
	.loc 2 60 22 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L23:
	.loc 2 60 16 discriminator 1
	lw	a4,-20(s0)
	li	a5,10
	ble	a4,a5,.L24
.LBE4:
	.loc 2 64 1
	nop
	nop
	lw	s0,28(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE326:
	.size	initfir, .-initfir
	.globl	__mulsi3
	.align	2
	.globl	firfilter
	.type	firfilter, @function
firfilter:
.LFB327:
	.loc 2 66 76
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
.LBB5:
	.loc 2 67 10
	li	a5,10
	sw	a5,-20(s0)
	.loc 2 67 2
	j	.L26
.L27:
	.loc 2 68 33 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,-1
	.loc 2 68 31 discriminator 3
	lui	a4,%hi(inputbuffer)
	addi	a4,a4,%lo(inputbuffer)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 2 68 18 discriminator 3
	lui	a5,%hi(inputbuffer)
	addi	a3,a5,%lo(inputbuffer)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,0(a5)
	.loc 2 67 25 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
.L26:
	.loc 2 67 20 discriminator 1
	lw	a5,-20(s0)
	bgt	a5,zero,.L27
.LBE5:
	.loc 2 70 17
	lui	a5,%hi(inputbuffer)
	addi	a5,a5,%lo(inputbuffer)
	lw	a4,-36(s0)
	sw	a4,0(a5)
	.loc 2 72 6
	sw	zero,-24(s0)
.LBB6:
	.loc 2 73 10
	sw	zero,-28(s0)
	.loc 2 73 2
	j	.L28
.L29:
	.loc 2 74 23 discriminator 3
	lui	a5,%hi(taps)
	addi	a4,a5,%lo(taps)
	lw	a5,-28(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a3,0(a5)
	.loc 2 74 38 discriminator 3
	lui	a5,%hi(inputbuffer)
	addi	a4,a5,%lo(inputbuffer)
	lw	a5,-28(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 74 26 discriminator 3
	mv	a1,a5
	mv	a0,a3
	call	__mulsi3
	mv	a5,a0
	mv	a4,a5
	.loc 2 74 16 discriminator 3
	lw	a5,-24(s0)
	add	a5,a5,a4
	sw	a5,-24(s0)
	.loc 2 73 22 discriminator 3
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L28:
	.loc 2 73 16 discriminator 1
	lw	a4,-28(s0)
	li	a5,10
	ble	a4,a5,.L29
.LBE6:
	.loc 2 76 9
	lw	a5,-24(s0)
	.loc 2 77 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE327:
	.size	firfilter, .-firfilter
	.align	2
	.globl	fir
	.type	fir, @function
fir:
.LFB328:
	.loc 2 79 56
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 2 80 2
	call	initfir
.LBB7:
	.loc 2 81 10
	sw	zero,-20(s0)
	.loc 2 81 2
	j	.L32
.L33:
	.loc 2 82 21 discriminator 3
	lui	a5,%hi(inputsignal)
	addi	a4,a5,%lo(inputsignal)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a0,a5
	call	firfilter
	mv	a3,a0
	.loc 2 82 19 discriminator 3
	lui	a5,%hi(outputsignal)
	addi	a4,a5,%lo(outputsignal)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	sw	a3,0(a5)
	.loc 2 81 22 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L32:
	.loc 2 81 16 discriminator 1
	lw	a4,-20(s0)
	li	a5,10
	ble	a4,a5,.L33
.LBE7:
	.loc 2 84 9
	lui	a5,%hi(outputsignal)
	addi	a5,a5,%lo(outputsignal)
	.loc 2 85 1
	mv	a0,a5
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE328:
	.size	fir, .-fir
	.align	2
	.globl	matmul
	.type	matmul, @function
matmul:
.LFB329:
	.loc 2 92 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	.loc 2 93 6
	sw	zero,-20(s0)
	.loc 2 98 15
	sw	zero,-36(s0)
	.loc 2 99 8
	sw	zero,-20(s0)
	.loc 2 99 2
	j	.L36
.L41:
	.loc 2 100 9
	sw	zero,-24(s0)
	.loc 2 100 3
	j	.L37
.L40:
	.loc 2 101 8
	sw	zero,-32(s0)
	.loc 2 102 10
	sw	zero,-28(s0)
	.loc 2 102 4
	j	.L38
.L39:
	.loc 2 103 16 discriminator 3
	lw	a5,-20(s0)
	slli	a4,a5,2
	.loc 2 103 20 discriminator 3
	lw	a5,-28(s0)
	add	a5,a4,a5
	.loc 2 103 13 discriminator 3
	lui	a4,%hi(A)
	addi	a4,a4,%lo(A)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a3,0(a5)
	.loc 2 103 31 discriminator 3
	lw	a5,-28(s0)
	slli	a4,a5,2
	.loc 2 103 35 discriminator 3
	lw	a5,-24(s0)
	add	a5,a4,a5
	.loc 2 103 28 discriminator 3
	lui	a4,%hi(B)
	addi	a4,a4,%lo(B)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 103 25 discriminator 3
	mv	a1,a5
	mv	a0,a3
	call	__mulsi3
	mv	a5,a0
	mv	a4,a5
	.loc 2 103 9 discriminator 3
	lw	a5,-32(s0)
	add	a5,a5,a4
	sw	a5,-32(s0)
	.loc 2 102 19 discriminator 3
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L38:
	.loc 2 102 15 discriminator 1
	lw	a4,-28(s0)
	li	a5,3
	ble	a4,a5,.L39
	.loc 2 104 13 discriminator 2
	lw	a5,-20(s0)
	slli	a4,a5,2
	.loc 2 104 17 discriminator 2
	lw	a5,-24(s0)
	add	a5,a4,a5
	.loc 2 104 22 discriminator 2
	lui	a4,%hi(result)
	addi	a4,a4,%lo(result)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,-32(s0)
	sw	a4,0(a5)
	.loc 2 100 19 discriminator 2
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L37:
	.loc 2 100 14 discriminator 1
	lw	a4,-24(s0)
	li	a5,3
	ble	a4,a5,.L40
	.loc 2 99 18 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L36:
	.loc 2 99 13 discriminator 1
	lw	a4,-20(s0)
	li	a5,3
	ble	a4,a5,.L41
	.loc 2 107 9
	lui	a5,%hi(result)
	addi	a5,a5,%lo(result)
	.loc 2 108 1
	mv	a0,a5
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE329:
	.size	matmul, .-matmul
	.align	2
	.globl	partition
	.type	partition, @function
partition:
.LFB330:
	.loc 2 111 75
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,44(sp)
	.cfi_offset 8, -4
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	.loc 2 112 6
	lui	a5,%hi(A_qs)
	addi	a4,a5,%lo(A_qs)
	lw	a5,-40(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-28(s0)
	.loc 2 113 6
	lw	a5,-36(s0)
	addi	a5,a5,-1
	sw	a5,-20(s0)
	.loc 2 115 8
	lw	a5,-36(s0)
	sw	a5,-24(s0)
	.loc 2 115 2
	j	.L44
.L46:
	.loc 2 116 10
	lui	a5,%hi(A_qs)
	addi	a4,a5,%lo(A_qs)
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 2 116 5
	lw	a4,-28(s0)
	ble	a4,a5,.L45
	.loc 2 117 6
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
	.loc 2 118 9
	lui	a5,%hi(A_qs)
	addi	a4,a5,%lo(A_qs)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 2 119 18
	lui	a5,%hi(A_qs)
	addi	a4,a5,%lo(A_qs)
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 2 119 12
	lui	a5,%hi(A_qs)
	addi	a3,a5,%lo(A_qs)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,0(a5)
	.loc 2 120 12
	lui	a5,%hi(A_qs)
	addi	a4,a5,%lo(A_qs)
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,-32(s0)
	sw	a4,0(a5)
.L45:
	.loc 2 115 20 discriminator 2
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L44:
	.loc 2 115 15 discriminator 1
	lw	a4,-24(s0)
	lw	a5,-40(s0)
	blt	a4,a5,.L46
	.loc 2 123 9
	lui	a5,%hi(A_qs)
	addi	a4,a5,%lo(A_qs)
	lw	a5,-40(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 2 123 22
	lw	a5,-20(s0)
	addi	a5,a5,1
	.loc 2 123 20
	lui	a3,%hi(A_qs)
	addi	a3,a3,%lo(A_qs)
	slli	a5,a5,2
	add	a5,a3,a5
	lw	a5,0(a5)
	.loc 2 123 4
	bge	a4,a5,.L47
	.loc 2 124 16
	lw	a5,-20(s0)
	addi	a5,a5,1
	.loc 2 124 8
	lui	a4,%hi(A_qs)
	addi	a4,a4,%lo(A_qs)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-32(s0)
	.loc 2 125 9
	lw	a5,-20(s0)
	addi	a5,a5,1
	.loc 2 125 19
	lui	a4,%hi(A_qs)
	addi	a3,a4,%lo(A_qs)
	lw	a4,-40(s0)
	slli	a4,a4,2
	add	a4,a3,a4
	lw	a4,0(a4)
	.loc 2 125 13
	lui	a3,%hi(A_qs)
	addi	a3,a3,%lo(A_qs)
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,0(a5)
	.loc 2 126 12
	lui	a5,%hi(A_qs)
	addi	a4,a5,%lo(A_qs)
	lw	a5,-40(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,-32(s0)
	sw	a4,0(a5)
.L47:
	.loc 2 128 10
	lw	a5,-20(s0)
	addi	a5,a5,1
	.loc 2 129 1
	mv	a0,a5
	lw	s0,44(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE330:
	.size	partition, .-partition
	.align	2
	.globl	sort
	.type	sort, @function
sort:
.LFB331:
	.loc 2 131 72
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,48
	.cfi_def_cfa 8, 0
	sw	a0,-36(s0)
	sw	a1,-40(s0)
	.loc 2 132 4
	lw	a4,-36(s0)
	lw	a5,-40(s0)
	bge	a4,a5,.L51
.LBB8:
	.loc 2 133 11
	lw	a1,-40(s0)
	lw	a0,-36(s0)
	call	partition
	sw	a0,-20(s0)
	.loc 2 134 3
	lw	a5,-20(s0)
	addi	a5,a5,-1
	mv	a1,a5
	lw	a0,-36(s0)
	call	sort
	.loc 2 135 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	lw	a1,-40(s0)
	mv	a0,a5
	call	sort
.L51:
.LBE8:
	.loc 2 137 1
	nop
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 48
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE331:
	.size	sort, .-sort
	.align	2
	.globl	qsort
	.type	qsort, @function
qsort:
.LFB332:
	.loc 2 139 58
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16
	.cfi_def_cfa 8, 0
	.loc 2 140 2
	li	a1,9
	li	a0,0
	call	sort
	.loc 2 141 9
	lui	a5,%hi(A_qs)
	addi	a5,a5,%lo(A_qs)
	.loc 2 142 1
	mv	a0,a5
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 16
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE332:
	.size	qsort, .-qsort
	.text
.Letext0:
	.file 3 "combineuart.h"
	.file 4 "/opt/riscv/lib/gcc/riscv32-unknown-elf/12.1.0/include/stdint-gcc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x433
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0xe
	.4byte	.LASF34
	.byte	0x1d
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.byte	0xf
	.4byte	.LASF35
	.byte	0x4
	.byte	0x34
	.byte	0x1b
	.4byte	0x5c
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.byte	0x10
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x7
	.4byte	0x6a
	.4byte	0x88
	.byte	0x8
	.4byte	0x71
	.byte	0xa
	.byte	0
	.byte	0x4
	.4byte	.LASF11
	.byte	0x7
	.byte	0x5
	.4byte	0x78
	.byte	0x5
	.byte	0x3
	.4byte	taps
	.byte	0x4
	.4byte	.LASF12
	.byte	0x8
	.byte	0x5
	.4byte	0x78
	.byte	0x5
	.byte	0x3
	.4byte	inputbuffer
	.byte	0x4
	.4byte	.LASF13
	.byte	0x9
	.byte	0x5
	.4byte	0x78
	.byte	0x5
	.byte	0x3
	.4byte	inputsignal
	.byte	0x4
	.4byte	.LASF14
	.byte	0xa
	.byte	0x5
	.4byte	0x78
	.byte	0x5
	.byte	0x3
	.4byte	outputsignal
	.byte	0x7
	.4byte	0x6a
	.4byte	0xdc
	.byte	0x8
	.4byte	0x71
	.byte	0xf
	.byte	0
	.byte	0xa
	.string	"A"
	.byte	0x12
	.4byte	0xcc
	.byte	0x5
	.byte	0x3
	.4byte	A
	.byte	0xa
	.string	"B"
	.byte	0x17
	.4byte	0xcc
	.byte	0x5
	.byte	0x3
	.4byte	B
	.byte	0x4
	.4byte	.LASF15
	.byte	0x1c
	.byte	0x6
	.4byte	0xcc
	.byte	0x5
	.byte	0x3
	.4byte	result
	.byte	0x7
	.4byte	0x6a
	.4byte	0x119
	.byte	0x8
	.4byte	0x71
	.byte	0x9
	.byte	0
	.byte	0x4
	.4byte	.LASF16
	.byte	0x24
	.byte	0x5
	.4byte	0x109
	.byte	0x5
	.byte	0x3
	.4byte	A_qs
	.byte	0x11
	.4byte	.LASF36
	.byte	0x2
	.byte	0x8b
	.byte	0x33
	.4byte	0x140
	.4byte	.LFB332
	.4byte	.LFE332-.LFB332
	.byte	0x1
	.byte	0x9c
	.byte	0xb
	.4byte	0x6a
	.byte	0x9
	.4byte	.LASF19
	.byte	0x83
	.byte	0x33
	.4byte	.LFB331
	.4byte	.LFE331-.LFB331
	.byte	0x1
	.byte	0x9c
	.4byte	0x18c
	.byte	0x3
	.string	"low"
	.byte	0x83
	.byte	0x3c
	.4byte	0x6a
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x3
	.string	"hi"
	.byte	0x83
	.byte	0x45
	.4byte	0x6a
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x5
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0x1
	.string	"p"
	.byte	0x85
	.byte	0x7
	.4byte	0x6a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0
	.byte	0x12
	.4byte	.LASF22
	.byte	0x2
	.byte	0x6f
	.byte	0x32
	.4byte	0x6a
	.4byte	.LFB330
	.4byte	.LFE330-.LFB330
	.byte	0x1
	.byte	0x9c
	.4byte	0x1f6
	.byte	0x3
	.string	"low"
	.byte	0x6f
	.byte	0x40
	.4byte	0x6a
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x3
	.string	"hi"
	.byte	0x6f
	.byte	0x48
	.4byte	0x6a
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x6
	.4byte	.LASF17
	.byte	0x70
	.byte	0x6
	.4byte	0x6a
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x1
	.string	"i"
	.byte	0x71
	.byte	0x6
	.4byte	0x6a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x1
	.string	"j"
	.byte	0x71
	.byte	0x10
	.4byte	0x6a
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x6
	.4byte	.LASF18
	.byte	0x72
	.byte	0x6
	.4byte	0x6a
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0
	.byte	0x13
	.4byte	.LASF20
	.byte	0x2
	.byte	0x5b
	.byte	0x33
	.4byte	0x140
	.4byte	.LFB329
	.4byte	.LFE329-.LFB329
	.byte	0x1
	.byte	0x9c
	.4byte	0x25c
	.byte	0x1
	.string	"i"
	.byte	0x5d
	.byte	0x6
	.4byte	0x6a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x1
	.string	"j"
	.byte	0x5e
	.byte	0x6
	.4byte	0x6a
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x1
	.string	"k"
	.byte	0x5f
	.byte	0x6
	.4byte	0x6a
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x1
	.string	"sum"
	.byte	0x60
	.byte	0x6
	.4byte	0x6a
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x14
	.string	"kk"
	.byte	0x2
	.byte	0x61
	.byte	0x6
	.4byte	0x6a
	.byte	0x6
	.4byte	.LASF21
	.byte	0x62
	.byte	0xf
	.4byte	0x71
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0
	.byte	0x15
	.string	"fir"
	.byte	0x2
	.byte	0x4f
	.byte	0x33
	.4byte	0x140
	.4byte	.LFB328
	.4byte	.LFE328-.LFB328
	.byte	0x1
	.byte	0x9c
	.4byte	0x28d
	.byte	0x5
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.byte	0x1
	.string	"i"
	.byte	0x51
	.byte	0xa
	.4byte	0x6a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0
	.byte	0x16
	.4byte	.LASF23
	.byte	0x2
	.byte	0x42
	.byte	0x32
	.4byte	0x6a
	.4byte	.LFB327
	.4byte	.LFE327-.LFB327
	.byte	0x1
	.byte	0x9c
	.4byte	0x2f5
	.byte	0x17
	.4byte	.LASF24
	.byte	0x2
	.byte	0x42
	.byte	0x40
	.4byte	0x6a
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x6
	.4byte	.LASF25
	.byte	0x48
	.byte	0x6
	.4byte	0x6a
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x18
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.4byte	0x2de
	.byte	0x1
	.string	"i"
	.byte	0x43
	.byte	0xa
	.4byte	0x6a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x5
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.byte	0x1
	.string	"i"
	.byte	0x49
	.byte	0xa
	.4byte	0x6a
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LASF37
	.byte	0x2
	.byte	0x3b
	.byte	0x33
	.4byte	.LFB326
	.4byte	.LFE326-.LFB326
	.byte	0x1
	.byte	0x9c
	.4byte	0x322
	.byte	0x5
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.string	"i"
	.byte	0x3c
	.byte	0xa
	.4byte	0x6a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0
	.byte	0xc
	.4byte	.LASF26
	.byte	0x2c
	.byte	0x2f
	.4byte	0x6a
	.4byte	.LFB325
	.4byte	.LFE325-.LFB325
	.byte	0x1
	.byte	0x9c
	.4byte	0x360
	.byte	0x1
	.string	"num"
	.byte	0x2e
	.byte	0x9
	.4byte	0x6a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x5
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.byte	0x1
	.string	"i"
	.byte	0x30
	.byte	0x11
	.4byte	0x6a
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0
	.byte	0xc
	.4byte	.LASF27
	.byte	0x1f
	.byte	0x30
	.4byte	0x39e
	.4byte	.LFB324
	.4byte	.LFE324-.LFB324
	.byte	0x1
	.byte	0x9c
	.4byte	0x39e
	.byte	0x1
	.string	"num"
	.byte	0x21
	.byte	0x7
	.4byte	0x39e
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0x5
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.byte	0x1
	.string	"i"
	.byte	0x23
	.byte	0x11
	.4byte	0x6a
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF28
	.byte	0x1a
	.4byte	0x39e
	.byte	0x9
	.4byte	.LASF29
	.byte	0x18
	.byte	0x30
	.4byte	.LFB323
	.4byte	.LFE323-.LFB323
	.byte	0x1
	.byte	0x9c
	.4byte	0x3cc
	.byte	0x3
	.string	"s"
	.byte	0x18
	.byte	0x4e
	.4byte	0x3cc
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0xb
	.4byte	0x3a5
	.byte	0x9
	.4byte	.LASF30
	.byte	0xe
	.byte	0x30
	.4byte	.LFB322
	.4byte	.LFE322-.LFB322
	.byte	0x1
	.byte	0x9c
	.4byte	0x3f3
	.byte	0x3
	.string	"c"
	.byte	0xe
	.byte	0x45
	.4byte	0x39e
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0
	.byte	0x1b
	.4byte	.LASF31
	.byte	0x2
	.byte	0x8
	.byte	0x30
	.4byte	.LFB321
	.4byte	.LFE321-.LFB321
	.byte	0x1
	.byte	0x9c
	.4byte	0x416
	.byte	0x3
	.string	"n"
	.byte	0x8
	.byte	0x3f
	.4byte	0x6a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0xd
	.4byte	.LASF32
	.byte	0x1c
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x1
	.byte	0x9c
	.byte	0xd
	.4byte	.LASF33
	.byte	0xe
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x1
	.byte	0x9c
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0x21
	.byte	0x2
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x2
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0x3
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0x21
	.byte	0x2
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x4
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0x21
	.byte	0x3
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3f
	.byte	0x19
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0x21
	.byte	0x2
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0x21
	.byte	0x2
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x7c
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0x21
	.byte	0x3
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0x21
	.byte	0x6
	.byte	0x49
	.byte	0x13
	.byte	0x3f
	.byte	0x19
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0x21
	.byte	0x4
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0x21
	.byte	0x2
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x7a
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x2e
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0x21
	.byte	0x1
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0x21
	.byte	0x25
	.byte	0x27
	.byte	0x19
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x7a
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x11
	.byte	0x1
	.byte	0x25
	.byte	0xe
	.byte	0x13
	.byte	0xb
	.byte	0x3
	.byte	0x1f
	.byte	0x1b
	.byte	0x1f
	.byte	0x55
	.byte	0x17
	.byte	0x11
	.byte	0x1
	.byte	0x10
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x16
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x2e
	.byte	0
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x7c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x7a
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x7c
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x7c
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x7c
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x19
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x7a
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1a
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1b
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x7a
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x7c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.LFB321
	.4byte	.LFE321-.LFB321
	.4byte	.LFB322
	.4byte	.LFE322-.LFB322
	.4byte	.LFB323
	.4byte	.LFE323-.LFB323
	.4byte	.LFB324
	.4byte	.LFE324-.LFB324
	.4byte	.LFB325
	.4byte	.LFE325-.LFB325
	.4byte	.LFB326
	.4byte	.LFE326-.LFB326
	.4byte	.LFB327
	.4byte	.LFE327-.LFB327
	.4byte	.LFB328
	.4byte	.LFE328-.LFB328
	.4byte	.LFB329
	.4byte	.LFE329-.LFB329
	.4byte	.LFB330
	.4byte	.LFE330-.LFB330
	.4byte	.LFB331
	.4byte	.LFE331-.LFB331
	.4byte	.LFB332
	.4byte	.LFE332-.LFB332
	.4byte	0
	.4byte	0
	.section	.debug_rnglists,"",@progbits
.Ldebug_ranges0:
	.4byte	.Ldebug_ranges3-.Ldebug_ranges2
.Ldebug_ranges2:
	.2byte	0x5
	.byte	0x4
	.byte	0
	.4byte	0
.LLRL0:
	.byte	0x6
	.4byte	.Ltext0
	.4byte	.Letext0
	.byte	0x6
	.4byte	.LFB321
	.4byte	.LFE321
	.byte	0x6
	.4byte	.LFB322
	.4byte	.LFE322
	.byte	0x6
	.4byte	.LFB323
	.4byte	.LFE323
	.byte	0x6
	.4byte	.LFB324
	.4byte	.LFE324
	.byte	0x6
	.4byte	.LFB325
	.4byte	.LFE325
	.byte	0x6
	.4byte	.LFB326
	.4byte	.LFE326
	.byte	0x6
	.4byte	.LFB327
	.4byte	.LFE327
	.byte	0x6
	.4byte	.LFB328
	.4byte	.LFE328
	.byte	0x6
	.4byte	.LFB329
	.4byte	.LFE329
	.byte	0x6
	.4byte	.LFB330
	.4byte	.LFE330
	.byte	0x6
	.4byte	.LFB331
	.4byte	.LFE331
	.byte	0x6
	.4byte	.LFB332
	.4byte	.LFE332
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF13:
	.string	"inputsignal"
.LASF37:
	.string	"initfir"
.LASF21:
	.string	"count"
.LASF19:
	.string	"sort"
.LASF26:
	.string	"uart_read"
.LASF20:
	.string	"matmul"
.LASF36:
	.string	"qsort"
.LASF6:
	.string	"unsigned char"
.LASF8:
	.string	"long unsigned int"
.LASF18:
	.string	"temp"
.LASF7:
	.string	"short unsigned int"
.LASF34:
	.string	"GNU C17 12.1.0 -mabi=ilp32 -mtune=rocket -misa-spec=2.2 -march=rv32i -g -ffreestanding"
.LASF25:
	.string	"outputsample"
.LASF22:
	.string	"partition"
.LASF32:
	.string	"flush_cpu_dcache"
.LASF10:
	.string	"unsigned int"
.LASF27:
	.string	"uart_read_char"
.LASF11:
	.string	"taps"
.LASF9:
	.string	"long long unsigned int"
.LASF15:
	.string	"result"
.LASF31:
	.string	"uart_write"
.LASF12:
	.string	"inputbuffer"
.LASF33:
	.string	"flush_cpu_icache"
.LASF30:
	.string	"uart_write_char"
.LASF16:
	.string	"A_qs"
.LASF14:
	.string	"outputsignal"
.LASF5:
	.string	"long long int"
.LASF28:
	.string	"char"
.LASF3:
	.string	"short int"
.LASF29:
	.string	"uart_write_string"
.LASF23:
	.string	"firfilter"
.LASF35:
	.string	"uint32_t"
.LASF4:
	.string	"long int"
.LASF17:
	.string	"pivot"
.LASF2:
	.string	"signed char"
.LASF24:
	.string	"inputsample"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"combineuart.c"
.LASF1:
	.string	"/home/ubuntu/lab6/lab-wlos_baseline/testbench/combineuart"
	.ident	"GCC: (g1ea978e3066) 12.1.0"
