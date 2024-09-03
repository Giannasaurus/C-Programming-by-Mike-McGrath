	.file	"2.7-converting-data-types.c"
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC2:
	.ascii "Float cast to int: %d \12\0"
LC3:
	.ascii "Char cast to int: %d \12\0"
LC4:
	.ascii "Int cast to char: %c \12\0"
LC5:
	.ascii "Float arithmetic: %f \12\0"
LC6:
	.ascii "Double cast to float: %f \12\0"
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
	subl	$64, %esp
	call	___main
	flds	LC0
	fstps	60(%esp)
	movb	$65, 59(%esp)
	movl	$90, 52(%esp)
	movl	$7, 48(%esp)
	movl	$5, 44(%esp)
	fldl	LC1
	fstpl	32(%esp)
	flds	60(%esp)
	fnstcw	26(%esp)
	movzwl	26(%esp), %eax
	movb	$12, %ah
	movw	%ax, 24(%esp)
	fldcw	24(%esp)
	fistpl	20(%esp)
	fldcw	26(%esp)
	movl	20(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC2, (%esp)
	call	_printf
	movsbl	59(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC3, (%esp)
	call	_printf
	movl	52(%esp), %eax
	movsbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	$LC4, (%esp)
	call	_printf
	fildl	48(%esp)
	fildl	44(%esp)
	fdivrp	%st, %st(1)
	fstpl	4(%esp)
	movl	$LC5, (%esp)
	call	_printf
	fldl	32(%esp)
	fstps	28(%esp)
	flds	28(%esp)
	fstpl	4(%esp)
	movl	$LC6, (%esp)
	call	_printf
	movl	$0, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE10:
	.section .rdata,"dr"
	.align 4
LC0:
	.long	1085800448
	.align 8
LC1:
	.long	277989525
	.long	1069521629
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	_printf;	.scl	2;	.type	32;	.endef
