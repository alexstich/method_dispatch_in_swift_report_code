	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 14, 0
	.globl	_main
	.p2align	4, 0x90
_main:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r13
	pushq	%rax
	.cfi_offset %r13, -24
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	_$s4main1BCMa
	movq	%rax, %r13
	callq	_$s4main1BCACycfC
	movq	%rax, _$s4main1bAA1BCvp(%rip)
	movq	_$s4main1bAA1BCvp(%rip), %r13
	movq	(%r13), %rax
	callq	*80(%rax)
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%r13
	popq	%rbp
	retq
	.cfi_endproc

	.private_extern	_$s4main1BCMa
	.globl	_$s4main1BCMa
	.p2align	4, 0x90
_$s4main1BCMa:
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	_$s4main1BCMf+24(%rip), %rdi
	callq	_objc_opt_self
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	popq	%rbp
	retq

	.private_extern	_$s4mainAAyyF
	.globl	_$s4mainAAyyF
	.p2align	4, 0x90
_$s4mainAAyyF:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	popq	%rbp
	retq
	.cfi_endproc

	.private_extern	_$s4main1AC1ByyF
	.globl	_$s4main1AC1ByyF
	.p2align	4, 0x90
_$s4main1AC1ByyF:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	$0, -8(%rbp)
	movq	%r13, -8(%rbp)
	popq	%rbp
	retq
	.cfi_endproc

	.private_extern	_$s4main1ACfd
	.globl	_$s4main1ACfd
	.p2align	4, 0x90
_$s4main1ACfd:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%r13, %rax
	movq	$0, -8(%rbp)
	movq	%rax, -8(%rbp)
	popq	%rbp
	retq
	.cfi_endproc

	.private_extern	_$s4main1ACfD
	.globl	_$s4main1ACfD
	.p2align	4, 0x90
_$s4main1ACfD:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	$0, -8(%rbp)
	movq	%r13, -8(%rbp)
	callq	_$s4main1ACfd
	movq	%rax, %rdi
	movl	$16, %esi
	movl	$7, %edx
	callq	_swift_deallocClassInstance
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.private_extern	_$s4main1ACACycfC
	.globl	_$s4main1ACACycfC
	.p2align	4, 0x90
_$s4main1ACACycfC:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r13
	pushq	%rax
	.cfi_offset %r13, -24
	movq	%r13, %rdi
	movl	$16, %esi
	movl	$7, %edx
	callq	_swift_allocObject
	movq	%rax, %r13
	callq	_$s4main1ACACycfc
	addq	$8, %rsp
	popq	%r13
	popq	%rbp
	retq
	.cfi_endproc

	.private_extern	_$s4main1ACACycfc
	.globl	_$s4main1ACACycfc
	.p2align	4, 0x90
_$s4main1ACACycfc:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%r13, %rax
	movq	$0, -8(%rbp)
	movq	%rax, -8(%rbp)
	popq	%rbp
	retq
	.cfi_endproc

	.private_extern	_$s4main1BCAByyF
	.globl	_$s4main1BCAByyF
	.p2align	4, 0x90
_$s4main1BCAByyF:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	$0, -8(%rbp)
	movq	%r13, -8(%rbp)
	popq	%rbp
	retq
	.cfi_endproc

	.private_extern	_$s4main1BCACycfC
	.globl	_$s4main1BCACycfC
	.p2align	4, 0x90
_$s4main1BCACycfC:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r13
	pushq	%rax
	.cfi_offset %r13, -24
	movq	%r13, %rdi
	movl	$16, %esi
	movl	$7, %edx
	callq	_swift_allocObject
	movq	%rax, %r13
	callq	_$s4main1BCACycfc
	addq	$8, %rsp
	popq	%r13
	popq	%rbp
	retq
	.cfi_endproc

	.private_extern	_$s4main1BCACycfc
	.globl	_$s4main1BCACycfc
	.p2align	4, 0x90
_$s4main1BCACycfc:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r13
	subq	$24, %rsp
	.cfi_offset %r13, -24
	movq	$0, -16(%rbp)
	movq	%r13, -16(%rbp)
	movq	-16(%rbp), %r13
	callq	_$s4main1ACACycfc
	movq	%rax, %rdi
	movq	%rdi, -24(%rbp)
	callq	_swift_retain
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	_swift_release
	movq	-24(%rbp), %rax
	addq	$24, %rsp
	popq	%r13
	popq	%rbp
	retq
	.cfi_endproc

	.private_extern	_$s4main1BCfd
	.globl	_$s4main1BCfd
	.p2align	4, 0x90
_$s4main1BCfd:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	$0, -8(%rbp)
	movq	%r13, -8(%rbp)
	callq	_$s4main1ACfd
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.private_extern	_$s4main1BCfD
	.globl	_$s4main1BCfD
	.p2align	4, 0x90
_$s4main1BCfD:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	$0, -8(%rbp)
	movq	%r13, -8(%rbp)
	callq	_$s4main1BCfd
	movq	%rax, %rdi
	movl	$16, %esi
	movl	$7, %edx
	callq	_swift_deallocClassInstance
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.private_extern	_$s4main1ACMa
	.globl	_$s4main1ACMa
	.p2align	4, 0x90
_$s4main1ACMa:
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	_$s4main1ACMf+24(%rip), %rdi
	callq	_objc_opt_self
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	popq	%rbp
	retq

	.private_extern	_$s4main1bAA1BCvp
	.globl	_$s4main1bAA1BCvp
.zerofill __DATA,__common,_$s4main1bAA1BCvp,8,3
	.section	__TEXT,__swift5_entry,regular,no_dead_strip
	.p2align	2, 0x0
l_entry_point:
	.long	_main-l_entry_point
	.long	0

	.private_extern	_$s4main1ACMm
	.section	__DATA,__data
	.globl	_$s4main1ACMm
	.p2align	3, 0x0
_$s4main1ACMm:
	.quad	_OBJC_METACLASS_$__TtCs12_SwiftObject
	.quad	_OBJC_METACLASS_$__TtCs12_SwiftObject
	.quad	__objc_empty_cache
	.quad	0
	.quad	__METACLASS_DATA__TtC4main1A

	.section	__TEXT,__cstring,cstring_literals
L_.str.11._TtC4main1A:
	.asciz	"_TtC4main1A"

	.section	__DATA,__objc_const
	.p2align	3, 0x0
__METACLASS_DATA__TtC4main1A:
	.long	129
	.long	40
	.long	40
	.long	0
	.quad	0
	.quad	L_.str.11._TtC4main1A
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0

	.p2align	3, 0x0
__DATA__TtC4main1A:
	.long	128
	.long	16
	.long	16
	.long	0
	.quad	0
	.quad	L_.str.11._TtC4main1A
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0

	.section	__TEXT,__const
l_.str.4.main:
	.asciz	"main"

	.private_extern	_$s4mainMXM
	.section	__TEXT,__constg_swiftt
	.globl	_$s4mainMXM
	.weak_definition	_$s4mainMXM
	.p2align	2, 0x0
_$s4mainMXM:
	.long	0
	.long	0
	.long	(l_.str.4.main-_$s4mainMXM)-8

	.section	__TEXT,__const
l_.str.1.A:
	.asciz	"A"

	.private_extern	_$s4main1ACMn
	.section	__TEXT,__constg_swiftt
	.globl	_$s4main1ACMn
	.p2align	2, 0x0
_$s4main1ACMn:
	.long	2147483728
	.long	(_$s4mainMXM-_$s4main1ACMn)-4
	.long	(l_.str.1.A-_$s4main1ACMn)-8
	.long	(_$s4main1ACMa-_$s4main1ACMn)-12
	.long	(_$s4main1ACMF-_$s4main1ACMn)-16
	.long	0
	.long	3
	.long	12
	.long	2
	.long	0
	.long	10
	.long	10
	.long	2
	.long	16
	.long	(_$s4main1AC1ByyF-_$s4main1ACMn)-56
	.long	1
	.long	(_$s4main1ACACycfC-_$s4main1ACMn)-64

	.section	__DATA,__data
	.p2align	3, 0x0
_$s4main1ACMf:
	.quad	0
	.quad	_$s4main1ACfD
	.quad	_$sBoWV
	.quad	_$s4main1ACMm
	.quad	_OBJC_CLASS_$__TtCs12_SwiftObject
	.quad	__objc_empty_cache
	.quad	0
	.quad	__DATA__TtC4main1A+2
	.long	2
	.long	0
	.long	16
	.short	7
	.short	0
	.long	120
	.long	24
	.quad	_$s4main1ACMn
	.quad	0
	.quad	_$s4main1AC1ByyF
	.quad	_$s4main1ACACycfC

	.private_extern	"_symbolic _____ 4main1AC"
	.section	__TEXT,__swift5_typeref
	.globl	"_symbolic _____ 4main1AC"
	.weak_definition	"_symbolic _____ 4main1AC"
	.p2align	1, 0x0
"_symbolic _____ 4main1AC":
	.byte	1
	.long	(_$s4main1ACMn-"_symbolic _____ 4main1AC")-1
	.byte	0

	.section	__TEXT,__swift5_fieldmd
	.p2align	2, 0x0
_$s4main1ACMF:
	.long	"_symbolic _____ 4main1AC"-_$s4main1ACMF
	.long	0
	.short	1
	.short	12
	.long	0

	.private_extern	_$s4main1BCMm
	.section	__DATA,__data
	.globl	_$s4main1BCMm
	.p2align	3, 0x0
_$s4main1BCMm:
	.quad	_OBJC_METACLASS_$__TtCs12_SwiftObject
	.quad	_$s4main1ACMm
	.quad	__objc_empty_cache
	.quad	0
	.quad	__METACLASS_DATA__TtC4main1B

	.section	__TEXT,__cstring,cstring_literals
L_.str.11._TtC4main1B:
	.asciz	"_TtC4main1B"

	.section	__DATA,__objc_const
	.p2align	3, 0x0
__METACLASS_DATA__TtC4main1B:
	.long	129
	.long	40
	.long	40
	.long	0
	.quad	0
	.quad	L_.str.11._TtC4main1B
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0

	.p2align	3, 0x0
__DATA__TtC4main1B:
	.long	128
	.long	16
	.long	16
	.long	0
	.quad	0
	.quad	L_.str.11._TtC4main1B
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0

	.section	__TEXT,__const
l_.str.1.B:
	.asciz	"B"

	.private_extern	_$s4main1BCMn
	.section	__TEXT,__constg_swiftt
	.globl	_$s4main1BCMn
	.p2align	2, 0x0
_$s4main1BCMn:
	.long	1073741904
	.long	(_$s4mainMXM-_$s4main1BCMn)-4
	.long	(l_.str.1.B-_$s4main1BCMn)-8
	.long	(_$s4main1BCMa-_$s4main1BCMn)-12
	.long	(_$s4main1BCMF-_$s4main1BCMn)-16
	.long	("_symbolic _____ 4main1AC"-_$s4main1BCMn)-20
	.long	3
	.long	12
	.long	0
	.long	0
	.long	12
	.long	2
	.long	(_$s4main1ACMn-_$s4main1BCMn)-48
	.long	_$s4main1ACMn-_$s4main1BCMn
	.long	(_$s4main1BCAByyF-_$s4main1BCMn)-56
	.long	(_$s4main1ACMn-_$s4main1BCMn)-60
	.long	(_$s4main1ACMn-_$s4main1BCMn)-4
	.long	(_$s4main1BCACycfC-_$s4main1BCMn)-68

	.section	__DATA,__data
	.p2align	3, 0x0
_$s4main1BCMf:
	.quad	0
	.quad	_$s4main1BCfD
	.quad	_$sBoWV
	.quad	_$s4main1BCMm
	.quad	_$s4main1ACMf+24
	.quad	__objc_empty_cache
	.quad	0
	.quad	__DATA__TtC4main1B+2
	.long	2
	.long	0
	.long	16
	.short	7
	.short	0
	.long	120
	.long	24
	.quad	_$s4main1BCMn
	.quad	0
	.quad	_$s4main1BCAByyF
	.quad	_$s4main1BCACycfC

	.private_extern	"_symbolic _____ 4main1BC"
	.section	__TEXT,__swift5_typeref
	.globl	"_symbolic _____ 4main1BC"
	.weak_definition	"_symbolic _____ 4main1BC"
	.p2align	1, 0x0
"_symbolic _____ 4main1BC":
	.byte	1
	.long	(_$s4main1BCMn-"_symbolic _____ 4main1BC")-1
	.byte	0

	.section	__TEXT,__swift5_fieldmd
	.p2align	2, 0x0
_$s4main1BCMF:
	.long	"_symbolic _____ 4main1BC"-_$s4main1BCMF
	.long	("_symbolic _____ 4main1AC"-_$s4main1BCMF)-4
	.short	1
	.short	12
	.long	0

	.section	__TEXT,__swift5_types
	.p2align	2, 0x0
l_$s4main1ACHn:
	.long	_$s4main1ACMn-l_$s4main1ACHn

	.p2align	2, 0x0
l_$s4main1BCHn:
	.long	_$s4main1BCMn-l_$s4main1BCHn

	.private_extern	___swift_reflection_version
	.section	__TEXT,__const
	.globl	___swift_reflection_version
	.weak_definition	___swift_reflection_version
	.p2align	1, 0x0
___swift_reflection_version:
	.short	3

	.section	__DATA,__objc_classlist,regular,no_dead_strip
	.p2align	3, 0x0
_objc_classes_$s4main1ACN:
	.quad	_$s4main1ACN

	.p2align	3, 0x0
_objc_classes_$s4main1BCN:
	.quad	_$s4main1BCN

	.no_dead_strip	_main
	.no_dead_strip	l_entry_point
	.no_dead_strip	_$s4main1ACMF
	.no_dead_strip	_$s4main1BCMF
	.no_dead_strip	l_$s4main1ACHn
	.no_dead_strip	l_$s4main1BCHn
	.no_dead_strip	___swift_reflection_version
	.no_dead_strip	_objc_classes_$s4main1ACN
	.no_dead_strip	_objc_classes_$s4main1BCN
	.linker_option "-lswiftSwiftOnoneSupport"
	.linker_option "-lswiftCore"
	.linker_option "-lswift_Concurrency"
	.linker_option "-lswift_StringProcessing"
	.linker_option "-lobjc"
	.section	__DATA,__objc_imageinfo,regular,no_dead_strip
L_OBJC_IMAGE_INFO:
	.long	0
	.long	84477760

	.globl	_$s4main1AC1ByyFTq
	.private_extern	_$s4main1AC1ByyFTq
	.alt_entry	_$s4main1AC1ByyFTq
.set _$s4main1AC1ByyFTq, _$s4main1ACMn+52
	.globl	_$s4main1ACACycfCTq
	.private_extern	_$s4main1ACACycfCTq
	.alt_entry	_$s4main1ACACycfCTq
.set _$s4main1ACACycfCTq, _$s4main1ACMn+60
	.globl	_$s4main1ACN
	.private_extern	_$s4main1ACN
	.alt_entry	_$s4main1ACN
.set _$s4main1ACN, _$s4main1ACMf+24
	.globl	_$s4main1BCN
	.private_extern	_$s4main1BCN
	.alt_entry	_$s4main1BCN
.set _$s4main1BCN, _$s4main1BCMf+24
.subsections_via_symbols
