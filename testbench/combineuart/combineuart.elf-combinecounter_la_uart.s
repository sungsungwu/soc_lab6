	.file	"combinecounter_la_uart.c"
	.option nopic
	.attribute arch, "rv32i2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/ubuntu/lab6/lab-wlos_baseline/testbench/combineuart" "combinecounter_la_uart.c"
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
	.align	2
	.type	csr_write_simple, @function
csr_write_simple:
.LFB23:
	.file 2 "../../firmware/hw/common.h"
	.loc 2 33 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	sw	a1,-24(s0)
	.loc 2 34 5
	lw	a5,-24(s0)
	.loc 2 34 32
	lw	a4,-20(s0)
	sw	a4,0(a5)
	.loc 2 35 1
	nop
	lw	s0,28(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE23:
	.size	csr_write_simple, .-csr_write_simple
	.align	2
	.type	user_irq_0_ev_enable_write, @function
user_irq_0_ev_enable_write:
.LFB209:
	.file 3 "../../firmware/csr.h"
	.loc 3 805 59
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
	.loc 3 806 2
	li	a5,-268406784
	addi	a1,a5,-2028
	lw	a0,-20(s0)
	call	csr_write_simple
	.loc 3 807 1
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
.LFE209:
	.size	user_irq_0_ev_enable_write, .-user_irq_0_ev_enable_write
	.align	2
	.globl	putchar
	.type	putchar, @function
putchar:
.LFB316:
	.file 4 "../../firmware/stub.c"
	.loc 4 19 1
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
	.loc 4 20 5
	lbu	a4,-17(s0)
	li	a5,10
	bne	a4,a5,.L8
	.loc 4 21 3
	li	a0,13
	call	putchar
.L8:
	.loc 4 22 11
	nop
.L7:
	.loc 4 22 13 discriminator 1
	li	a5,-268410880
	addi	a5,a5,-2044
	lw	a4,0(a5)
	.loc 4 22 60 discriminator 1
	li	a5,1
	beq	a4,a5,.L7
	.loc 4 23 3
	li	a5,-268410880
	addi	a5,a5,-2048
	.loc 4 23 50
	lbu	a4,-17(s0)
	sw	a4,0(a5)
	.loc 4 24 1
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
.LFE316:
	.size	putchar, .-putchar
	.align	2
	.globl	print
	.type	print, @function
print:
.LFB317:
	.loc 4 27 1
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
	.loc 4 28 8
	j	.L10
.L11:
	.loc 4 29 14
	lw	a5,-20(s0)
	addi	a4,a5,1
	sw	a4,-20(s0)
	.loc 4 29 3
	lbu	a5,0(a5)
	mv	a0,a5
	call	putchar
.L10:
	.loc 4 28 9
	lw	a5,-20(s0)
	lbu	a5,0(a5)
	bne	a5,zero,.L11
	.loc 4 30 1
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
.LFE317:
	.size	print, .-print
	.align	2
	.type	irq_getmask, @function
irq_getmask:
.LFB320:
	.file 5 "../../firmware/irq_vex.h"
	.loc 5 23 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 5 25 2
 #APP
# 25 "../../firmware/irq_vex.h" 1
	csrr a5, 3008
# 0 "" 2
 #NO_APP
	sw	a5,-20(s0)
	.loc 5 26 9
	lw	a5,-20(s0)
	.loc 5 27 1
	mv	a0,a5
	lw	s0,28(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE320:
	.size	irq_getmask, .-irq_getmask
	.align	2
	.type	irq_setmask, @function
irq_setmask:
.LFB321:
	.loc 5 30 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	.loc 5 31 2
	lw	a5,-20(s0)
 #APP
# 31 "../../firmware/irq_vex.h" 1
	csrw 3008, a5
# 0 "" 2
	.loc 5 32 1
 #NO_APP
	nop
	lw	s0,28(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE321:
	.size	irq_setmask, .-irq_setmask
	.align	2
	.globl	main
	.type	main, @function
main:
.LFB323:
	.file 6 "combinecounter_la_uart.c"
	.loc 6 30 1
	.cfi_startproc
	addi	sp,sp,-128
	.cfi_def_cfa_offset 128
	sw	ra,124(sp)
	sw	s0,120(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,128
	.cfi_def_cfa 8, 0
	.loc 6 61 10
	li	a5,637534208
	addi	a5,a5,160
	.loc 6 61 43
	li	a4,8192
	addi	a4,a4,-2039
	sw	a4,0(a5)
	.loc 6 62 10
	li	a5,637534208
	addi	a5,a5,156
	.loc 6 62 43
	li	a4,8192
	addi	a4,a4,-2039
	sw	a4,0(a5)
	.loc 6 63 10
	li	a5,637534208
	addi	a5,a5,152
	.loc 6 63 43
	li	a4,8192
	addi	a4,a4,-2039
	sw	a4,0(a5)
	.loc 6 64 10
	li	a5,637534208
	addi	a5,a5,148
	.loc 6 64 43
	li	a4,8192
	addi	a4,a4,-2039
	sw	a4,0(a5)
	.loc 6 65 10
	li	a5,637534208
	addi	a5,a5,144
	.loc 6 65 43
	li	a4,8192
	addi	a4,a4,-2039
	sw	a4,0(a5)
	.loc 6 66 10
	li	a5,637534208
	addi	a5,a5,140
	.loc 6 66 43
	li	a4,8192
	addi	a4,a4,-2039
	sw	a4,0(a5)
	.loc 6 67 10
	li	a5,637534208
	addi	a5,a5,136
	.loc 6 67 43
	li	a4,8192
	addi	a4,a4,-2039
	sw	a4,0(a5)
	.loc 6 68 10
	li	a5,637534208
	addi	a5,a5,132
	.loc 6 68 43
	li	a4,8192
	addi	a4,a4,-2039
	sw	a4,0(a5)
	.loc 6 69 10
	li	a5,637534208
	addi	a5,a5,128
	.loc 6 69 43
	li	a4,8192
	addi	a4,a4,-2039
	sw	a4,0(a5)
	.loc 6 70 10
	li	a5,637534208
	addi	a5,a5,124
	.loc 6 70 43
	li	a4,8192
	addi	a4,a4,-2039
	sw	a4,0(a5)
	.loc 6 71 10
	li	a5,637534208
	addi	a5,a5,120
	.loc 6 71 43
	li	a4,8192
	addi	a4,a4,-2039
	sw	a4,0(a5)
	.loc 6 72 10
	li	a5,637534208
	addi	a5,a5,116
	.loc 6 72 43
	li	a4,8192
	addi	a4,a4,-2039
	sw	a4,0(a5)
	.loc 6 73 10
	li	a5,637534208
	addi	a5,a5,112
	.loc 6 73 43
	li	a4,8192
	addi	a4,a4,-2039
	sw	a4,0(a5)
	.loc 6 74 10
	li	a5,637534208
	addi	a5,a5,108
	.loc 6 74 43
	li	a4,8192
	addi	a4,a4,-2039
	sw	a4,0(a5)
	.loc 6 75 10
	li	a5,637534208
	addi	a5,a5,104
	.loc 6 75 43
	li	a4,8192
	addi	a4,a4,-2039
	sw	a4,0(a5)
	.loc 6 76 10
	li	a5,637534208
	addi	a5,a5,100
	.loc 6 76 43
	li	a4,8192
	addi	a4,a4,-2039
	sw	a4,0(a5)
	.loc 6 78 10
	li	a5,637534208
	addi	a5,a5,96
	.loc 6 78 43
	li	a4,8192
	addi	a4,a4,-2040
	sw	a4,0(a5)
	.loc 6 79 10
	li	a5,637534208
	addi	a5,a5,92
	.loc 6 79 43
	li	a4,8192
	addi	a4,a4,-2040
	sw	a4,0(a5)
	.loc 6 80 10
	li	a5,637534208
	addi	a5,a5,88
	.loc 6 80 43
	li	a4,8192
	addi	a4,a4,-2040
	sw	a4,0(a5)
	.loc 6 81 10
	li	a5,637534208
	addi	a5,a5,84
	.loc 6 81 43
	li	a4,8192
	addi	a4,a4,-2040
	sw	a4,0(a5)
	.loc 6 82 10
	li	a5,637534208
	addi	a5,a5,80
	.loc 6 82 43
	li	a4,8192
	addi	a4,a4,-2040
	sw	a4,0(a5)
	.loc 6 83 10
	li	a5,637534208
	addi	a5,a5,76
	.loc 6 83 43
	li	a4,8192
	addi	a4,a4,-2040
	sw	a4,0(a5)
	.loc 6 84 10
	li	a5,637534208
	addi	a5,a5,72
	.loc 6 84 43
	li	a4,8192
	addi	a4,a4,-2040
	sw	a4,0(a5)
	.loc 6 85 10
	li	a5,637534208
	addi	a5,a5,68
	.loc 6 85 43
	li	a4,8192
	addi	a4,a4,-2040
	sw	a4,0(a5)
	.loc 6 86 10
	li	a5,637534208
	addi	a5,a5,64
	.loc 6 86 43
	li	a4,8192
	addi	a4,a4,-2040
	sw	a4,0(a5)
	.loc 6 87 10
	li	a5,637534208
	addi	a5,a5,56
	.loc 6 87 43
	li	a4,8192
	addi	a4,a4,-2040
	sw	a4,0(a5)
	.loc 6 88 10
	li	a5,637534208
	addi	a5,a5,52
	.loc 6 88 43
	li	a4,8192
	addi	a4,a4,-2040
	sw	a4,0(a5)
	.loc 6 89 10
	li	a5,637534208
	addi	a5,a5,48
	.loc 6 89 43
	li	a4,8192
	addi	a4,a4,-2040
	sw	a4,0(a5)
	.loc 6 90 10
	li	a5,637534208
	addi	a5,a5,44
	.loc 6 90 43
	li	a4,8192
	addi	a4,a4,-2040
	sw	a4,0(a5)
	.loc 6 91 10
	li	a5,637534208
	addi	a5,a5,40
	.loc 6 91 43
	li	a4,8192
	addi	a4,a4,-2040
	sw	a4,0(a5)
	.loc 6 92 10
	li	a5,637534208
	addi	a5,a5,36
	.loc 6 92 43
	li	a4,8192
	addi	a4,a4,-2040
	sw	a4,0(a5)
	.loc 6 94 10
	li	a5,637534208
	addi	a5,a5,60
	.loc 6 94 43
	li	a4,8192
	addi	a4,a4,-2039
	sw	a4,0(a5)
	.loc 6 95 10
	li	a5,637534208
	addi	a5,a5,56
	.loc 6 95 43
	li	a4,1026
	sw	a4,0(a5)
	.loc 6 99 3
	li	a5,-268410880
	.loc 6 99 50
	li	a4,1
	sw	a4,0(a5)
	.loc 6 103 9
	call	irq_getmask
	mv	a5,a0
	.loc 6 103 7
	sw	a5,-112(s0)
	.loc 6 104 7
	lw	a5,-112(s0)
	ori	a5,a5,4
	sw	a5,-112(s0)
	.loc 6 105 2
	lw	a5,-112(s0)
	mv	a0,a5
	call	irq_setmask
	.loc 6 107 2
	li	a0,1
	call	user_irq_0_ev_enable_write
	.loc 6 111 3
	li	a5,637534208
	.loc 6 111 36
	li	a4,1
	sw	a4,0(a5)
	.loc 6 112 8
	nop
.L16:
	.loc 6 112 10 discriminator 1
	li	a5,637534208
	lw	a4,0(a5)
	.loc 6 112 43 discriminator 1
	li	a5,1
	beq	a4,a5,.L16
	.loc 6 116 60
	li	a5,-268423168
	addi	a4,a5,12
	.loc 6 116 114
	li	a5,0
	sw	a5,0(a4)
	.loc 6 116 3
	li	a4,-268423168
	addi	a4,a4,28
	.loc 6 116 57
	sw	a5,0(a4)
	.loc 6 117 59
	li	a5,-268423168
	addi	a4,a5,8
	.loc 6 117 112
	li	a5,-1
	sw	a5,0(a4)
	.loc 6 117 3
	li	a4,-268423168
	addi	a4,a4,24
	.loc 6 117 56
	sw	a5,0(a4)
	.loc 6 118 59
	li	a5,-268423168
	addi	a4,a5,4
	.loc 6 118 112
	li	a5,0
	sw	a5,0(a4)
	.loc 6 118 3
	li	a4,-268423168
	addi	a4,a4,20
	.loc 6 118 56
	sw	a5,0(a4)
	.loc 6 119 53
	li	a4,-268423168
	.loc 6 119 100
	li	a5,0
	sw	a5,0(a4)
	.loc 6 119 3
	li	a4,-268423168
	addi	a4,a4,16
	.loc 6 119 50
	sw	a5,0(a4)
	.loc 6 122 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 6 122 36
	li	a4,-1421869056
	sw	a4,0(a5)
	.loc 6 125 3
	li	a5,-268423168
	addi	a5,a5,56
	.loc 6 125 56
	sw	zero,0(a5)
	.loc 6 128 59
	li	a5,-268423168
	addi	a4,a5,8
	.loc 6 128 112
	li	a5,0
	sw	a5,0(a4)
	.loc 6 128 3
	li	a4,-268423168
	addi	a4,a4,24
	.loc 6 128 56
	sw	a5,0(a4)
	.loc 6 131 6
	li	a5,8192
	addi	a5,a5,1808
	sw	a5,-116(s0)
	.loc 6 133 17
	call	fir
	sw	a0,-120(s0)
	.loc 6 134 38
	lw	a5,-120(s0)
	lw	a5,0(a5)
	.loc 6 134 47
	slli	a4,a5,16
	.loc 6 134 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 6 134 36
	sw	a4,0(a5)
	.loc 6 135 47
	lw	a5,-120(s0)
	addi	a5,a5,4
	.loc 6 135 38
	lw	a5,0(a5)
	.loc 6 135 51
	slli	a4,a5,16
	.loc 6 135 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 6 135 36
	sw	a4,0(a5)
	.loc 6 136 47
	lw	a5,-120(s0)
	addi	a5,a5,8
	.loc 6 136 38
	lw	a5,0(a5)
	.loc 6 136 51
	slli	a4,a5,16
	.loc 6 136 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 6 136 36
	sw	a4,0(a5)
	.loc 6 137 47
	lw	a5,-120(s0)
	addi	a5,a5,12
	.loc 6 137 38
	lw	a5,0(a5)
	.loc 6 137 51
	slli	a4,a5,16
	.loc 6 137 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 6 137 36
	sw	a4,0(a5)
	.loc 6 138 47
	lw	a5,-120(s0)
	addi	a5,a5,16
	.loc 6 138 38
	lw	a5,0(a5)
	.loc 6 138 51
	slli	a4,a5,16
	.loc 6 138 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 6 138 36
	sw	a4,0(a5)
	.loc 6 139 47
	lw	a5,-120(s0)
	addi	a5,a5,20
	.loc 6 139 38
	lw	a5,0(a5)
	.loc 6 139 51
	slli	a4,a5,16
	.loc 6 139 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 6 139 36
	sw	a4,0(a5)
	.loc 6 140 47
	lw	a5,-120(s0)
	addi	a5,a5,24
	.loc 6 140 38
	lw	a5,0(a5)
	.loc 6 140 51
	slli	a4,a5,16
	.loc 6 140 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 6 140 36
	sw	a4,0(a5)
	.loc 6 141 47
	lw	a5,-120(s0)
	addi	a5,a5,28
	.loc 6 141 38
	lw	a5,0(a5)
	.loc 6 141 51
	slli	a4,a5,16
	.loc 6 141 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 6 141 36
	sw	a4,0(a5)
	.loc 6 142 47
	lw	a5,-120(s0)
	addi	a5,a5,32
	.loc 6 142 38
	lw	a5,0(a5)
	.loc 6 142 51
	slli	a4,a5,16
	.loc 6 142 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 6 142 36
	sw	a4,0(a5)
	.loc 6 143 47
	lw	a5,-120(s0)
	addi	a5,a5,36
	.loc 6 143 38
	lw	a5,0(a5)
	.loc 6 143 51
	slli	a4,a5,16
	.loc 6 143 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 6 143 36
	sw	a4,0(a5)
	.loc 6 144 47
	lw	a5,-120(s0)
	addi	a5,a5,40
	.loc 6 144 38
	lw	a5,0(a5)
	.loc 6 144 52
	slli	a4,a5,16
	.loc 6 144 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 6 144 36
	sw	a4,0(a5)
	.loc 6 146 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 6 146 36
	li	a4,-1420820480
	sw	a4,0(a5)
	.loc 6 153 3
	li	a5,-268410880
	.loc 6 153 50
	li	a4,1
	sw	a4,0(a5)
	.loc 6 156 9
	call	irq_getmask
	mv	a5,a0
	.loc 6 156 7
	sw	a5,-112(s0)
	.loc 6 157 7
	lw	a5,-112(s0)
	ori	a5,a5,4
	sw	a5,-112(s0)
	.loc 6 158 2
	lw	a5,-112(s0)
	mv	a0,a5
	call	irq_setmask
	.loc 6 160 2
	li	a0,1
	call	user_irq_0_ev_enable_write
	.loc 6 164 3
	li	a5,637534208
	.loc 6 164 36
	li	a4,1
	sw	a4,0(a5)
	.loc 6 165 8
	nop
.L17:
	.loc 6 165 10 discriminator 1
	li	a5,637534208
	lw	a4,0(a5)
	.loc 6 165 43 discriminator 1
	li	a5,1
	beq	a4,a5,.L17
	.loc 6 169 60
	li	a5,-268423168
	addi	a4,a5,12
	.loc 6 169 114
	li	a5,0
	sw	a5,0(a4)
	.loc 6 169 3
	li	a4,-268423168
	addi	a4,a4,28
	.loc 6 169 57
	sw	a5,0(a4)
	.loc 6 170 59
	li	a5,-268423168
	addi	a4,a5,8
	.loc 6 170 112
	li	a5,-1
	sw	a5,0(a4)
	.loc 6 170 3
	li	a4,-268423168
	addi	a4,a4,24
	.loc 6 170 56
	sw	a5,0(a4)
	.loc 6 171 59
	li	a5,-268423168
	addi	a4,a5,4
	.loc 6 171 112
	li	a5,0
	sw	a5,0(a4)
	.loc 6 171 3
	li	a4,-268423168
	addi	a4,a4,20
	.loc 6 171 56
	sw	a5,0(a4)
	.loc 6 172 53
	li	a4,-268423168
	.loc 6 172 100
	li	a5,0
	sw	a5,0(a4)
	.loc 6 172 3
	li	a4,-268423168
	addi	a4,a4,16
	.loc 6 172 50
	sw	a5,0(a4)
	.loc 6 176 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 6 176 36
	li	a4,-1421803520
	sw	a4,0(a5)
.LBB2:
	.loc 6 177 10
	sw	zero,-20(s0)
	.loc 6 177 2
	j	.L18
.L19:
	.loc 6 177 19 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L18:
	.loc 6 177 15 discriminator 1
	lw	a4,-20(s0)
	lw	a5,-116(s0)
	blt	a4,a5,.L19
.LBE2:
	.loc 6 180 3
	li	a5,-268423168
	addi	a5,a5,56
	.loc 6 180 56
	sw	zero,0(a5)
	.loc 6 183 59
	li	a5,-268423168
	addi	a4,a5,8
	.loc 6 183 112
	li	a5,0
	sw	a5,0(a4)
	.loc 6 183 3
	li	a4,-268423168
	addi	a4,a4,24
	.loc 6 183 56
	sw	a5,0(a4)
	.loc 6 185 16
	call	matmul
	sw	a0,-124(s0)
.LBB3:
	.loc 6 186 10
	sw	zero,-24(s0)
	.loc 6 186 2
	j	.L20
.L21:
	.loc 6 186 19 discriminator 3
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L20:
	.loc 6 186 15 discriminator 1
	lw	a4,-24(s0)
	lw	a5,-116(s0)
	blt	a4,a5,.L21
.LBE3:
	.loc 6 189 38
	lw	a5,-124(s0)
	lw	a5,0(a5)
	.loc 6 189 46
	slli	a4,a5,16
	.loc 6 189 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 6 189 36
	sw	a4,0(a5)
.LBB4:
	.loc 6 190 10
	sw	zero,-28(s0)
	.loc 6 190 2
	j	.L22
.L23:
	.loc 6 190 19 discriminator 3
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L22:
	.loc 6 190 15 discriminator 1
	lw	a4,-28(s0)
	lw	a5,-116(s0)
	blt	a4,a5,.L23
.LBE4:
	.loc 6 193 46
	lw	a5,-124(s0)
	addi	a5,a5,4
	.loc 6 193 38
	lw	a5,0(a5)
	.loc 6 193 50
	slli	a4,a5,16
	.loc 6 193 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 6 193 36
	sw	a4,0(a5)
.LBB5:
	.loc 6 194 10
	sw	zero,-32(s0)
	.loc 6 194 2
	j	.L24
.L25:
	.loc 6 194 19 discriminator 3
	lw	a5,-32(s0)
	addi	a5,a5,1
	sw	a5,-32(s0)
.L24:
	.loc 6 194 15 discriminator 1
	lw	a4,-32(s0)
	lw	a5,-116(s0)
	blt	a4,a5,.L25
.LBE5:
	.loc 6 197 46
	lw	a5,-124(s0)
	addi	a5,a5,8
	.loc 6 197 38
	lw	a5,0(a5)
	.loc 6 197 50
	slli	a4,a5,16
	.loc 6 197 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 6 197 36
	sw	a4,0(a5)
.LBB6:
	.loc 6 198 10
	sw	zero,-36(s0)
	.loc 6 198 2
	j	.L26
.L27:
	.loc 6 198 19 discriminator 3
	lw	a5,-36(s0)
	addi	a5,a5,1
	sw	a5,-36(s0)
.L26:
	.loc 6 198 15 discriminator 1
	lw	a4,-36(s0)
	lw	a5,-116(s0)
	blt	a4,a5,.L27
.LBE6:
	.loc 6 201 46
	lw	a5,-124(s0)
	addi	a5,a5,12
	.loc 6 201 38
	lw	a5,0(a5)
	.loc 6 201 50
	slli	a4,a5,16
	.loc 6 201 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 6 201 36
	sw	a4,0(a5)
.LBB7:
	.loc 6 202 10
	sw	zero,-40(s0)
	.loc 6 202 2
	j	.L28
.L29:
	.loc 6 202 19 discriminator 3
	lw	a5,-40(s0)
	addi	a5,a5,1
	sw	a5,-40(s0)
.L28:
	.loc 6 202 15 discriminator 1
	lw	a4,-40(s0)
	lw	a5,-116(s0)
	blt	a4,a5,.L29
.LBE7:
	.loc 6 205 46
	lw	a5,-124(s0)
	addi	a5,a5,36
	.loc 6 205 38
	lw	a5,0(a5)
	.loc 6 205 50
	slli	a4,a5,16
	.loc 6 205 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 6 205 36
	sw	a4,0(a5)
.LBB8:
	.loc 6 206 10
	sw	zero,-44(s0)
	.loc 6 206 2
	j	.L30
.L31:
	.loc 6 206 19 discriminator 3
	lw	a5,-44(s0)
	addi	a5,a5,1
	sw	a5,-44(s0)
.L30:
	.loc 6 206 15 discriminator 1
	lw	a4,-44(s0)
	lw	a5,-116(s0)
	blt	a4,a5,.L31
.LBE8:
	.loc 6 208 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 6 208 36
	li	a4,-1420689408
	sw	a4,0(a5)
.LBB9:
	.loc 6 209 10
	sw	zero,-48(s0)
	.loc 6 209 2
	j	.L32
.L33:
	.loc 6 209 19 discriminator 3
	lw	a5,-48(s0)
	addi	a5,a5,1
	sw	a5,-48(s0)
.L32:
	.loc 6 209 15 discriminator 1
	lw	a4,-48(s0)
	lw	a5,-116(s0)
	blt	a4,a5,.L33
.LBE9:
	.loc 6 215 3
	li	a5,-268410880
	.loc 6 215 50
	li	a4,1
	sw	a4,0(a5)
	.loc 6 218 9
	call	irq_getmask
	mv	a5,a0
	.loc 6 218 7
	sw	a5,-112(s0)
	.loc 6 219 7
	lw	a5,-112(s0)
	ori	a5,a5,4
	sw	a5,-112(s0)
	.loc 6 220 2
	lw	a5,-112(s0)
	mv	a0,a5
	call	irq_setmask
	.loc 6 222 2
	li	a0,1
	call	user_irq_0_ev_enable_write
	.loc 6 226 3
	li	a5,637534208
	.loc 6 226 36
	li	a4,1
	sw	a4,0(a5)
	.loc 6 227 8
	nop
.L34:
	.loc 6 227 10 discriminator 1
	li	a5,637534208
	lw	a4,0(a5)
	.loc 6 227 43 discriminator 1
	li	a5,1
	beq	a4,a5,.L34
	.loc 6 231 60
	li	a5,-268423168
	addi	a4,a5,12
	.loc 6 231 114
	li	a5,0
	sw	a5,0(a4)
	.loc 6 231 3
	li	a4,-268423168
	addi	a4,a4,28
	.loc 6 231 57
	sw	a5,0(a4)
	.loc 6 232 59
	li	a5,-268423168
	addi	a4,a5,8
	.loc 6 232 112
	li	a5,-1
	sw	a5,0(a4)
	.loc 6 232 3
	li	a4,-268423168
	addi	a4,a4,24
	.loc 6 232 56
	sw	a5,0(a4)
	.loc 6 233 59
	li	a5,-268423168
	addi	a4,a5,4
	.loc 6 233 112
	li	a5,0
	sw	a5,0(a4)
	.loc 6 233 3
	li	a4,-268423168
	addi	a4,a4,20
	.loc 6 233 56
	sw	a5,0(a4)
	.loc 6 234 53
	li	a4,-268423168
	.loc 6 234 100
	li	a5,0
	sw	a5,0(a4)
	.loc 6 234 3
	li	a4,-268423168
	addi	a4,a4,16
	.loc 6 234 50
	sw	a5,0(a4)
	.loc 6 238 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 6 238 36
	li	a4,-1421737984
	sw	a4,0(a5)
.LBB10:
	.loc 6 239 10
	sw	zero,-52(s0)
	.loc 6 239 2
	j	.L35
.L36:
	.loc 6 239 19 discriminator 3
	lw	a5,-52(s0)
	addi	a5,a5,1
	sw	a5,-52(s0)
.L35:
	.loc 6 239 15 discriminator 1
	lw	a4,-52(s0)
	lw	a5,-116(s0)
	blt	a4,a5,.L36
.LBE10:
	.loc 6 242 3
	li	a5,-268423168
	addi	a5,a5,56
	.loc 6 242 56
	sw	zero,0(a5)
	.loc 6 245 59
	li	a5,-268423168
	addi	a4,a5,8
	.loc 6 245 112
	li	a5,0
	sw	a5,0(a4)
	.loc 6 245 3
	li	a4,-268423168
	addi	a4,a4,24
	.loc 6 245 56
	sw	a5,0(a4)
	.loc 6 255 16
	call	qsort
	sw	a0,-128(s0)
.LBB11:
	.loc 6 256 10
	sw	zero,-56(s0)
	.loc 6 256 2
	j	.L37
.L38:
	.loc 6 256 19 discriminator 3
	lw	a5,-56(s0)
	addi	a5,a5,1
	sw	a5,-56(s0)
.L37:
	.loc 6 256 15 discriminator 1
	lw	a4,-56(s0)
	lw	a5,-116(s0)
	blt	a4,a5,.L38
.LBE11:
	.loc 6 259 38
	lw	a5,-128(s0)
	lw	a5,0(a5)
	.loc 6 259 46
	slli	a4,a5,16
	.loc 6 259 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 6 259 36
	sw	a4,0(a5)
.LBB12:
	.loc 6 260 10
	sw	zero,-60(s0)
	.loc 6 260 2
	j	.L39
.L40:
	.loc 6 260 19 discriminator 3
	lw	a5,-60(s0)
	addi	a5,a5,1
	sw	a5,-60(s0)
.L39:
	.loc 6 260 15 discriminator 1
	lw	a4,-60(s0)
	lw	a5,-116(s0)
	blt	a4,a5,.L40
.LBE12:
	.loc 6 263 46
	lw	a5,-128(s0)
	addi	a5,a5,4
	.loc 6 263 38
	lw	a5,0(a5)
	.loc 6 263 50
	slli	a4,a5,16
	.loc 6 263 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 6 263 36
	sw	a4,0(a5)
.LBB13:
	.loc 6 264 10
	sw	zero,-64(s0)
	.loc 6 264 2
	j	.L41
.L42:
	.loc 6 264 19 discriminator 3
	lw	a5,-64(s0)
	addi	a5,a5,1
	sw	a5,-64(s0)
.L41:
	.loc 6 264 15 discriminator 1
	lw	a4,-64(s0)
	lw	a5,-116(s0)
	blt	a4,a5,.L42
.LBE13:
	.loc 6 267 46
	lw	a5,-128(s0)
	addi	a5,a5,8
	.loc 6 267 38
	lw	a5,0(a5)
	.loc 6 267 50
	slli	a4,a5,16
	.loc 6 267 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 6 267 36
	sw	a4,0(a5)
.LBB14:
	.loc 6 268 10
	sw	zero,-68(s0)
	.loc 6 268 2
	j	.L43
.L44:
	.loc 6 268 19 discriminator 3
	lw	a5,-68(s0)
	addi	a5,a5,1
	sw	a5,-68(s0)
.L43:
	.loc 6 268 15 discriminator 1
	lw	a4,-68(s0)
	lw	a5,-116(s0)
	blt	a4,a5,.L44
.LBE14:
	.loc 6 271 46
	lw	a5,-128(s0)
	addi	a5,a5,12
	.loc 6 271 38
	lw	a5,0(a5)
	.loc 6 271 50
	slli	a4,a5,16
	.loc 6 271 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 6 271 36
	sw	a4,0(a5)
.LBB15:
	.loc 6 272 10
	sw	zero,-72(s0)
	.loc 6 272 2
	j	.L45
.L46:
	.loc 6 272 19 discriminator 3
	lw	a5,-72(s0)
	addi	a5,a5,1
	sw	a5,-72(s0)
.L45:
	.loc 6 272 15 discriminator 1
	lw	a4,-72(s0)
	lw	a5,-116(s0)
	blt	a4,a5,.L46
.LBE15:
	.loc 6 275 46
	lw	a5,-128(s0)
	addi	a5,a5,16
	.loc 6 275 38
	lw	a5,0(a5)
	.loc 6 275 50
	slli	a4,a5,16
	.loc 6 275 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 6 275 36
	sw	a4,0(a5)
.LBB16:
	.loc 6 276 10
	sw	zero,-76(s0)
	.loc 6 276 2
	j	.L47
.L48:
	.loc 6 276 19 discriminator 3
	lw	a5,-76(s0)
	addi	a5,a5,1
	sw	a5,-76(s0)
.L47:
	.loc 6 276 15 discriminator 1
	lw	a4,-76(s0)
	lw	a5,-116(s0)
	blt	a4,a5,.L48
.LBE16:
	.loc 6 279 46
	lw	a5,-128(s0)
	addi	a5,a5,20
	.loc 6 279 38
	lw	a5,0(a5)
	.loc 6 279 50
	slli	a4,a5,16
	.loc 6 279 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 6 279 36
	sw	a4,0(a5)
.LBB17:
	.loc 6 280 10
	sw	zero,-80(s0)
	.loc 6 280 2
	j	.L49
.L50:
	.loc 6 280 19 discriminator 3
	lw	a5,-80(s0)
	addi	a5,a5,1
	sw	a5,-80(s0)
.L49:
	.loc 6 280 15 discriminator 1
	lw	a4,-80(s0)
	lw	a5,-116(s0)
	blt	a4,a5,.L50
.LBE17:
	.loc 6 283 46
	lw	a5,-128(s0)
	addi	a5,a5,24
	.loc 6 283 38
	lw	a5,0(a5)
	.loc 6 283 50
	slli	a4,a5,16
	.loc 6 283 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 6 283 36
	sw	a4,0(a5)
.LBB18:
	.loc 6 284 10
	sw	zero,-84(s0)
	.loc 6 284 2
	j	.L51
.L52:
	.loc 6 284 19 discriminator 3
	lw	a5,-84(s0)
	addi	a5,a5,1
	sw	a5,-84(s0)
.L51:
	.loc 6 284 15 discriminator 1
	lw	a4,-84(s0)
	lw	a5,-116(s0)
	blt	a4,a5,.L52
.LBE18:
	.loc 6 287 46
	lw	a5,-128(s0)
	addi	a5,a5,28
	.loc 6 287 38
	lw	a5,0(a5)
	.loc 6 287 50
	slli	a4,a5,16
	.loc 6 287 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 6 287 36
	sw	a4,0(a5)
.LBB19:
	.loc 6 288 10
	sw	zero,-88(s0)
	.loc 6 288 2
	j	.L53
.L54:
	.loc 6 288 19 discriminator 3
	lw	a5,-88(s0)
	addi	a5,a5,1
	sw	a5,-88(s0)
.L53:
	.loc 6 288 15 discriminator 1
	lw	a4,-88(s0)
	lw	a5,-116(s0)
	blt	a4,a5,.L54
.LBE19:
	.loc 6 291 46
	lw	a5,-128(s0)
	addi	a5,a5,32
	.loc 6 291 38
	lw	a5,0(a5)
	.loc 6 291 50
	slli	a4,a5,16
	.loc 6 291 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 6 291 36
	sw	a4,0(a5)
.LBB20:
	.loc 6 292 10
	sw	zero,-92(s0)
	.loc 6 292 2
	j	.L55
.L56:
	.loc 6 292 19 discriminator 3
	lw	a5,-92(s0)
	addi	a5,a5,1
	sw	a5,-92(s0)
.L55:
	.loc 6 292 15 discriminator 1
	lw	a4,-92(s0)
	lw	a5,-116(s0)
	blt	a4,a5,.L56
.LBE20:
	.loc 6 295 46
	lw	a5,-128(s0)
	addi	a5,a5,36
	.loc 6 295 38
	lw	a5,0(a5)
	.loc 6 295 50
	slli	a4,a5,16
	.loc 6 295 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 6 295 36
	sw	a4,0(a5)
.LBB21:
	.loc 6 296 10
	sw	zero,-96(s0)
	.loc 6 296 2
	j	.L57
.L58:
	.loc 6 296 19 discriminator 3
	lw	a5,-96(s0)
	addi	a5,a5,1
	sw	a5,-96(s0)
.L57:
	.loc 6 296 15 discriminator 1
	lw	a4,-96(s0)
	lw	a5,-116(s0)
	blt	a4,a5,.L58
.LBE21:
	.loc 6 298 38
	lw	a5,-128(s0)
	lw	a5,0(a5)
	.loc 6 298 46
	slli	a4,a5,16
	.loc 6 298 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 6 298 36
	sw	a4,0(a5)
.LBB22:
	.loc 6 299 10
	sw	zero,-100(s0)
	.loc 6 299 2
	j	.L59
.L60:
	.loc 6 299 19 discriminator 3
	lw	a5,-100(s0)
	addi	a5,a5,1
	sw	a5,-100(s0)
.L59:
	.loc 6 299 15 discriminator 1
	lw	a4,-100(s0)
	lw	a5,-116(s0)
	blt	a4,a5,.L60
.LBE22:
	.loc 6 302 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 6 302 36
	li	a4,-1420623872
	sw	a4,0(a5)
.LBB23:
	.loc 6 303 10
	sw	zero,-104(s0)
	.loc 6 303 2
	j	.L61
.L62:
	.loc 6 303 19 discriminator 3
	lw	a5,-104(s0)
	addi	a5,a5,1
	sw	a5,-104(s0)
.L61:
	.loc 6 303 15 discriminator 1
	lw	a4,-104(s0)
	lw	a5,-116(s0)
	blt	a4,a5,.L62
.LBE23:
	.loc 6 307 7
	li	a5,-268419072
	addi	a5,a5,-2048
	.loc 6 307 54
	li	a4,1
	sw	a4,0(a5)
	.loc 6 311 3
	li	a5,637534208
	.loc 6 311 36
	li	a4,1
	sw	a4,0(a5)
	.loc 6 312 8
	nop
.L63:
	.loc 6 312 10 discriminator 1
	li	a5,637534208
	lw	a4,0(a5)
	.loc 6 312 43 discriminator 1
	li	a5,1
	beq	a4,a5,.L63
	.loc 6 316 60
	li	a5,-268423168
	addi	a4,a5,12
	.loc 6 316 114
	li	a5,0
	sw	a5,0(a4)
	.loc 6 316 3
	li	a4,-268423168
	addi	a4,a4,28
	.loc 6 316 57
	sw	a5,0(a4)
	.loc 6 317 59
	li	a5,-268423168
	addi	a4,a5,8
	.loc 6 317 112
	li	a5,-1
	sw	a5,0(a4)
	.loc 6 317 3
	li	a4,-268423168
	addi	a4,a4,24
	.loc 6 317 56
	sw	a5,0(a4)
	.loc 6 318 59
	li	a5,-268423168
	addi	a4,a5,4
	.loc 6 318 112
	li	a5,0
	sw	a5,0(a4)
	.loc 6 318 3
	li	a4,-268423168
	addi	a4,a4,20
	.loc 6 318 56
	sw	a5,0(a4)
	.loc 6 319 53
	li	a4,-268423168
	.loc 6 319 100
	li	a5,0
	sw	a5,0(a4)
	.loc 6 319 3
	li	a4,-268423168
	addi	a4,a4,16
	.loc 6 319 50
	sw	a5,0(a4)
	.loc 6 325 3
	li	a5,-268423168
	addi	a5,a5,56
	.loc 6 325 56
	sw	zero,0(a5)
	.loc 6 328 59
	li	a5,-268423168
	addi	a4,a5,8
	.loc 6 328 112
	li	a5,0
	sw	a5,0(a4)
	.loc 6 328 3
	li	a4,-268423168
	addi	a4,a4,24
	.loc 6 328 56
	sw	a5,0(a4)
	.loc 6 330 3
	li	a5,637534208
	addi	a5,a5,12
	.loc 6 330 36
	li	a4,-1420754944
	sw	a4,0(a5)
.LBB24:
	.loc 6 331 10
	sw	zero,-108(s0)
	.loc 6 331 2
	j	.L64
.L65:
	.loc 6 331 19 discriminator 3
	lw	a5,-108(s0)
	addi	a5,a5,1
	sw	a5,-108(s0)
.L64:
	.loc 6 331 15 discriminator 1
	lw	a4,-108(s0)
	lw	a5,-116(s0)
	blt	a4,a5,.L65
.LBE24:
	.loc 6 335 9
	call	irq_getmask
	mv	a5,a0
	.loc 6 335 7
	sw	a5,-112(s0)
	.loc 6 336 7
	lw	a5,-112(s0)
	ori	a5,a5,4
	sw	a5,-112(s0)
	.loc 6 337 2
	lw	a5,-112(s0)
	mv	a0,a5
	call	irq_setmask
	.loc 6 339 2
	li	a0,1
	call	user_irq_0_ev_enable_write
	.loc 6 341 1
	nop
	lw	ra,124(sp)
	.cfi_restore 1
	lw	s0,120(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 128
	addi	sp,sp,128
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE323:
	.size	main, .-main
.Letext0:
	.file 7 "/opt/riscv/lib/gcc/riscv32-unknown-elf/12.1.0/include/stdint-gcc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x491
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0xd
	.4byte	.LASF25
	.byte	0x1d
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.byte	0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.byte	0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.byte	0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.byte	0xe
	.4byte	.LASF26
	.byte	0x7
	.byte	0x34
	.byte	0x1b
	.4byte	0x5c
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.byte	0xf
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x8
	.4byte	.LASF11
	.byte	0x11
	.4byte	0x88
	.4byte	0x88
	.byte	0x7
	.byte	0
	.byte	0x9
	.4byte	0x6a
	.byte	0x8
	.4byte	.LASF12
	.byte	0x10
	.4byte	0x88
	.4byte	0x9d
	.byte	0x7
	.byte	0
	.byte	0x10
	.string	"fir"
	.byte	0x6
	.byte	0xf
	.byte	0xd
	.4byte	0x88
	.4byte	0xaf
	.byte	0x7
	.byte	0
	.byte	0x11
	.4byte	.LASF27
	.byte	0x6
	.byte	0x1d
	.byte	0x6
	.4byte	.LFB323
	.4byte	.LFE323-.LFB323
	.byte	0x1
	.byte	0x9c
	.4byte	0x37a
	.byte	0x5
	.4byte	.LASF13
	.byte	0x6
	.byte	0x20
	.byte	0x9
	.4byte	0x6a
	.byte	0x3
	.byte	0x91
	.byte	0x90,0x7f
	.byte	0x12
	.string	"j"
	.byte	0x6
	.byte	0x3a
	.byte	0x6
	.4byte	0x6a
	.byte	0x4
	.string	"k"
	.byte	0x83
	.byte	0x6
	.4byte	0x6a
	.byte	0x3
	.byte	0x91
	.byte	0x8c,0x7f
	.byte	0x5
	.4byte	.LASF14
	.byte	0x6
	.byte	0x85
	.byte	0x7
	.4byte	0x88
	.byte	0x3
	.byte	0x91
	.byte	0x88,0x7f
	.byte	0x5
	.4byte	.LASF15
	.byte	0x6
	.byte	0xb9
	.byte	0x7
	.4byte	0x88
	.byte	0x3
	.byte	0x91
	.byte	0x84,0x7f
	.byte	0x5
	.4byte	.LASF16
	.byte	0x6
	.byte	0xff
	.byte	0x7
	.4byte	0x88
	.byte	0x3
	.byte	0x91
	.byte	0x80,0x7f
	.byte	0x1
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x136
	.byte	0x4
	.string	"i"
	.byte	0xb1
	.byte	0xa
	.4byte	0x6a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x1
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0x150
	.byte	0x4
	.string	"i"
	.byte	0xba
	.byte	0xa
	.4byte	0x6a
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x1
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x16a
	.byte	0x4
	.string	"i"
	.byte	0xbe
	.byte	0xa
	.4byte	0x6a
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0
	.byte	0x1
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.4byte	0x184
	.byte	0x4
	.string	"i"
	.byte	0xc2
	.byte	0xa
	.4byte	0x6a
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0
	.byte	0x1
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.4byte	0x19e
	.byte	0x4
	.string	"i"
	.byte	0xc6
	.byte	0xa
	.4byte	0x6a
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0
	.byte	0x1
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.4byte	0x1b8
	.byte	0x4
	.string	"i"
	.byte	0xca
	.byte	0xa
	.4byte	0x6a
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0
	.byte	0x1
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.4byte	0x1d2
	.byte	0x4
	.string	"i"
	.byte	0xce
	.byte	0xa
	.4byte	0x6a
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0
	.byte	0x1
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.4byte	0x1ec
	.byte	0x4
	.string	"i"
	.byte	0xd1
	.byte	0xa
	.4byte	0x6a
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0
	.byte	0x1
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.4byte	0x206
	.byte	0x4
	.string	"i"
	.byte	0xef
	.byte	0xa
	.4byte	0x6a
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0
	.byte	0x1
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.4byte	0x220
	.byte	0x2
	.string	"i"
	.2byte	0x100
	.4byte	0x6a
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0
	.byte	0x1
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.4byte	0x23a
	.byte	0x2
	.string	"i"
	.2byte	0x104
	.4byte	0x6a
	.byte	0x2
	.byte	0x91
	.byte	0x44
	.byte	0
	.byte	0x1
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.4byte	0x254
	.byte	0x2
	.string	"i"
	.2byte	0x108
	.4byte	0x6a
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0
	.byte	0x1
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.4byte	0x26f
	.byte	0x2
	.string	"i"
	.2byte	0x10c
	.4byte	0x6a
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0
	.byte	0x1
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.4byte	0x28a
	.byte	0x2
	.string	"i"
	.2byte	0x110
	.4byte	0x6a
	.byte	0x3
	.byte	0x91
	.byte	0xb8,0x7f
	.byte	0
	.byte	0x1
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.4byte	0x2a5
	.byte	0x2
	.string	"i"
	.2byte	0x114
	.4byte	0x6a
	.byte	0x3
	.byte	0x91
	.byte	0xb4,0x7f
	.byte	0
	.byte	0x1
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.4byte	0x2c0
	.byte	0x2
	.string	"i"
	.2byte	0x118
	.4byte	0x6a
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7f
	.byte	0
	.byte	0x1
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.4byte	0x2db
	.byte	0x2
	.string	"i"
	.2byte	0x11c
	.4byte	0x6a
	.byte	0x3
	.byte	0x91
	.byte	0xac,0x7f
	.byte	0
	.byte	0x1
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.4byte	0x2f6
	.byte	0x2
	.string	"i"
	.2byte	0x120
	.4byte	0x6a
	.byte	0x3
	.byte	0x91
	.byte	0xa8,0x7f
	.byte	0
	.byte	0x1
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.4byte	0x311
	.byte	0x2
	.string	"i"
	.2byte	0x124
	.4byte	0x6a
	.byte	0x3
	.byte	0x91
	.byte	0xa4,0x7f
	.byte	0
	.byte	0x1
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.4byte	0x32c
	.byte	0x2
	.string	"i"
	.2byte	0x128
	.4byte	0x6a
	.byte	0x3
	.byte	0x91
	.byte	0xa0,0x7f
	.byte	0
	.byte	0x1
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.4byte	0x347
	.byte	0x2
	.string	"i"
	.2byte	0x12b
	.4byte	0x6a
	.byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.byte	0
	.byte	0x1
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.4byte	0x362
	.byte	0x2
	.string	"i"
	.2byte	0x12f
	.4byte	0x6a
	.byte	0x3
	.byte	0x91
	.byte	0x98,0x7f
	.byte	0
	.byte	0x13
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.byte	0x2
	.string	"i"
	.2byte	0x14b
	.4byte	0x6a
	.byte	0x3
	.byte	0x91
	.byte	0x94,0x7f
	.byte	0
	.byte	0
	.byte	0xa
	.4byte	.LASF20
	.byte	0x5
	.byte	0x1d
	.4byte	.LFB321
	.4byte	.LFE321-.LFB321
	.byte	0x1
	.byte	0x9c
	.4byte	0x39f
	.byte	0x14
	.4byte	.LASF13
	.byte	0x5
	.byte	0x1d
	.byte	0x2d
	.4byte	0x71
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x15
	.4byte	.LASF28
	.byte	0x5
	.byte	0x16
	.byte	0x1c
	.4byte	0x71
	.4byte	.LFB320
	.4byte	.LFE320-.LFB320
	.byte	0x1
	.byte	0x9c
	.4byte	0x3c9
	.byte	0x5
	.4byte	.LASF13
	.byte	0x5
	.byte	0x18
	.byte	0xf
	.4byte	0x71
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0xb
	.4byte	.LASF18
	.byte	0x1a
	.4byte	.LFB317
	.4byte	.LFE317-.LFB317
	.byte	0x1
	.byte	0x9c
	.4byte	0x3eb
	.byte	0x6
	.string	"p"
	.byte	0x4
	.byte	0x1a
	.byte	0x18
	.4byte	0x3eb
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x9
	.4byte	0x3f7
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.byte	0x16
	.4byte	0x3f0
	.byte	0xb
	.4byte	.LASF19
	.byte	0x12
	.4byte	.LFB316
	.4byte	.LFE316-.LFB316
	.byte	0x1
	.byte	0x9c
	.4byte	0x41e
	.byte	0x6
	.string	"c"
	.byte	0x4
	.byte	0x12
	.byte	0x13
	.4byte	0x3f0
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0
	.byte	0x17
	.4byte	.LASF21
	.byte	0x3
	.2byte	0x325
	.byte	0x14
	.4byte	.LFB209
	.4byte	.LFE209-.LFB209
	.byte	0x1
	.byte	0x9c
	.4byte	0x444
	.byte	0x18
	.string	"v"
	.byte	0x3
	.2byte	0x325
	.byte	0x38
	.4byte	0x50
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0xa
	.4byte	.LASF22
	.byte	0x2
	.byte	0x20
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x1
	.byte	0x9c
	.4byte	0x474
	.byte	0x6
	.string	"v"
	.byte	0x2
	.byte	0x20
	.byte	0x33
	.4byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x6
	.string	"a"
	.byte	0x2
	.byte	0x20
	.byte	0x44
	.4byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0xc
	.4byte	.LASF23
	.byte	0x1c
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x1
	.byte	0x9c
	.byte	0xc
	.4byte	.LASF24
	.byte	0xe
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x1
	.byte	0x9c
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.byte	0x1
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
	.byte	0x2
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0x21
	.byte	0x6
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0x21
	.byte	0xa
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x3
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
	.byte	0x4
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0x21
	.byte	0x6
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
	.byte	0x5
	.byte	0x34
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
	.byte	0x6
	.byte	0x5
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
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0x21
	.byte	0x6
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0x21
	.byte	0xd
	.byte	0x49
	.byte	0x13
	.byte	0x3c
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0x21
	.byte	0x4
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x2e
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0x21
	.byte	0x14
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
	.byte	0xb
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0x21
	.byte	0x4
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0x21
	.byte	0x6
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
	.byte	0xc
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
	.byte	0xd
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
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x10
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0xe
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
	.byte	0xf
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
	.byte	0x10
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
	.byte	0x3c
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
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
	.byte	0x7c
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
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
	.byte	0x13
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x14
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
	.byte	0x15
	.byte	0x2e
	.byte	0x1
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
	.byte	0x16
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0x2e
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
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
	.byte	0x18
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF14:
	.string	"tmp_fir"
.LASF23:
	.string	"flush_cpu_dcache"
.LASF22:
	.string	"csr_write_simple"
.LASF12:
	.string	"matmul"
.LASF11:
	.string	"qsort"
.LASF6:
	.string	"unsigned char"
.LASF8:
	.string	"long unsigned int"
.LASF15:
	.string	"tmp_MM"
.LASF7:
	.string	"short unsigned int"
.LASF19:
	.string	"putchar"
.LASF25:
	.string	"GNU C17 12.1.0 -mabi=ilp32 -mtune=rocket -misa-spec=2.2 -march=rv32i -g -ffreestanding"
.LASF27:
	.string	"main"
.LASF28:
	.string	"irq_getmask"
.LASF20:
	.string	"irq_setmask"
.LASF10:
	.string	"unsigned int"
.LASF21:
	.string	"user_irq_0_ev_enable_write"
.LASF9:
	.string	"long long unsigned int"
.LASF16:
	.string	"tmp_qs"
.LASF24:
	.string	"flush_cpu_icache"
.LASF5:
	.string	"long long int"
.LASF13:
	.string	"mask"
.LASF18:
	.string	"print"
.LASF3:
	.string	"short int"
.LASF26:
	.string	"uint32_t"
.LASF4:
	.string	"long int"
.LASF17:
	.string	"char"
.LASF2:
	.string	"signed char"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/ubuntu/lab6/lab-wlos_baseline/testbench/combineuart"
.LASF0:
	.string	"combinecounter_la_uart.c"
	.ident	"GCC: (g1ea978e3066) 12.1.0"
