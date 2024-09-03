	.file	"2.4-qualifying-data-types.c"
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
	.align 4
LC0:
	.ascii "short int... \11size: %d bytes \11\0"
LC1:
	.ascii "%d to %d \12\0"
LC2:
	.ascii "long int... \11size: %d bytes \11\0"
LC3:
	.ascii "char... \11size: %d bytes \11\0"
LC4:
	.ascii "float... \11size: %d bytes \11\0"
LC5:
	.ascii "double... \11size: %d bytes \11\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB10:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$16, %esp
	call	___main
	movl	$2, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
	movl	$-32768, 8(%esp)
	movl	$32767, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	$4, 4(%esp)
	movl	$LC2, (%esp)
	call	_printf
	movl	$-2147483648, 8(%esp)
	movl	$2147483647, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	$1, 4(%esp)
	movl	$LC3, (%esp)
	call	_printf
	movl	$4, 4(%esp)
	movl	$LC4, (%esp)
	call	_printf
	movl	$8, 4(%esp)
	movl	$LC5, (%esp)
	call	_printf
	movl	$0, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE10:
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	_printf;	.scl	2;	.type	32;	.endef
