	.file	"2.8-creating-array-variables.c"
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "1st element value: %d \12\0"
LC1:
	.ascii "2nd element value: %d \12\0"
LC2:
	.ascii "3rd element value: %d \12\0"
LC3:
	.ascii "String: %s \12\0"
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
	subl	$48, %esp
	call	___main
	movl	$100, 36(%esp)
	movl	$200, 40(%esp)
	movl	$300, 44(%esp)
	movb	$67, 26(%esp)
	movb	$32, 27(%esp)
	movb	$80, 28(%esp)
	movb	$114, 29(%esp)
	movb	$111, 30(%esp)
	movb	$103, 31(%esp)
	movb	$114, 32(%esp)
	movb	$97, 33(%esp)
	movb	$109, 34(%esp)
	movb	$0, 35(%esp)
	movl	36(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
	movl	40(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	44(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC2, (%esp)
	call	_printf
	leal	26(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC3, (%esp)
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
