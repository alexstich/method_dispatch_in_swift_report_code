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
	subq	$184, %rsp
	.cfi_offset %r13, -24
	leaq	-24(%rbp), %rdi
	xorl	%esi, %esi
	movl	$16, %edx
	callq	_memset
	leaq	_$s23witness_tables_gen_code8Noisable_pMD(%rip), %rdi
	callq	___swift_instantiateConcreteTypeFromMangledName
	movq	%rax, %rsi
	movq	%rsi, -144(%rbp)
	movl	$5, %edi
	callq	_$ss27_allocateUninitializedArrayySayxG_BptBwlF
	movq	%rax, -152(%rbp)
	movq	%rdx, -160(%rbp)
	callq	_$s23witness_tables_gen_code3CatVACycfC
	movq	-160(%rbp), %rdx
	leaq	_$s23witness_tables_gen_code3CatVMf(%rip), %rcx
	addq	$16, %rcx
	movq	%rcx, 24(%rdx)
	leaq	_$s23witness_tables_gen_code3CatVAA8NoisableAAWP(%rip), %rcx
	movq	%rcx, 32(%rdx)
	movq	%rax, (%rdx)
	callq	_$s23witness_tables_gen_code3CatVACycfC
	movq	-160(%rbp), %rdx
	leaq	_$s23witness_tables_gen_code3CatVMf(%rip), %rcx
	addq	$16, %rcx
	movq	%rcx, 64(%rdx)
	leaq	_$s23witness_tables_gen_code3CatVAA8NoisableAAWP(%rip), %rcx
	movq	%rcx, 72(%rdx)
	movq	%rax, 40(%rdx)
	callq	_$s23witness_tables_gen_code3DogVACycfC
	movq	-160(%rbp), %rdx
	leaq	_$s23witness_tables_gen_code3DogVMf(%rip), %rcx
	addq	$16, %rcx
	movq	%rcx, 104(%rdx)
	leaq	_$s23witness_tables_gen_code3DogVAA8NoisableAAWP(%rip), %rcx
	movq	%rcx, 112(%rdx)
	movq	%rax, 80(%rdx)
	callq	_$s23witness_tables_gen_code3DogVACycfC
	movq	-160(%rbp), %rdx
	leaq	_$s23witness_tables_gen_code3DogVMf(%rip), %rcx
	addq	$16, %rcx
	movq	%rcx, 144(%rdx)
	leaq	_$s23witness_tables_gen_code3DogVAA8NoisableAAWP(%rip), %rcx
	movq	%rcx, 152(%rdx)
	movq	%rax, 120(%rdx)
	callq	_$s23witness_tables_gen_code3CatVACycfC
	movq	-160(%rbp), %rdx
	movq	-152(%rbp), %rdi
	movq	-144(%rbp), %rsi
	leaq	_$s23witness_tables_gen_code3CatVMf(%rip), %rcx
	addq	$16, %rcx
	movq	%rcx, 184(%rdx)
	leaq	_$s23witness_tables_gen_code3CatVAA8NoisableAAWP(%rip), %rcx
	movq	%rcx, 192(%rdx)
	movq	%rax, 160(%rdx)
	callq	_$ss27_finalizeUninitializedArrayySayxGABnlF
	movq	%rax, _$s23witness_tables_gen_code7animalsSayAA8Noisable_pGvp(%rip)
	movq	_$s23witness_tables_gen_code7animalsSayAA8Noisable_pGvp(%rip), %rdi
	movq	%rdi, -136(%rbp)
	callq	_swift_bridgeObjectRetain
	movq	-136(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)
	leaq	_$sSay23witness_tables_gen_code8Noisable_pGMD(%rip), %rdi
	callq	___swift_instantiateConcreteTypeFromMangledName
	movq	%rax, -128(%rbp)
	callq	_$sSay23witness_tables_gen_code8Noisable_pGSayxGSlsWl
	movq	-128(%rbp), %rdi
	movq	%rax, %rsi
	movq	-120(%rbp), %rax
	leaq	-32(%rbp), %r13
	callq	_$sSlss16IndexingIteratorVyxG0B0RtzrlE04makeB0ACyF
LBB0_1:
	leaq	-72(%rbp), %rax
	movq	%rax, -168(%rbp)
	leaq	_$ss16IndexingIteratorVySay23witness_tables_gen_code8Noisable_pGGMD(%rip), %rdi
	callq	___swift_instantiateConcreteTypeFromMangledName
	movq	%rax, %rdi
	movq	-168(%rbp), %rax
	leaq	-24(%rbp), %r13
	callq	_$ss16IndexingIteratorV4next7ElementQzSgyF
	cmpq	$0, -48(%rbp)
	jne	LBB0_3
	leaq	-24(%rbp), %rdi
	callq	_$ss16IndexingIteratorVySay23witness_tables_gen_code8Noisable_pGGWOh
	xorl	%eax, %eax
	addq	$184, %rsp
	popq	%r13
	popq	%rbp
	retq
LBB0_3:
	leaq	-72(%rbp), %rdi
	leaq	-112(%rbp), %rsi
	callq	_$s23witness_tables_gen_code8Noisable_pWOb
	movq	-88(%rbp), %rsi
	movq	%rsi, -184(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -176(%rbp)
	leaq	-112(%rbp), %rdi
	callq	___swift_project_boxed_opaque_existential_1
	movq	-184(%rbp), %rdi
	movq	%rax, %r13
	movq	-176(%rbp), %rax
	movq	%rax, %rsi
	callq	*16(%rax)
	leaq	-112(%rbp), %rdi
	callq	___swift_destroy_boxed_opaque_existential_1
	jmp	LBB0_1
	.cfi_endproc

	.private_extern	___swift_instantiateConcreteTypeFromMangledName
	.globl	___swift_instantiateConcreteTypeFromMangledName
	.weak_definition	___swift_instantiateConcreteTypeFromMangledName
	.p2align	4, 0x90
___swift_instantiateConcreteTypeFromMangledName:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -32(%rbp)
	movq	%rdi, %rax
	movq	%rax, -24(%rbp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	setl	%cl
	testb	$1, %cl
	movq	%rax, -8(%rbp)
	jne	LBB1_2
LBB1_1:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
LBB1_2:
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	sarq	$32, %rsi
	negq	%rsi
	cltq
	addq	%rax, %rdi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	callq	_swift_getTypeByMangledNameInContext2
	movq	-24(%rbp), %rcx
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rdx, (%rcx)
	movq	%rax, -8(%rbp)
	jmp	LBB1_1

	.private_extern	_$s23witness_tables_gen_code3CatV6volumeSivpfi
	.globl	_$s23witness_tables_gen_code3CatV6volumeSivpfi
	.p2align	4, 0x90
_$s23witness_tables_gen_code3CatV6volumeSivpfi:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$1, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.private_extern	_$s23witness_tables_gen_code3CatV6volumeSivg
	.globl	_$s23witness_tables_gen_code3CatV6volumeSivg
	.p2align	4, 0x90
_$s23witness_tables_gen_code3CatV6volumeSivg:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rax
	popq	%rbp
	retq
	.cfi_endproc

	.private_extern	_$s23witness_tables_gen_code3CatV6volumeSivs
	.globl	_$s23witness_tables_gen_code3CatV6volumeSivs
	.p2align	4, 0x90
_$s23witness_tables_gen_code3CatV6volumeSivs:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, (%r13)
	popq	%rbp
	retq
	.cfi_endproc

	.private_extern	_$s23witness_tables_gen_code3CatV6volumeSivM
	.globl	_$s23witness_tables_gen_code3CatV6volumeSivM
	.p2align	4, 0x90
_$s23witness_tables_gen_code3CatV6volumeSivM:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%r13, %rdx
	leaq	_$s23witness_tables_gen_code3CatV6volumeSivM.resume.0(%rip), %rax
	popq	%rbp
	retq
	.cfi_endproc

	.p2align	4, 0x90
_$s23witness_tables_gen_code3CatV6volumeSivM.resume.0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	popq	%rbp
	retq
	.cfi_endproc

	.private_extern	_$s23witness_tables_gen_code3CatV9makeNoiseyyF
	.globl	_$s23witness_tables_gen_code3CatV9makeNoiseyyF
	.p2align	4, 0x90
_$s23witness_tables_gen_code3CatV9makeNoiseyyF:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	$0, -8(%rbp)
	movq	%rdi, -8(%rbp)
	movq	_$sypN@GOTPCREL(%rip), %rsi
	addq	$8, %rsi
	movq	%rsi, -56(%rbp)
	movl	$1, %edi
	callq	_$ss27_allocateUninitializedArrayySayxG_BptBwlF
	movq	%rax, -64(%rbp)
	movq	%rdx, -48(%rbp)
	leaq	L_.str.4.meow(%rip), %rdi
	movl	$4, %esi
	movl	$1, %edx
	callq	_$sSS21_builtinStringLiteral17utf8CodeUnitCount7isASCIISSBp_BwBi1_tcfC
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	%rax, %rcx
	movq	%rdx, %rax
	movq	-48(%rbp), %rdx
	movq	_$sSSN@GOTPCREL(%rip), %r8
	movq	%r8, 24(%rdx)
	movq	%rcx, (%rdx)
	movq	%rax, 8(%rdx)
	callq	_$ss27_finalizeUninitializedArrayySayxGABnlF
	movq	%rax, -16(%rbp)
	callq	_$ss5print_9separator10terminatoryypd_S2StFfA0_
	movq	%rax, -40(%rbp)
	movq	%rdx, -24(%rbp)
	callq	_$ss5print_9separator10terminatoryypd_S2StFfA1_
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rax, %rcx
	movq	%rdx, %r8
	movq	-24(%rbp), %rdx
	movq	%r8, -32(%rbp)
	callq	_$ss5print_9separator10terminatoryypd_S2StF
	movq	-32(%rbp), %rdi
	callq	_swift_bridgeObjectRelease
	movq	-24(%rbp), %rdi
	callq	_swift_bridgeObjectRelease
	movq	-16(%rbp), %rdi
	callq	_swift_bridgeObjectRelease
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.private_extern	_$ss27_finalizeUninitializedArrayySayxGABnlF
	.globl	_$ss27_finalizeUninitializedArrayySayxGABnlF
	.weak_definition	_$ss27_finalizeUninitializedArrayySayxGABnlF
	.p2align	4, 0x90
_$ss27_finalizeUninitializedArrayySayxGABnlF:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r13
	subq	$24, %rsp
	.cfi_offset %r13, -24
	movq	%rsi, -16(%rbp)
	movq	%rdi, -24(%rbp)
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	_$sSaMa
	movq	%rax, %rdi
	leaq	-24(%rbp), %r13
	callq	_$sSa12_endMutationyyF
	movq	-24(%rbp), %rax
	addq	$24, %rsp
	popq	%r13
	popq	%rbp
	retq
	.cfi_endproc

	.private_extern	_$ss5print_9separator10terminatoryypd_S2StFfA0_
	.globl	_$ss5print_9separator10terminatoryypd_S2StFfA0_
	.weak_definition	_$ss5print_9separator10terminatoryypd_S2StFfA0_
	.p2align	4, 0x90
_$ss5print_9separator10terminatoryypd_S2StFfA0_:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	leaq	"L_.str.1. "(%rip), %rdi
	movl	$1, %esi
	movl	$1, %edx
	callq	_$sSS21_builtinStringLiteral17utf8CodeUnitCount7isASCIISSBp_BwBi1_tcfC
	popq	%rbp
	retq
	.cfi_endproc

	.private_extern	_$ss5print_9separator10terminatoryypd_S2StFfA1_
	.globl	_$ss5print_9separator10terminatoryypd_S2StFfA1_
	.weak_definition	_$ss5print_9separator10terminatoryypd_S2StFfA1_
	.p2align	4, 0x90
_$ss5print_9separator10terminatoryypd_S2StFfA1_:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	leaq	"L_.str.1.\n"(%rip), %rdi
	movl	$1, %esi
	movl	$1, %edx
	callq	_$sSS21_builtinStringLiteral17utf8CodeUnitCount7isASCIISSBp_BwBi1_tcfC
	popq	%rbp
	retq
	.cfi_endproc

	.private_extern	_$s23witness_tables_gen_code3CatV8makeMrrryyF
	.globl	_$s23witness_tables_gen_code3CatV8makeMrrryyF
	.p2align	4, 0x90
_$s23witness_tables_gen_code3CatV8makeMrrryyF:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	$0, -8(%rbp)
	movq	%rdi, -8(%rbp)
	movq	_$sypN@GOTPCREL(%rip), %rsi
	addq	$8, %rsi
	movq	%rsi, -56(%rbp)
	movl	$1, %edi
	callq	_$ss27_allocateUninitializedArrayySayxG_BptBwlF
	movq	%rax, -64(%rbp)
	movq	%rdx, -48(%rbp)
	leaq	L_.str.4.mrrr(%rip), %rdi
	movl	$4, %esi
	movl	$1, %edx
	callq	_$sSS21_builtinStringLiteral17utf8CodeUnitCount7isASCIISSBp_BwBi1_tcfC
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	%rax, %rcx
	movq	%rdx, %rax
	movq	-48(%rbp), %rdx
	movq	_$sSSN@GOTPCREL(%rip), %r8
	movq	%r8, 24(%rdx)
	movq	%rcx, (%rdx)
	movq	%rax, 8(%rdx)
	callq	_$ss27_finalizeUninitializedArrayySayxGABnlF
	movq	%rax, -16(%rbp)
	callq	_$ss5print_9separator10terminatoryypd_S2StFfA0_
	movq	%rax, -40(%rbp)
	movq	%rdx, -24(%rbp)
	callq	_$ss5print_9separator10terminatoryypd_S2StFfA1_
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rax, %rcx
	movq	%rdx, %r8
	movq	-24(%rbp), %rdx
	movq	%r8, -32(%rbp)
	callq	_$ss5print_9separator10terminatoryypd_S2StF
	movq	-32(%rbp), %rdi
	callq	_swift_bridgeObjectRelease
	movq	-24(%rbp), %rdi
	callq	_swift_bridgeObjectRelease
	movq	-16(%rbp), %rdi
	callq	_swift_bridgeObjectRelease
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.private_extern	_$s23witness_tables_gen_code3CatVACycfC
	.globl	_$s23witness_tables_gen_code3CatVACycfC
	.p2align	4, 0x90
_$s23witness_tables_gen_code3CatVACycfC:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	$0, -8(%rbp)
	movq	$1, -8(%rbp)
	movl	$1, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.private_extern	_$s23witness_tables_gen_code3CatV6volumeACSi_tcfcfA_
	.globl	_$s23witness_tables_gen_code3CatV6volumeACSi_tcfcfA_
	.p2align	4, 0x90
_$s23witness_tables_gen_code3CatV6volumeACSi_tcfcfA_:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$1, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.private_extern	_$s23witness_tables_gen_code3CatV6volumeACSi_tcfC
	.globl	_$s23witness_tables_gen_code3CatV6volumeACSi_tcfC
	.p2align	4, 0x90
_$s23witness_tables_gen_code3CatV6volumeACSi_tcfC:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rax
	popq	%rbp
	retq
	.cfi_endproc

	.p2align	4, 0x90
_$s23witness_tables_gen_code3CatVAA8NoisableA2aDP6volumeSivgTW:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	(%r13), %rdi
	callq	_$s23witness_tables_gen_code3CatV6volumeSivg
	popq	%rbp
	retq
	.cfi_endproc

	.p2align	4, 0x90
_$s23witness_tables_gen_code3CatVAA8NoisableA2aDP9makeNoiseyyFTW:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	(%r13), %rdi
	callq	_$s23witness_tables_gen_code3CatV9makeNoiseyyF
	popq	%rbp
	retq
	.cfi_endproc

	.p2align	4, 0x90
_$s23witness_tables_gen_code3CatVAA7CutableA2aDP8makeMrrryyFTW:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	(%r13), %rdi
	callq	_$s23witness_tables_gen_code3CatV8makeMrrryyF
	popq	%rbp
	retq
	.cfi_endproc

	.private_extern	_$s23witness_tables_gen_code3DogV6volumeSivpfi
	.globl	_$s23witness_tables_gen_code3DogV6volumeSivpfi
	.p2align	4, 0x90
_$s23witness_tables_gen_code3DogV6volumeSivpfi:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$6, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.private_extern	_$s23witness_tables_gen_code3DogV6volumeSivg
	.globl	_$s23witness_tables_gen_code3DogV6volumeSivg
	.p2align	4, 0x90
_$s23witness_tables_gen_code3DogV6volumeSivg:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rax
	popq	%rbp
	retq
	.cfi_endproc

	.private_extern	_$s23witness_tables_gen_code3DogV6volumeSivs
	.globl	_$s23witness_tables_gen_code3DogV6volumeSivs
	.p2align	4, 0x90
_$s23witness_tables_gen_code3DogV6volumeSivs:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, (%r13)
	popq	%rbp
	retq
	.cfi_endproc

	.private_extern	_$s23witness_tables_gen_code3DogV6volumeSivM
	.globl	_$s23witness_tables_gen_code3DogV6volumeSivM
	.p2align	4, 0x90
_$s23witness_tables_gen_code3DogV6volumeSivM:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%r13, %rdx
	leaq	_$s23witness_tables_gen_code3DogV6volumeSivM.resume.0(%rip), %rax
	popq	%rbp
	retq
	.cfi_endproc

	.p2align	4, 0x90
_$s23witness_tables_gen_code3DogV6volumeSivM.resume.0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	popq	%rbp
	retq
	.cfi_endproc

	.private_extern	_$s23witness_tables_gen_code3DogV9makeNoiseyyF
	.globl	_$s23witness_tables_gen_code3DogV9makeNoiseyyF
	.p2align	4, 0x90
_$s23witness_tables_gen_code3DogV9makeNoiseyyF:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	$0, -8(%rbp)
	movq	%rdi, -8(%rbp)
	movq	_$sypN@GOTPCREL(%rip), %rsi
	addq	$8, %rsi
	movq	%rsi, -56(%rbp)
	movl	$1, %edi
	callq	_$ss27_allocateUninitializedArrayySayxG_BptBwlF
	movq	%rax, -64(%rbp)
	movq	%rdx, -48(%rbp)
	leaq	L_.str.4.woof(%rip), %rdi
	movl	$4, %esi
	movl	$1, %edx
	callq	_$sSS21_builtinStringLiteral17utf8CodeUnitCount7isASCIISSBp_BwBi1_tcfC
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	%rax, %rcx
	movq	%rdx, %rax
	movq	-48(%rbp), %rdx
	movq	_$sSSN@GOTPCREL(%rip), %r8
	movq	%r8, 24(%rdx)
	movq	%rcx, (%rdx)
	movq	%rax, 8(%rdx)
	callq	_$ss27_finalizeUninitializedArrayySayxGABnlF
	movq	%rax, -16(%rbp)
	callq	_$ss5print_9separator10terminatoryypd_S2StFfA0_
	movq	%rax, -40(%rbp)
	movq	%rdx, -24(%rbp)
	callq	_$ss5print_9separator10terminatoryypd_S2StFfA1_
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rax, %rcx
	movq	%rdx, %r8
	movq	-24(%rbp), %rdx
	movq	%r8, -32(%rbp)
	callq	_$ss5print_9separator10terminatoryypd_S2StF
	movq	-32(%rbp), %rdi
	callq	_swift_bridgeObjectRelease
	movq	-24(%rbp), %rdi
	callq	_swift_bridgeObjectRelease
	movq	-16(%rbp), %rdi
	callq	_swift_bridgeObjectRelease
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.private_extern	_$s23witness_tables_gen_code3DogVACycfC
	.globl	_$s23witness_tables_gen_code3DogVACycfC
	.p2align	4, 0x90
_$s23witness_tables_gen_code3DogVACycfC:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	$0, -8(%rbp)
	movq	$6, -8(%rbp)
	movl	$6, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.private_extern	_$sSay23witness_tables_gen_code8Noisable_pGSayxGSlsWl
	.globl	_$sSay23witness_tables_gen_code8Noisable_pGSayxGSlsWl
	.weak_definition	_$sSay23witness_tables_gen_code8Noisable_pGSayxGSlsWl
	.p2align	4, 0x90
_$sSay23witness_tables_gen_code8Noisable_pGSayxGSlsWl:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	_$sSay23witness_tables_gen_code8Noisable_pGSayxGSlsWL(%rip), %rax
	cmpq	$0, %rax
	movq	%rax, -8(%rbp)
	jne	LBB25_2
	leaq	_$sSay23witness_tables_gen_code8Noisable_pGMD(%rip), %rdi
	callq	___swift_instantiateConcreteTypeFromMangledNameAbstract
	movq	%rax, %rsi
	movq	_$sSayxGSlsMc@GOTPCREL(%rip), %rdi
	callq	_swift_getWitnessTable
	movq	%rax, %rcx
	movq	%rcx, %rax
	movq	%rcx, _$sSay23witness_tables_gen_code8Noisable_pGSayxGSlsWL(%rip)
	movq	%rax, -8(%rbp)
LBB25_2:
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq

	.private_extern	___swift_instantiateConcreteTypeFromMangledNameAbstract
	.globl	___swift_instantiateConcreteTypeFromMangledNameAbstract
	.weak_definition	___swift_instantiateConcreteTypeFromMangledNameAbstract
	.p2align	4, 0x90
___swift_instantiateConcreteTypeFromMangledNameAbstract:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -32(%rbp)
	movq	%rdi, %rax
	movq	%rax, -24(%rbp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	setl	%cl
	testb	$1, %cl
	movq	%rax, -8(%rbp)
	jne	LBB26_2
LBB26_1:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
LBB26_2:
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	sarq	$32, %rdx
	negq	%rdx
	cltq
	addq	%rax, %rsi
	xorl	%eax, %eax
	movl	%eax, %r8d
	movl	$255, %edi
	movq	%r8, %rcx
	callq	_swift_getTypeByMangledNameInContextInMetadataState2
	movq	-24(%rbp), %rcx
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rdx, (%rcx)
	movq	%rax, -8(%rbp)
	jmp	LBB26_1

	.private_extern	_$ss16IndexingIteratorVySay23witness_tables_gen_code8Noisable_pGGWOh
	.globl	_$ss16IndexingIteratorVySay23witness_tables_gen_code8Noisable_pGGWOh
	.weak_definition	_$ss16IndexingIteratorVySay23witness_tables_gen_code8Noisable_pGGWOh
	.p2align	4, 0x90
_$ss16IndexingIteratorVySay23witness_tables_gen_code8Noisable_pGGWOh:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	(%rdi), %rdi
	callq	_swift_bridgeObjectRelease
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq

	.private_extern	_$s23witness_tables_gen_code8Noisable_pWOb
	.globl	_$s23witness_tables_gen_code8Noisable_pWOb
	.weak_definition	_$s23witness_tables_gen_code8Noisable_pWOb
	.p2align	4, 0x90
_$s23witness_tables_gen_code8Noisable_pWOb:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rsi, -16(%rbp)
	movq	%rdi, %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	movl	$40, %edx
	callq	_memcpy
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq

	.private_extern	___swift_project_boxed_opaque_existential_1
	.globl	___swift_project_boxed_opaque_existential_1
	.weak_definition	___swift_project_boxed_opaque_existential_1
	.p2align	4, 0x90
___swift_project_boxed_opaque_existential_1:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -16(%rbp)
	movq	-8(%rsi), %rax
	movl	80(%rax), %eax
	movl	%eax, -4(%rbp)
	andl	$131072, %eax
	cmpl	$0, %eax
	jne	LBB29_2
	movq	-16(%rbp), %rax
	popq	%rbp
	retq
LBB29_2:
	movl	-4(%rbp), %ecx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	%ecx, %ecx
	movl	%ecx, %edx
	andq	$255, %rdx
	movq	%rdx, %rcx
	addq	$16, %rcx
	xorq	$-1, %rdx
	andq	%rdx, %rcx
	addq	%rcx, %rax
	popq	%rbp
	retq

	.private_extern	___swift_destroy_boxed_opaque_existential_1
	.globl	___swift_destroy_boxed_opaque_existential_1
	.weak_definition	___swift_destroy_boxed_opaque_existential_1
	.p2align	4, 0x90
___swift_destroy_boxed_opaque_existential_1:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	24(%rdi), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rax), %rax
	movl	80(%rax), %eax
	andl	$131072, %eax
	cmpl	$0, %eax
	jne	LBB30_2
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	-8(%rsi), %rax
	callq	*8(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
LBB30_2:
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	_swift_release
	addq	$16, %rsp
	popq	%rbp
	retq

	.private_extern	_$s23witness_tables_gen_code3DogV6volumeACSi_tcfcfA_
	.globl	_$s23witness_tables_gen_code3DogV6volumeACSi_tcfcfA_
	.p2align	4, 0x90
_$s23witness_tables_gen_code3DogV6volumeACSi_tcfcfA_:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$6, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.private_extern	_$s23witness_tables_gen_code3DogV6volumeACSi_tcfC
	.globl	_$s23witness_tables_gen_code3DogV6volumeACSi_tcfC
	.p2align	4, 0x90
_$s23witness_tables_gen_code3DogV6volumeACSi_tcfC:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rax
	popq	%rbp
	retq
	.cfi_endproc

	.p2align	4, 0x90
_$s23witness_tables_gen_code3DogVAA8NoisableA2aDP6volumeSivgTW:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	(%r13), %rdi
	callq	_$s23witness_tables_gen_code3DogV6volumeSivg
	popq	%rbp
	retq
	.cfi_endproc

	.p2align	4, 0x90
_$s23witness_tables_gen_code3DogVAA8NoisableA2aDP9makeNoiseyyFTW:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	(%r13), %rdi
	callq	_$s23witness_tables_gen_code3DogV9makeNoiseyyF
	popq	%rbp
	retq
	.cfi_endproc

	.private_extern	_$s23witness_tables_gen_code3CatVMa
	.globl	_$s23witness_tables_gen_code3CatVMa
	.p2align	4, 0x90
_$s23witness_tables_gen_code3CatVMa:
	leaq	_$s23witness_tables_gen_code3CatVMf+16(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	retq

	.private_extern	_$s23witness_tables_gen_code3DogVMa
	.globl	_$s23witness_tables_gen_code3DogVMa
	.p2align	4, 0x90
_$s23witness_tables_gen_code3DogVMa:
	leaq	_$s23witness_tables_gen_code3DogVMf+16(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	retq

	.private_extern	_$sSa12_endMutationyyF
	.globl	_$sSa12_endMutationyyF
	.weak_definition	_$sSa12_endMutationyyF
	.p2align	4, 0x90
_$sSa12_endMutationyyF:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	popq	%rbp
	retq
	.cfi_endproc

	.private_extern	_$s23witness_tables_gen_code7animalsSayAA8Noisable_pGvp
	.globl	_$s23witness_tables_gen_code7animalsSayAA8Noisable_pGvp
.zerofill __DATA,__common,_$s23witness_tables_gen_code7animalsSayAA8Noisable_pGvp,8,3
	.private_extern	"_symbolic ______p 23witness_tables_gen_code8NoisableP"
	.section	__TEXT,__swift5_typeref
	.globl	"_symbolic ______p 23witness_tables_gen_code8NoisableP"
	.weak_definition	"_symbolic ______p 23witness_tables_gen_code8NoisableP"
	.p2align	1, 0x0
"_symbolic ______p 23witness_tables_gen_code8NoisableP":
	.byte	1
	.long	(_$s23witness_tables_gen_code8NoisableMp-"_symbolic ______p 23witness_tables_gen_code8NoisableP")-1
	.ascii	"_p"
	.byte	0

	.private_extern	_$s23witness_tables_gen_code8Noisable_pMD
	.section	__DATA,__data
	.globl	_$s23witness_tables_gen_code8Noisable_pMD
	.weak_definition	_$s23witness_tables_gen_code8Noisable_pMD
	.p2align	3, 0x0
_$s23witness_tables_gen_code8Noisable_pMD:
	.long	"_symbolic ______p 23witness_tables_gen_code8NoisableP"-_$s23witness_tables_gen_code8Noisable_pMD
	.long	4294967289

	.private_extern	"_symbolic Say______pG 23witness_tables_gen_code8NoisableP"
	.section	__TEXT,__swift5_typeref
	.globl	"_symbolic Say______pG 23witness_tables_gen_code8NoisableP"
	.weak_definition	"_symbolic Say______pG 23witness_tables_gen_code8NoisableP"
	.p2align	1, 0x0
"_symbolic Say______pG 23witness_tables_gen_code8NoisableP":
	.ascii	"Say"
	.byte	1
	.long	(_$s23witness_tables_gen_code8NoisableMp-"_symbolic Say______pG 23witness_tables_gen_code8NoisableP")-4
	.ascii	"_pG"
	.byte	0

	.private_extern	_$sSay23witness_tables_gen_code8Noisable_pGMD
	.section	__DATA,__data
	.globl	_$sSay23witness_tables_gen_code8Noisable_pGMD
	.weak_definition	_$sSay23witness_tables_gen_code8Noisable_pGMD
	.p2align	3, 0x0
_$sSay23witness_tables_gen_code8Noisable_pGMD:
	.long	"_symbolic Say______pG 23witness_tables_gen_code8NoisableP"-_$sSay23witness_tables_gen_code8Noisable_pGMD
	.long	4294967285

	.private_extern	_$sSay23witness_tables_gen_code8Noisable_pGSayxGSlsWL
	.globl	_$sSay23witness_tables_gen_code8Noisable_pGSayxGSlsWL
	.weak_definition	_$sSay23witness_tables_gen_code8Noisable_pGSayxGSlsWL
	.p2align	3, 0x0
_$sSay23witness_tables_gen_code8Noisable_pGSayxGSlsWL:
	.quad	0

	.private_extern	"_symbolic _____ySay______pGG s16IndexingIteratorV 23witness_tables_gen_code8NoisableP"
	.section	__TEXT,__swift5_typeref
	.globl	"_symbolic _____ySay______pGG s16IndexingIteratorV 23witness_tables_gen_code8NoisableP"
	.weak_definition	"_symbolic _____ySay______pGG s16IndexingIteratorV 23witness_tables_gen_code8NoisableP"
	.p2align	1, 0x0
"_symbolic _____ySay______pGG s16IndexingIteratorV 23witness_tables_gen_code8NoisableP":
	.byte	2
	.long	_$ss16IndexingIteratorVMn@GOTPCREL+4
	.ascii	"ySay"
	.byte	1
	.long	(_$s23witness_tables_gen_code8NoisableMp-"_symbolic _____ySay______pGG s16IndexingIteratorV 23witness_tables_gen_code8NoisableP")-10
	.ascii	"_pGG"
	.byte	0

	.private_extern	_$ss16IndexingIteratorVySay23witness_tables_gen_code8Noisable_pGGMD
	.section	__DATA,__data
	.globl	_$ss16IndexingIteratorVySay23witness_tables_gen_code8Noisable_pGGMD
	.weak_definition	_$ss16IndexingIteratorVySay23witness_tables_gen_code8Noisable_pGGMD
	.p2align	3, 0x0
_$ss16IndexingIteratorVySay23witness_tables_gen_code8Noisable_pGGMD:
	.long	"_symbolic _____ySay______pGG s16IndexingIteratorV 23witness_tables_gen_code8NoisableP"-_$ss16IndexingIteratorVySay23witness_tables_gen_code8Noisable_pGGMD
	.long	4294967278

	.section	__TEXT,__cstring,cstring_literals
L_.str.4.meow:
	.asciz	"meow"

L_.str.4.mrrr:
	.asciz	"mrrr"

L_.str.4.woof:
	.asciz	"woof"

	.private_extern	_$s23witness_tables_gen_code3CatVAA8NoisableAAMc
	.section	__TEXT,__const
	.globl	_$s23witness_tables_gen_code3CatVAA8NoisableAAMc
	.p2align	2, 0x0
_$s23witness_tables_gen_code3CatVAA8NoisableAAMc:
	.long	_$s23witness_tables_gen_code8NoisableMp-_$s23witness_tables_gen_code3CatVAA8NoisableAAMc
	.long	(_$s23witness_tables_gen_code3CatVMn-_$s23witness_tables_gen_code3CatVAA8NoisableAAMc)-4
	.long	(_$s23witness_tables_gen_code3CatVAA8NoisableAAWP-_$s23witness_tables_gen_code3CatVAA8NoisableAAMc)-8
	.long	0

	.private_extern	_$s23witness_tables_gen_code3CatVAA8NoisableAAWP
	.section	__DATA,__const
	.globl	_$s23witness_tables_gen_code3CatVAA8NoisableAAWP
	.p2align	3, 0x0
_$s23witness_tables_gen_code3CatVAA8NoisableAAWP:
	.quad	_$s23witness_tables_gen_code3CatVAA8NoisableAAMc
	.quad	_$s23witness_tables_gen_code3CatVAA8NoisableA2aDP6volumeSivgTW
	.quad	_$s23witness_tables_gen_code3CatVAA8NoisableA2aDP9makeNoiseyyFTW

	.private_extern	_$s23witness_tables_gen_code3CatVAA7CutableAAMc
	.section	__TEXT,__const
	.globl	_$s23witness_tables_gen_code3CatVAA7CutableAAMc
	.p2align	2, 0x0
_$s23witness_tables_gen_code3CatVAA7CutableAAMc:
	.long	_$s23witness_tables_gen_code7CutableMp-_$s23witness_tables_gen_code3CatVAA7CutableAAMc
	.long	(_$s23witness_tables_gen_code3CatVMn-_$s23witness_tables_gen_code3CatVAA7CutableAAMc)-4
	.long	(_$s23witness_tables_gen_code3CatVAA7CutableAAWP-_$s23witness_tables_gen_code3CatVAA7CutableAAMc)-8
	.long	0

	.private_extern	_$s23witness_tables_gen_code3CatVAA7CutableAAWP
	.section	__DATA,__const
	.globl	_$s23witness_tables_gen_code3CatVAA7CutableAAWP
	.p2align	3, 0x0
_$s23witness_tables_gen_code3CatVAA7CutableAAWP:
	.quad	_$s23witness_tables_gen_code3CatVAA7CutableAAMc
	.quad	_$s23witness_tables_gen_code3CatVAA7CutableA2aDP8makeMrrryyFTW

	.private_extern	_$s23witness_tables_gen_code3DogVAA8NoisableAAMc
	.section	__TEXT,__const
	.globl	_$s23witness_tables_gen_code3DogVAA8NoisableAAMc
	.p2align	2, 0x0
_$s23witness_tables_gen_code3DogVAA8NoisableAAMc:
	.long	_$s23witness_tables_gen_code8NoisableMp-_$s23witness_tables_gen_code3DogVAA8NoisableAAMc
	.long	(_$s23witness_tables_gen_code3DogVMn-_$s23witness_tables_gen_code3DogVAA8NoisableAAMc)-4
	.long	(_$s23witness_tables_gen_code3DogVAA8NoisableAAWP-_$s23witness_tables_gen_code3DogVAA8NoisableAAMc)-8
	.long	0

	.private_extern	_$s23witness_tables_gen_code3DogVAA8NoisableAAWP
	.section	__DATA,__const
	.globl	_$s23witness_tables_gen_code3DogVAA8NoisableAAWP
	.p2align	3, 0x0
_$s23witness_tables_gen_code3DogVAA8NoisableAAWP:
	.quad	_$s23witness_tables_gen_code3DogVAA8NoisableAAMc
	.quad	_$s23witness_tables_gen_code3DogVAA8NoisableA2aDP6volumeSivgTW
	.quad	_$s23witness_tables_gen_code3DogVAA8NoisableA2aDP9makeNoiseyyFTW

	.section	__TEXT,__swift5_entry,regular,no_dead_strip
	.p2align	2, 0x0
l_entry_point:
	.long	_main-l_entry_point
	.long	0

	.private_extern	"_symbolic $s23witness_tables_gen_code8NoisableP"
	.section	__TEXT,__swift5_typeref
	.globl	"_symbolic $s23witness_tables_gen_code8NoisableP"
	.weak_definition	"_symbolic $s23witness_tables_gen_code8NoisableP"
	.p2align	1, 0x0
"_symbolic $s23witness_tables_gen_code8NoisableP":
	.ascii	"$s23witness_tables_gen_code8NoisableP"
	.byte	0

	.section	__TEXT,__swift5_fieldmd
	.p2align	2, 0x0
_$s23witness_tables_gen_code8Noisable_pMF:
	.long	"_symbolic $s23witness_tables_gen_code8NoisableP"-_$s23witness_tables_gen_code8Noisable_pMF
	.long	0
	.short	4
	.short	12
	.long	0

	.section	__TEXT,__const
	.p2align	4, 0x0
l_.str.23.witness_tables_gen_code:
	.asciz	"witness_tables_gen_code"

	.private_extern	_$s23witness_tables_gen_codeMXM
	.section	__TEXT,__constg_swiftt
	.globl	_$s23witness_tables_gen_codeMXM
	.weak_definition	_$s23witness_tables_gen_codeMXM
	.p2align	2, 0x0
_$s23witness_tables_gen_codeMXM:
	.long	0
	.long	0
	.long	(l_.str.23.witness_tables_gen_code-_$s23witness_tables_gen_codeMXM)-8

	.section	__TEXT,__const
l_.str.8.Noisable:
	.asciz	"Noisable"

	.private_extern	_$s23witness_tables_gen_code8NoisableMp
	.section	__TEXT,__constg_swiftt
	.globl	_$s23witness_tables_gen_code8NoisableMp
	.p2align	2, 0x0
_$s23witness_tables_gen_code8NoisableMp:
	.long	65603
	.long	(_$s23witness_tables_gen_codeMXM-_$s23witness_tables_gen_code8NoisableMp)-4
	.long	(l_.str.8.Noisable-_$s23witness_tables_gen_code8NoisableMp)-8
	.long	0
	.long	2
	.long	0
	.long	19
	.long	0
	.long	17
	.long	0

	.private_extern	"_symbolic $s23witness_tables_gen_code7CutableP"
	.section	__TEXT,__swift5_typeref
	.globl	"_symbolic $s23witness_tables_gen_code7CutableP"
	.weak_definition	"_symbolic $s23witness_tables_gen_code7CutableP"
	.p2align	1, 0x0
"_symbolic $s23witness_tables_gen_code7CutableP":
	.ascii	"$s23witness_tables_gen_code7CutableP"
	.byte	0

	.section	__TEXT,__swift5_fieldmd
	.p2align	2, 0x0
_$s23witness_tables_gen_code7Cutable_pMF:
	.long	"_symbolic $s23witness_tables_gen_code7CutableP"-_$s23witness_tables_gen_code7Cutable_pMF
	.long	0
	.short	4
	.short	12
	.long	0

	.section	__TEXT,__const
l_.str.7.Cutable:
	.asciz	"Cutable"

	.private_extern	_$s23witness_tables_gen_code7CutableMp
	.section	__TEXT,__constg_swiftt
	.globl	_$s23witness_tables_gen_code7CutableMp
	.p2align	2, 0x0
_$s23witness_tables_gen_code7CutableMp:
	.long	65603
	.long	(_$s23witness_tables_gen_codeMXM-_$s23witness_tables_gen_code7CutableMp)-4
	.long	(l_.str.7.Cutable-_$s23witness_tables_gen_code7CutableMp)-8
	.long	0
	.long	1
	.long	0
	.long	17
	.long	0

	.section	__TEXT,__const
l_.str.3.Cat:
	.asciz	"Cat"

	.private_extern	_$s23witness_tables_gen_code3CatVMn
	.section	__TEXT,__constg_swiftt
	.globl	_$s23witness_tables_gen_code3CatVMn
	.p2align	2, 0x0
_$s23witness_tables_gen_code3CatVMn:
	.long	81
	.long	(_$s23witness_tables_gen_codeMXM-_$s23witness_tables_gen_code3CatVMn)-4
	.long	(l_.str.3.Cat-_$s23witness_tables_gen_code3CatVMn)-8
	.long	(_$s23witness_tables_gen_code3CatVMa-_$s23witness_tables_gen_code3CatVMn)-12
	.long	(_$s23witness_tables_gen_code3CatVMF-_$s23witness_tables_gen_code3CatVMn)-16
	.long	1
	.long	2

	.section	__DATA,__const
	.p2align	3, 0x0
_$s23witness_tables_gen_code3CatVMf:
	.quad	0
	.quad	_$sBi64_WV
	.quad	512
	.quad	_$s23witness_tables_gen_code3CatVMn
	.long	0
	.space	4

	.private_extern	"_symbolic _____ 23witness_tables_gen_code3CatV"
	.section	__TEXT,__swift5_typeref
	.globl	"_symbolic _____ 23witness_tables_gen_code3CatV"
	.weak_definition	"_symbolic _____ 23witness_tables_gen_code3CatV"
	.p2align	1, 0x0
"_symbolic _____ 23witness_tables_gen_code3CatV":
	.byte	1
	.long	(_$s23witness_tables_gen_code3CatVMn-"_symbolic _____ 23witness_tables_gen_code3CatV")-1
	.byte	0

	.private_extern	"_symbolic Si"
	.globl	"_symbolic Si"
	.weak_definition	"_symbolic Si"
	.p2align	1, 0x0
"_symbolic Si":
	.ascii	"Si"
	.byte	0

	.section	__TEXT,__swift5_reflstr
l___unnamed_1:
	.asciz	"volume"

	.section	__TEXT,__swift5_fieldmd
	.p2align	2, 0x0
_$s23witness_tables_gen_code3CatVMF:
	.long	"_symbolic _____ 23witness_tables_gen_code3CatV"-_$s23witness_tables_gen_code3CatVMF
	.long	0
	.short	0
	.short	12
	.long	1
	.long	2
	.long	("_symbolic Si"-_$s23witness_tables_gen_code3CatVMF)-20
	.long	(l___unnamed_1-_$s23witness_tables_gen_code3CatVMF)-24

	.section	__TEXT,__const
l_.str.3.Dog:
	.asciz	"Dog"

	.private_extern	_$s23witness_tables_gen_code3DogVMn
	.section	__TEXT,__constg_swiftt
	.globl	_$s23witness_tables_gen_code3DogVMn
	.p2align	2, 0x0
_$s23witness_tables_gen_code3DogVMn:
	.long	81
	.long	(_$s23witness_tables_gen_codeMXM-_$s23witness_tables_gen_code3DogVMn)-4
	.long	(l_.str.3.Dog-_$s23witness_tables_gen_code3DogVMn)-8
	.long	(_$s23witness_tables_gen_code3DogVMa-_$s23witness_tables_gen_code3DogVMn)-12
	.long	(_$s23witness_tables_gen_code3DogVMF-_$s23witness_tables_gen_code3DogVMn)-16
	.long	1
	.long	2

	.section	__DATA,__const
	.p2align	3, 0x0
_$s23witness_tables_gen_code3DogVMf:
	.quad	0
	.quad	_$sBi64_WV
	.quad	512
	.quad	_$s23witness_tables_gen_code3DogVMn
	.long	0
	.space	4

	.private_extern	"_symbolic _____ 23witness_tables_gen_code3DogV"
	.section	__TEXT,__swift5_typeref
	.globl	"_symbolic _____ 23witness_tables_gen_code3DogV"
	.weak_definition	"_symbolic _____ 23witness_tables_gen_code3DogV"
	.p2align	1, 0x0
"_symbolic _____ 23witness_tables_gen_code3DogV":
	.byte	1
	.long	(_$s23witness_tables_gen_code3DogVMn-"_symbolic _____ 23witness_tables_gen_code3DogV")-1
	.byte	0

	.section	__TEXT,__swift5_fieldmd
	.p2align	2, 0x0
_$s23witness_tables_gen_code3DogVMF:
	.long	"_symbolic _____ 23witness_tables_gen_code3DogV"-_$s23witness_tables_gen_code3DogVMF
	.long	0
	.short	0
	.short	12
	.long	1
	.long	2
	.long	("_symbolic Si"-_$s23witness_tables_gen_code3DogVMF)-20
	.long	(l___unnamed_1-_$s23witness_tables_gen_code3DogVMF)-24

	.section	__TEXT,__cstring,cstring_literals
"L_.str.1.\n":
	.asciz	"\n"

"L_.str.1. ":
	.asciz	" "

	.section	__TEXT,__swift5_protos
	.p2align	2, 0x0
l_$s23witness_tables_gen_code8NoisableHr:
	.long	_$s23witness_tables_gen_code8NoisableMp-l_$s23witness_tables_gen_code8NoisableHr

	.p2align	2, 0x0
l_$s23witness_tables_gen_code7CutableHr:
	.long	_$s23witness_tables_gen_code7CutableMp-l_$s23witness_tables_gen_code7CutableHr

	.section	__TEXT,__swift5_proto
	.p2align	2, 0x0
l_$s23witness_tables_gen_code3CatVAA8NoisableAAHc:
	.long	_$s23witness_tables_gen_code3CatVAA8NoisableAAMc-l_$s23witness_tables_gen_code3CatVAA8NoisableAAHc

	.p2align	2, 0x0
l_$s23witness_tables_gen_code3CatVAA7CutableAAHc:
	.long	_$s23witness_tables_gen_code3CatVAA7CutableAAMc-l_$s23witness_tables_gen_code3CatVAA7CutableAAHc

	.p2align	2, 0x0
l_$s23witness_tables_gen_code3DogVAA8NoisableAAHc:
	.long	_$s23witness_tables_gen_code3DogVAA8NoisableAAMc-l_$s23witness_tables_gen_code3DogVAA8NoisableAAHc

	.section	__TEXT,__swift5_types
	.p2align	2, 0x0
l_$s23witness_tables_gen_code3CatVHn:
	.long	_$s23witness_tables_gen_code3CatVMn-l_$s23witness_tables_gen_code3CatVHn

	.p2align	2, 0x0
l_$s23witness_tables_gen_code3DogVHn:
	.long	_$s23witness_tables_gen_code3DogVMn-l_$s23witness_tables_gen_code3DogVHn

	.private_extern	___swift_reflection_version
	.section	__TEXT,__const
	.globl	___swift_reflection_version
	.weak_definition	___swift_reflection_version
	.p2align	1, 0x0
___swift_reflection_version:
	.short	3

	.no_dead_strip	_main
	.no_dead_strip	l_entry_point
	.no_dead_strip	_$s23witness_tables_gen_code8Noisable_pMF
	.no_dead_strip	_$s23witness_tables_gen_code7Cutable_pMF
	.no_dead_strip	_$s23witness_tables_gen_code3CatVMF
	.no_dead_strip	_$s23witness_tables_gen_code3DogVMF
	.no_dead_strip	l_$s23witness_tables_gen_code8NoisableHr
	.no_dead_strip	l_$s23witness_tables_gen_code7CutableHr
	.no_dead_strip	l_$s23witness_tables_gen_code3CatVAA8NoisableAAHc
	.no_dead_strip	l_$s23witness_tables_gen_code3CatVAA7CutableAAHc
	.no_dead_strip	l_$s23witness_tables_gen_code3DogVAA8NoisableAAHc
	.no_dead_strip	l_$s23witness_tables_gen_code3CatVHn
	.no_dead_strip	l_$s23witness_tables_gen_code3DogVHn
	.no_dead_strip	___swift_reflection_version
	.linker_option "-lswiftSwiftOnoneSupport"
	.linker_option "-lswiftCore"
	.linker_option "-lswift_Concurrency"
	.linker_option "-lswift_StringProcessing"
	.linker_option "-lobjc"
	.section	__DATA,__objc_imageinfo,regular,no_dead_strip
L_OBJC_IMAGE_INFO:
	.long	0
	.long	84477760

	.globl	_$s23witness_tables_gen_code8NoisableTL
	.private_extern	_$s23witness_tables_gen_code8NoisableTL
	.alt_entry	_$s23witness_tables_gen_code8NoisableTL
.set _$s23witness_tables_gen_code8NoisableTL, (_$s23witness_tables_gen_code8NoisableMp+24)-8
	.globl	_$s23witness_tables_gen_code7CutableTL
	.private_extern	_$s23witness_tables_gen_code7CutableTL
	.alt_entry	_$s23witness_tables_gen_code7CutableTL
.set _$s23witness_tables_gen_code7CutableTL, (_$s23witness_tables_gen_code7CutableMp+24)-8
	.globl	_$s23witness_tables_gen_code3CatVN
	.private_extern	_$s23witness_tables_gen_code3CatVN
	.alt_entry	_$s23witness_tables_gen_code3CatVN
.set _$s23witness_tables_gen_code3CatVN, _$s23witness_tables_gen_code3CatVMf+16
	.globl	_$s23witness_tables_gen_code3DogVN
	.private_extern	_$s23witness_tables_gen_code3DogVN
	.alt_entry	_$s23witness_tables_gen_code3DogVN
.set _$s23witness_tables_gen_code3DogVN, _$s23witness_tables_gen_code3DogVMf+16
.subsections_via_symbols
