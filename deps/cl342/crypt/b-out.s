	# Don't even think of reading this code 
	# It was automatically generated by bf-586.pl 
	# Which is a perl program used to generate the x86 assember for 
	# any of elf, a.out, BSDI, Win32, gaswin (for GNU as on Win32) or Solaris 
	# eric <eay@cryptsoft.com> 

	.file	"bf-586.s"
	.version	"01.01"
gcc2_compiled.:
.text
	.align 4
.globl _BF_encrypt
	.type	_BF_encrypt,@function
_BF_encrypt:

	pushl	%ebp
	pushl	%ebx
	movl	12(%esp),	%ebx
	movl	16(%esp),	%ebp
	pushl	%esi
	pushl	%edi
	# Load the 2 words 
	movl	(%ebx),		%edi
	movl	4(%ebx),	%esi
	xorl	%eax,		%eax
	movl	(%ebp),		%ebx
	xorl	%ecx,		%ecx
	xorl	%ebx,		%edi

	# Round 0 
	movl	4(%ebp),	%edx
	movl	%edi,		%ebx
	xorl	%edx,		%esi
	shrl	$16,		%ebx
	movl	%edi,		%edx
	movb	%bh,		%al
	andl	$255,		%ebx
	movb	%dh,		%cl
	andl	$255,		%edx
	movl	72(%ebp,%eax,4),%eax
	movl	1096(%ebp,%ebx,4),%ebx
	addl	%eax,		%ebx
	movl	2120(%ebp,%ecx,4),%eax
	xorl	%eax,		%ebx
	movl	3144(%ebp,%edx,4),%edx
	addl	%edx,		%ebx
	xorl	%eax,		%eax
	xorl	%ebx,		%esi

	# Round 1 
	movl	8(%ebp),	%edx
	movl	%esi,		%ebx
	xorl	%edx,		%edi
	shrl	$16,		%ebx
	movl	%esi,		%edx
	movb	%bh,		%al
	andl	$255,		%ebx
	movb	%dh,		%cl
	andl	$255,		%edx
	movl	72(%ebp,%eax,4),%eax
	movl	1096(%ebp,%ebx,4),%ebx
	addl	%eax,		%ebx
	movl	2120(%ebp,%ecx,4),%eax
	xorl	%eax,		%ebx
	movl	3144(%ebp,%edx,4),%edx
	addl	%edx,		%ebx
	xorl	%eax,		%eax
	xorl	%ebx,		%edi

	# Round 2 
	movl	12(%ebp),	%edx
	movl	%edi,		%ebx
	xorl	%edx,		%esi
	shrl	$16,		%ebx
	movl	%edi,		%edx
	movb	%bh,		%al
	andl	$255,		%ebx
	movb	%dh,		%cl
	andl	$255,		%edx
	movl	72(%ebp,%eax,4),%eax
	movl	1096(%ebp,%ebx,4),%ebx
	addl	%eax,		%ebx
	movl	2120(%ebp,%ecx,4),%eax
	xorl	%eax,		%ebx
	movl	3144(%ebp,%edx,4),%edx
	addl	%edx,		%ebx
	xorl	%eax,		%eax
	xorl	%ebx,		%esi

	# Round 3 
	movl	16(%ebp),	%edx
	movl	%esi,		%ebx
	xorl	%edx,		%edi
	shrl	$16,		%ebx
	movl	%esi,		%edx
	movb	%bh,		%al
	andl	$255,		%ebx
	movb	%dh,		%cl
	andl	$255,		%edx
	movl	72(%ebp,%eax,4),%eax
	movl	1096(%ebp,%ebx,4),%ebx
	addl	%eax,		%ebx
	movl	2120(%ebp,%ecx,4),%eax
	xorl	%eax,		%ebx
	movl	3144(%ebp,%edx,4),%edx
	addl	%edx,		%ebx
	xorl	%eax,		%eax
	xorl	%ebx,		%edi

	# Round 4 
	movl	20(%ebp),	%edx
	movl	%edi,		%ebx
	xorl	%edx,		%esi
	shrl	$16,		%ebx
	movl	%edi,		%edx
	movb	%bh,		%al
	andl	$255,		%ebx
	movb	%dh,		%cl
	andl	$255,		%edx
	movl	72(%ebp,%eax,4),%eax
	movl	1096(%ebp,%ebx,4),%ebx
	addl	%eax,		%ebx
	movl	2120(%ebp,%ecx,4),%eax
	xorl	%eax,		%ebx
	movl	3144(%ebp,%edx,4),%edx
	addl	%edx,		%ebx
	xorl	%eax,		%eax
	xorl	%ebx,		%esi

	# Round 5 
	movl	24(%ebp),	%edx
	movl	%esi,		%ebx
	xorl	%edx,		%edi
	shrl	$16,		%ebx
	movl	%esi,		%edx
	movb	%bh,		%al
	andl	$255,		%ebx
	movb	%dh,		%cl
	andl	$255,		%edx
	movl	72(%ebp,%eax,4),%eax
	movl	1096(%ebp,%ebx,4),%ebx
	addl	%eax,		%ebx
	movl	2120(%ebp,%ecx,4),%eax
	xorl	%eax,		%ebx
	movl	3144(%ebp,%edx,4),%edx
	addl	%edx,		%ebx
	xorl	%eax,		%eax
	xorl	%ebx,		%edi

	# Round 6 
	movl	28(%ebp),	%edx
	movl	%edi,		%ebx
	xorl	%edx,		%esi
	shrl	$16,		%ebx
	movl	%edi,		%edx
	movb	%bh,		%al
	andl	$255,		%ebx
	movb	%dh,		%cl
	andl	$255,		%edx
	movl	72(%ebp,%eax,4),%eax
	movl	1096(%ebp,%ebx,4),%ebx
	addl	%eax,		%ebx
	movl	2120(%ebp,%ecx,4),%eax
	xorl	%eax,		%ebx
	movl	3144(%ebp,%edx,4),%edx
	addl	%edx,		%ebx
	xorl	%eax,		%eax
	xorl	%ebx,		%esi

	# Round 7 
	movl	32(%ebp),	%edx
	movl	%esi,		%ebx
	xorl	%edx,		%edi
	shrl	$16,		%ebx
	movl	%esi,		%edx
	movb	%bh,		%al
	andl	$255,		%ebx
	movb	%dh,		%cl
	andl	$255,		%edx
	movl	72(%ebp,%eax,4),%eax
	movl	1096(%ebp,%ebx,4),%ebx
	addl	%eax,		%ebx
	movl	2120(%ebp,%ecx,4),%eax
	xorl	%eax,		%ebx
	movl	3144(%ebp,%edx,4),%edx
	addl	%edx,		%ebx
	xorl	%eax,		%eax
	xorl	%ebx,		%edi

	# Round 8 
	movl	36(%ebp),	%edx
	movl	%edi,		%ebx
	xorl	%edx,		%esi
	shrl	$16,		%ebx
	movl	%edi,		%edx
	movb	%bh,		%al
	andl	$255,		%ebx
	movb	%dh,		%cl
	andl	$255,		%edx
	movl	72(%ebp,%eax,4),%eax
	movl	1096(%ebp,%ebx,4),%ebx
	addl	%eax,		%ebx
	movl	2120(%ebp,%ecx,4),%eax
	xorl	%eax,		%ebx
	movl	3144(%ebp,%edx,4),%edx
	addl	%edx,		%ebx
	xorl	%eax,		%eax
	xorl	%ebx,		%esi

	# Round 9 
	movl	40(%ebp),	%edx
	movl	%esi,		%ebx
	xorl	%edx,		%edi
	shrl	$16,		%ebx
	movl	%esi,		%edx
	movb	%bh,		%al
	andl	$255,		%ebx
	movb	%dh,		%cl
	andl	$255,		%edx
	movl	72(%ebp,%eax,4),%eax
	movl	1096(%ebp,%ebx,4),%ebx
	addl	%eax,		%ebx
	movl	2120(%ebp,%ecx,4),%eax
	xorl	%eax,		%ebx
	movl	3144(%ebp,%edx,4),%edx
	addl	%edx,		%ebx
	xorl	%eax,		%eax
	xorl	%ebx,		%edi

	# Round 10 
	movl	44(%ebp),	%edx
	movl	%edi,		%ebx
	xorl	%edx,		%esi
	shrl	$16,		%ebx
	movl	%edi,		%edx
	movb	%bh,		%al
	andl	$255,		%ebx
	movb	%dh,		%cl
	andl	$255,		%edx
	movl	72(%ebp,%eax,4),%eax
	movl	1096(%ebp,%ebx,4),%ebx
	addl	%eax,		%ebx
	movl	2120(%ebp,%ecx,4),%eax
	xorl	%eax,		%ebx
	movl	3144(%ebp,%edx,4),%edx
	addl	%edx,		%ebx
	xorl	%eax,		%eax
	xorl	%ebx,		%esi

	# Round 11 
	movl	48(%ebp),	%edx
	movl	%esi,		%ebx
	xorl	%edx,		%edi
	shrl	$16,		%ebx
	movl	%esi,		%edx
	movb	%bh,		%al
	andl	$255,		%ebx
	movb	%dh,		%cl
	andl	$255,		%edx
	movl	72(%ebp,%eax,4),%eax
	movl	1096(%ebp,%ebx,4),%ebx
	addl	%eax,		%ebx
	movl	2120(%ebp,%ecx,4),%eax
	xorl	%eax,		%ebx
	movl	3144(%ebp,%edx,4),%edx
	addl	%edx,		%ebx
	xorl	%eax,		%eax
	xorl	%ebx,		%edi

	# Round 12 
	movl	52(%ebp),	%edx
	movl	%edi,		%ebx
	xorl	%edx,		%esi
	shrl	$16,		%ebx
	movl	%edi,		%edx
	movb	%bh,		%al
	andl	$255,		%ebx
	movb	%dh,		%cl
	andl	$255,		%edx
	movl	72(%ebp,%eax,4),%eax
	movl	1096(%ebp,%ebx,4),%ebx
	addl	%eax,		%ebx
	movl	2120(%ebp,%ecx,4),%eax
	xorl	%eax,		%ebx
	movl	3144(%ebp,%edx,4),%edx
	addl	%edx,		%ebx
	xorl	%eax,		%eax
	xorl	%ebx,		%esi

	# Round 13 
	movl	56(%ebp),	%edx
	movl	%esi,		%ebx
	xorl	%edx,		%edi
	shrl	$16,		%ebx
	movl	%esi,		%edx
	movb	%bh,		%al
	andl	$255,		%ebx
	movb	%dh,		%cl
	andl	$255,		%edx
	movl	72(%ebp,%eax,4),%eax
	movl	1096(%ebp,%ebx,4),%ebx
	addl	%eax,		%ebx
	movl	2120(%ebp,%ecx,4),%eax
	xorl	%eax,		%ebx
	movl	3144(%ebp,%edx,4),%edx
	addl	%edx,		%ebx
	xorl	%eax,		%eax
	xorl	%ebx,		%edi

	# Round 14 
	movl	60(%ebp),	%edx
	movl	%edi,		%ebx
	xorl	%edx,		%esi
	shrl	$16,		%ebx
	movl	%edi,		%edx
	movb	%bh,		%al
	andl	$255,		%ebx
	movb	%dh,		%cl
	andl	$255,		%edx
	movl	72(%ebp,%eax,4),%eax
	movl	1096(%ebp,%ebx,4),%ebx
	addl	%eax,		%ebx
	movl	2120(%ebp,%ecx,4),%eax
	xorl	%eax,		%ebx
	movl	3144(%ebp,%edx,4),%edx
	addl	%edx,		%ebx
	xorl	%eax,		%eax
	xorl	%ebx,		%esi

	# Round 15 
	movl	64(%ebp),	%edx
	movl	%esi,		%ebx
	xorl	%edx,		%edi
	shrl	$16,		%ebx
	movl	%esi,		%edx
	movb	%bh,		%al
	andl	$255,		%ebx
	movb	%dh,		%cl
	andl	$255,		%edx
	movl	72(%ebp,%eax,4),%eax
	movl	1096(%ebp,%ebx,4),%ebx
	addl	%eax,		%ebx
	movl	2120(%ebp,%ecx,4),%eax
	xorl	%eax,		%ebx
	movl	3144(%ebp,%edx,4),%edx
	addl	%edx,		%ebx
	# Load parameter 0 (16) enc=1 
	movl	20(%esp),	%eax
	xorl	%ebx,		%edi
	movl	68(%ebp),	%edx
	xorl	%edx,		%esi
	movl	%edi,		4(%eax)
	movl	%esi,		(%eax)
	popl	%edi
	popl	%esi
	popl	%ebx
	popl	%ebp
	ret
._BF_encrypt_end:
	.size	_BF_encrypt,._BF_encrypt_end-_BF_encrypt
.ident	"_BF_encrypt"
.text
	.align 4
.globl _BF_decrypt
	.type	_BF_decrypt,@function
_BF_decrypt:

	pushl	%ebp
	pushl	%ebx
	movl	12(%esp),	%ebx
	movl	16(%esp),	%ebp
	pushl	%esi
	pushl	%edi
	# Load the 2 words 
	movl	(%ebx),		%edi
	movl	4(%ebx),	%esi
	xorl	%eax,		%eax
	movl	68(%ebp),	%ebx
	xorl	%ecx,		%ecx
	xorl	%ebx,		%edi

	# Round 16 
	movl	64(%ebp),	%edx
	movl	%edi,		%ebx
	xorl	%edx,		%esi
	shrl	$16,		%ebx
	movl	%edi,		%edx
	movb	%bh,		%al
	andl	$255,		%ebx
	movb	%dh,		%cl
	andl	$255,		%edx
	movl	72(%ebp,%eax,4),%eax
	movl	1096(%ebp,%ebx,4),%ebx
	addl	%eax,		%ebx
	movl	2120(%ebp,%ecx,4),%eax
	xorl	%eax,		%ebx
	movl	3144(%ebp,%edx,4),%edx
	addl	%edx,		%ebx
	xorl	%eax,		%eax
	xorl	%ebx,		%esi

	# Round 15 
	movl	60(%ebp),	%edx
	movl	%esi,		%ebx
	xorl	%edx,		%edi
	shrl	$16,		%ebx
	movl	%esi,		%edx
	movb	%bh,		%al
	andl	$255,		%ebx
	movb	%dh,		%cl
	andl	$255,		%edx
	movl	72(%ebp,%eax,4),%eax
	movl	1096(%ebp,%ebx,4),%ebx
	addl	%eax,		%ebx
	movl	2120(%ebp,%ecx,4),%eax
	xorl	%eax,		%ebx
	movl	3144(%ebp,%edx,4),%edx
	addl	%edx,		%ebx
	xorl	%eax,		%eax
	xorl	%ebx,		%edi

	# Round 14 
	movl	56(%ebp),	%edx
	movl	%edi,		%ebx
	xorl	%edx,		%esi
	shrl	$16,		%ebx
	movl	%edi,		%edx
	movb	%bh,		%al
	andl	$255,		%ebx
	movb	%dh,		%cl
	andl	$255,		%edx
	movl	72(%ebp,%eax,4),%eax
	movl	1096(%ebp,%ebx,4),%ebx
	addl	%eax,		%ebx
	movl	2120(%ebp,%ecx,4),%eax
	xorl	%eax,		%ebx
	movl	3144(%ebp,%edx,4),%edx
	addl	%edx,		%ebx
	xorl	%eax,		%eax
	xorl	%ebx,		%esi

	# Round 13 
	movl	52(%ebp),	%edx
	movl	%esi,		%ebx
	xorl	%edx,		%edi
	shrl	$16,		%ebx
	movl	%esi,		%edx
	movb	%bh,		%al
	andl	$255,		%ebx
	movb	%dh,		%cl
	andl	$255,		%edx
	movl	72(%ebp,%eax,4),%eax
	movl	1096(%ebp,%ebx,4),%ebx
	addl	%eax,		%ebx
	movl	2120(%ebp,%ecx,4),%eax
	xorl	%eax,		%ebx
	movl	3144(%ebp,%edx,4),%edx
	addl	%edx,		%ebx
	xorl	%eax,		%eax
	xorl	%ebx,		%edi

	# Round 12 
	movl	48(%ebp),	%edx
	movl	%edi,		%ebx
	xorl	%edx,		%esi
	shrl	$16,		%ebx
	movl	%edi,		%edx
	movb	%bh,		%al
	andl	$255,		%ebx
	movb	%dh,		%cl
	andl	$255,		%edx
	movl	72(%ebp,%eax,4),%eax
	movl	1096(%ebp,%ebx,4),%ebx
	addl	%eax,		%ebx
	movl	2120(%ebp,%ecx,4),%eax
	xorl	%eax,		%ebx
	movl	3144(%ebp,%edx,4),%edx
	addl	%edx,		%ebx
	xorl	%eax,		%eax
	xorl	%ebx,		%esi

	# Round 11 
	movl	44(%ebp),	%edx
	movl	%esi,		%ebx
	xorl	%edx,		%edi
	shrl	$16,		%ebx
	movl	%esi,		%edx
	movb	%bh,		%al
	andl	$255,		%ebx
	movb	%dh,		%cl
	andl	$255,		%edx
	movl	72(%ebp,%eax,4),%eax
	movl	1096(%ebp,%ebx,4),%ebx
	addl	%eax,		%ebx
	movl	2120(%ebp,%ecx,4),%eax
	xorl	%eax,		%ebx
	movl	3144(%ebp,%edx,4),%edx
	addl	%edx,		%ebx
	xorl	%eax,		%eax
	xorl	%ebx,		%edi

	# Round 10 
	movl	40(%ebp),	%edx
	movl	%edi,		%ebx
	xorl	%edx,		%esi
	shrl	$16,		%ebx
	movl	%edi,		%edx
	movb	%bh,		%al
	andl	$255,		%ebx
	movb	%dh,		%cl
	andl	$255,		%edx
	movl	72(%ebp,%eax,4),%eax
	movl	1096(%ebp,%ebx,4),%ebx
	addl	%eax,		%ebx
	movl	2120(%ebp,%ecx,4),%eax
	xorl	%eax,		%ebx
	movl	3144(%ebp,%edx,4),%edx
	addl	%edx,		%ebx
	xorl	%eax,		%eax
	xorl	%ebx,		%esi

	# Round 9 
	movl	36(%ebp),	%edx
	movl	%esi,		%ebx
	xorl	%edx,		%edi
	shrl	$16,		%ebx
	movl	%esi,		%edx
	movb	%bh,		%al
	andl	$255,		%ebx
	movb	%dh,		%cl
	andl	$255,		%edx
	movl	72(%ebp,%eax,4),%eax
	movl	1096(%ebp,%ebx,4),%ebx
	addl	%eax,		%ebx
	movl	2120(%ebp,%ecx,4),%eax
	xorl	%eax,		%ebx
	movl	3144(%ebp,%edx,4),%edx
	addl	%edx,		%ebx
	xorl	%eax,		%eax
	xorl	%ebx,		%edi

	# Round 8 
	movl	32(%ebp),	%edx
	movl	%edi,		%ebx
	xorl	%edx,		%esi
	shrl	$16,		%ebx
	movl	%edi,		%edx
	movb	%bh,		%al
	andl	$255,		%ebx
	movb	%dh,		%cl
	andl	$255,		%edx
	movl	72(%ebp,%eax,4),%eax
	movl	1096(%ebp,%ebx,4),%ebx
	addl	%eax,		%ebx
	movl	2120(%ebp,%ecx,4),%eax
	xorl	%eax,		%ebx
	movl	3144(%ebp,%edx,4),%edx
	addl	%edx,		%ebx
	xorl	%eax,		%eax
	xorl	%ebx,		%esi

	# Round 7 
	movl	28(%ebp),	%edx
	movl	%esi,		%ebx
	xorl	%edx,		%edi
	shrl	$16,		%ebx
	movl	%esi,		%edx
	movb	%bh,		%al
	andl	$255,		%ebx
	movb	%dh,		%cl
	andl	$255,		%edx
	movl	72(%ebp,%eax,4),%eax
	movl	1096(%ebp,%ebx,4),%ebx
	addl	%eax,		%ebx
	movl	2120(%ebp,%ecx,4),%eax
	xorl	%eax,		%ebx
	movl	3144(%ebp,%edx,4),%edx
	addl	%edx,		%ebx
	xorl	%eax,		%eax
	xorl	%ebx,		%edi

	# Round 6 
	movl	24(%ebp),	%edx
	movl	%edi,		%ebx
	xorl	%edx,		%esi
	shrl	$16,		%ebx
	movl	%edi,		%edx
	movb	%bh,		%al
	andl	$255,		%ebx
	movb	%dh,		%cl
	andl	$255,		%edx
	movl	72(%ebp,%eax,4),%eax
	movl	1096(%ebp,%ebx,4),%ebx
	addl	%eax,		%ebx
	movl	2120(%ebp,%ecx,4),%eax
	xorl	%eax,		%ebx
	movl	3144(%ebp,%edx,4),%edx
	addl	%edx,		%ebx
	xorl	%eax,		%eax
	xorl	%ebx,		%esi

	# Round 5 
	movl	20(%ebp),	%edx
	movl	%esi,		%ebx
	xorl	%edx,		%edi
	shrl	$16,		%ebx
	movl	%esi,		%edx
	movb	%bh,		%al
	andl	$255,		%ebx
	movb	%dh,		%cl
	andl	$255,		%edx
	movl	72(%ebp,%eax,4),%eax
	movl	1096(%ebp,%ebx,4),%ebx
	addl	%eax,		%ebx
	movl	2120(%ebp,%ecx,4),%eax
	xorl	%eax,		%ebx
	movl	3144(%ebp,%edx,4),%edx
	addl	%edx,		%ebx
	xorl	%eax,		%eax
	xorl	%ebx,		%edi

	# Round 4 
	movl	16(%ebp),	%edx
	movl	%edi,		%ebx
	xorl	%edx,		%esi
	shrl	$16,		%ebx
	movl	%edi,		%edx
	movb	%bh,		%al
	andl	$255,		%ebx
	movb	%dh,		%cl
	andl	$255,		%edx
	movl	72(%ebp,%eax,4),%eax
	movl	1096(%ebp,%ebx,4),%ebx
	addl	%eax,		%ebx
	movl	2120(%ebp,%ecx,4),%eax
	xorl	%eax,		%ebx
	movl	3144(%ebp,%edx,4),%edx
	addl	%edx,		%ebx
	xorl	%eax,		%eax
	xorl	%ebx,		%esi

	# Round 3 
	movl	12(%ebp),	%edx
	movl	%esi,		%ebx
	xorl	%edx,		%edi
	shrl	$16,		%ebx
	movl	%esi,		%edx
	movb	%bh,		%al
	andl	$255,		%ebx
	movb	%dh,		%cl
	andl	$255,		%edx
	movl	72(%ebp,%eax,4),%eax
	movl	1096(%ebp,%ebx,4),%ebx
	addl	%eax,		%ebx
	movl	2120(%ebp,%ecx,4),%eax
	xorl	%eax,		%ebx
	movl	3144(%ebp,%edx,4),%edx
	addl	%edx,		%ebx
	xorl	%eax,		%eax
	xorl	%ebx,		%edi

	# Round 2 
	movl	8(%ebp),	%edx
	movl	%edi,		%ebx
	xorl	%edx,		%esi
	shrl	$16,		%ebx
	movl	%edi,		%edx
	movb	%bh,		%al
	andl	$255,		%ebx
	movb	%dh,		%cl
	andl	$255,		%edx
	movl	72(%ebp,%eax,4),%eax
	movl	1096(%ebp,%ebx,4),%ebx
	addl	%eax,		%ebx
	movl	2120(%ebp,%ecx,4),%eax
	xorl	%eax,		%ebx
	movl	3144(%ebp,%edx,4),%edx
	addl	%edx,		%ebx
	xorl	%eax,		%eax
	xorl	%ebx,		%esi

	# Round 1 
	movl	4(%ebp),	%edx
	movl	%esi,		%ebx
	xorl	%edx,		%edi
	shrl	$16,		%ebx
	movl	%esi,		%edx
	movb	%bh,		%al
	andl	$255,		%ebx
	movb	%dh,		%cl
	andl	$255,		%edx
	movl	72(%ebp,%eax,4),%eax
	movl	1096(%ebp,%ebx,4),%ebx
	addl	%eax,		%ebx
	movl	2120(%ebp,%ecx,4),%eax
	xorl	%eax,		%ebx
	movl	3144(%ebp,%edx,4),%edx
	addl	%edx,		%ebx
	# Load parameter 0 (1) enc=0 
	movl	20(%esp),	%eax
	xorl	%ebx,		%edi
	movl	(%ebp),		%edx
	xorl	%edx,		%esi
	movl	%edi,		4(%eax)
	movl	%esi,		(%eax)
	popl	%edi
	popl	%esi
	popl	%ebx
	popl	%ebp
	ret
._BF_decrypt_end:
	.size	_BF_decrypt,._BF_decrypt_end-_BF_decrypt
.ident	"_BF_decrypt"
.text
	.align 4
.globl _BF_cbc_encrypt
	.type	_BF_cbc_encrypt,@function
_BF_cbc_encrypt:

	pushl	%ebp
	pushl	%ebx
	pushl	%esi
	pushl	%edi
	movl	28(%esp),	%ebp
	# getting iv ptr from parameter 4 
	movl	36(%esp),	%ebx
	movl	(%ebx),		%esi
	movl	4(%ebx),	%edi
	pushl	%edi
	pushl	%esi
	pushl	%edi
	pushl	%esi
	movl	%esp,		%ebx
	movl	36(%esp),	%esi
	movl	40(%esp),	%edi
	# getting encrypt flag from parameter 5 
	movl	56(%esp),	%ecx
	# get and push parameter 3 
	movl	48(%esp),	%eax
	pushl	%eax
	pushl	%ebx
	cmpl	$0,		%ecx
	jz	.L000decrypt
	andl	$4294967288,	%ebp
	movl	8(%esp),	%eax
	movl	12(%esp),	%ebx
	jz	.L001encrypt_finish
.L002encrypt_loop:
	movl	(%esi),		%ecx
	movl	4(%esi),	%edx
	xorl	%ecx,		%eax
	xorl	%edx,		%ebx
.byte 15
.byte 200		# bswapl  %eax 
.byte 15
.byte 203		# bswapl  %ebx 
	movl	%eax,		8(%esp)
	movl	%ebx,		12(%esp)
	call	_BF_encrypt
	movl	8(%esp),	%eax
	movl	12(%esp),	%ebx
.byte 15
.byte 200		# bswapl  %eax 
.byte 15
.byte 203		# bswapl  %ebx 
	movl	%eax,		(%edi)
	movl	%ebx,		4(%edi)
	addl	$8,		%esi
	addl	$8,		%edi
	subl	$8,		%ebp
	jnz	.L002encrypt_loop
.L001encrypt_finish:
	movl	52(%esp),	%ebp
	andl	$7,		%ebp
	jz	.L003finish
	xorl	%ecx,		%ecx
	xorl	%edx,		%edx
	movl	.L004cbc_enc_jmp_table(,%ebp,4),%ebp
	jmp	*%ebp
.L005ej7:
	movb	6(%esi),	%dh
	sall	$8,		%edx
.L006ej6:
	movb	5(%esi),	%dh
.L007ej5:
	movb	4(%esi),	%dl
.L008ej4:
	movl	(%esi),		%ecx
	jmp	.L009ejend
.L010ej3:
	movb	2(%esi),	%ch
	sall	$8,		%ecx
.L011ej2:
	movb	1(%esi),	%ch
.L012ej1:
	movb	(%esi),		%cl
.L009ejend:
	xorl	%ecx,		%eax
	xorl	%edx,		%ebx
.byte 15
.byte 200		# bswapl  %eax 
.byte 15
.byte 203		# bswapl  %ebx 
	movl	%eax,		8(%esp)
	movl	%ebx,		12(%esp)
	call	_BF_encrypt
	movl	8(%esp),	%eax
	movl	12(%esp),	%ebx
.byte 15
.byte 200		# bswapl  %eax 
.byte 15
.byte 203		# bswapl  %ebx 
	movl	%eax,		(%edi)
	movl	%ebx,		4(%edi)
	jmp	.L003finish
.align 4
.L000decrypt:
	andl	$4294967288,	%ebp
	movl	16(%esp),	%eax
	movl	20(%esp),	%ebx
	jz	.L013decrypt_finish
.L014decrypt_loop:
	movl	(%esi),		%eax
	movl	4(%esi),	%ebx
.byte 15
.byte 200		# bswapl  %eax 
.byte 15
.byte 203		# bswapl  %ebx 
	movl	%eax,		8(%esp)
	movl	%ebx,		12(%esp)
	call	_BF_decrypt
	movl	8(%esp),	%eax
	movl	12(%esp),	%ebx
.byte 15
.byte 200		# bswapl  %eax 
.byte 15
.byte 203		# bswapl  %ebx 
	movl	16(%esp),	%ecx
	movl	20(%esp),	%edx
	xorl	%eax,		%ecx
	xorl	%ebx,		%edx
	movl	(%esi),		%eax
	movl	4(%esi),	%ebx
	movl	%ecx,		(%edi)
	movl	%edx,		4(%edi)
	movl	%eax,		16(%esp)
	movl	%ebx,		20(%esp)
	addl	$8,		%esi
	addl	$8,		%edi
	subl	$8,		%ebp
	jnz	.L014decrypt_loop
.L013decrypt_finish:
	movl	52(%esp),	%ebp
	andl	$7,		%ebp
	jz	.L003finish
	movl	(%esi),		%eax
	movl	4(%esi),	%ebx
.byte 15
.byte 200		# bswapl  %eax 
.byte 15
.byte 203		# bswapl  %ebx 
	movl	%eax,		8(%esp)
	movl	%ebx,		12(%esp)
	call	_BF_decrypt
	movl	8(%esp),	%eax
	movl	12(%esp),	%ebx
.byte 15
.byte 200		# bswapl  %eax 
.byte 15
.byte 203		# bswapl  %ebx 
	movl	16(%esp),	%ecx
	movl	20(%esp),	%edx
	xorl	%eax,		%ecx
	xorl	%ebx,		%edx
	movl	(%esi),		%eax
	movl	4(%esi),	%ebx
.L015dj7:
	rorl	$16,		%edx
	movb	%dl,		6(%edi)
	shrl	$16,		%edx
.L016dj6:
	movb	%dh,		5(%edi)
.L017dj5:
	movb	%dl,		4(%edi)
.L018dj4:
	movl	%ecx,		(%edi)
	jmp	.L019djend
.L020dj3:
	rorl	$16,		%ecx
	movb	%cl,		2(%edi)
	sall	$16,		%ecx
.L021dj2:
	movb	%ch,		1(%esi)
.L022dj1:
	movb	%cl,		(%esi)
.L019djend:
	jmp	.L003finish
.align 4
.L003finish:
	movl	60(%esp),	%ecx
	addl	$24,		%esp
	movl	%eax,		(%ecx)
	movl	%ebx,		4(%ecx)
	popl	%edi
	popl	%esi
	popl	%ebx
	popl	%ebp
	ret
.align 4
.L004cbc_enc_jmp_table:
	.long 0
	.long .L012ej1
	.long .L011ej2
	.long .L010ej3
	.long .L008ej4
	.long .L007ej5
	.long .L006ej6
	.long .L005ej7
.align 4
.L023cbc_dec_jmp_table:
	.long 0
	.long .L022dj1
	.long .L021dj2
	.long .L020dj3
	.long .L018dj4
	.long .L017dj5
	.long .L016dj6
	.long .L015dj7
.L__BF_cbc_encrypt_end:
	.size	_BF_cbc_encrypt,.L__BF_cbc_encrypt_end-_BF_cbc_encrypt
.ident	"desasm.pl"
