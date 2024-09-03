	.file	"2.2-displaying-variable-values.c"
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC1:
	.ascii "Integer is %d \12\0"
LC2:
	.ascii "Values are %d and %f \12\0"
LC3:
	.ascii "%%7d displays %7d \12\0"
LC4:
	.ascii "%%07d displays %07d \12\0"
LC5:
	.ascii "Pi is approximately %1.10f \12\0"
	.align 4
LC6:
	.ascii "Right-aligned %20.3f rounded pi \12\0"
	.align 4
LC7:
	.ascii "Left-aligned %-20.3f rounded pi \12\0"
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
	subl	$32, %esp
	call	___main
	movl	$100, 28(%esp)
	fldl	LC0
	fstpl	16(%esp)
	movl	28(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	fldl	16(%esp)
	fstpl	8(%esp)
	movl	28(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC2, (%esp)
	call	_printf
	movl	28(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC3, (%esp)
	call	_printf
	movl	28(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC4, (%esp)
	call	_printf
	fldl	16(%esp)
	fstpl	4(%esp)
	movl	$LC5, (%esp)
	call	_printf
	fldl	16(%esp)
	fstpl	4(%esp)
	movl	$LC6, (%esp)
	call	_printf
	fldl	16(%esp)
	fstpl	4(%esp)
	movl	$LC7, (%esp)
	call	_printf
	movl	$0, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE10:
	.section .rdata,"dr"
	.align 8
LC0:
	.long	1413777120
	.long	1074340347
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	_printf;	.scl	2;	.type	32;	.endef
