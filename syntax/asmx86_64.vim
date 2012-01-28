"-----------------------------------------------------------------------------"
" Vim 7.0+ (maybe less too ?? )                                               "
" Language:     GNU Assembler x86_64 + C preproc (for linux kernel)           "
" Maintainer:   Florian Delizy <florian.delizy@unfreeze.net>                  "
" Last Change:  2006/09/11 (Initial writing)                                  "
"-----------------------------------------------------------------------------"


" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loade

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif


" GNU AS macro directives for x86_64 (from as 2.17. manual )

" Because of leading '.' syn can't be made with keywords ... 

setlocal iskeyword+=.

syn keyword gasMacro .abort .ABORT .altmacro .asciz .arch .code32
syn keyword gasMacro .code64 .balign .byte .comm .cfi_startproc .cfi_endproc .cfi_def_cfa
syn keyword gasMacro .cfi_def_cfa_register .cfi_def_cfa_offset .cfi_adjust_cfa_offset .cfi_offset
syn keyword gasMacro .cfi_rel_offset .cfi_signal_frame .cfi_window_save .cfi_escape
syn keyword gasMacro .data .def .desc .dim .double .eject .else
syn keyword gasMacro .elseif .end .endef .endfunc .endif .equ .equiv
syn keyword gasMacro .eqv .err .error .exitm .extern .fail .file .fixup
syn keyword gasMacro .fill .float .func .global .globl .hidden .hword .ident .if .incbin .include
syn keyword gasMacro .int .internal .irp .irpc .lcomm .lflags .line .linkonce .list .ln .file .debug_line
syn keyword gasMacro .loc .basic_block .prologue_end .epilogue_begin .is_stmt .isa .loc_mark_blocks .long
syn keyword gasMacro .mri .noaltmacro .nolist .octa .org .p2align .popsection .previous .print
syn keyword gasMacro .protected .psize .purgem .pushsection .quad .rept .sbttl .scl .section .set .short
syn keyword gasMacro .single .size .skip .sleb128 .space .stabd .stabn .stabs .string .struct .subsection
syn keyword gasMacro .symver .tag .text .title .type .uleb128 .val .version .vtable_entry .vtable_inherit
syn keyword gasMacro .warning .weak .weakref .word



" Mnemonics :

" A-C
syn keyword asmKeyword	aaa aad aam aas add and arpl 
syn keyword asmKeyword	cbw cdq cdqe clc
syn keyword asmKeyword	cld clflush clgi cli clts cmc 
syn keyword asmKeyword	cmpxchg16b cmpxchg8b cpuid cqo cw 
syn keyword asmKeyword	cwde 

" D-P
syn keyword asmKeyword	daa das drtscp enter hlt 
syn keyword asmKeyword	int into invd invlpg invlpga
syn keyword asmKeyword	lahf les lfence lgdt
syn keyword asmKeyword	lgtd lidt ljmp lldt lmsw 
syn keyword asmKeyword	lodsw lsl
syn keyword asmKeyword	ltr mfence movmskpd movmskps 
syn keyword asmKeyword	pause pishfd popa popad popf popfd popfq 
syn keyword asmKeyword	prefetchnta pusha pushad pushf pushfq

" R-T
syn keyword asmKeyword	rdmsr rdpmc rdtsc rsm sahf
syn keyword asmKeyword	sfence sgdt sidt
syn keyword asmKeyword	skinit sldt smsw stc std stgi sti 
syn keyword asmKeyword	swapgs syscall sysenter sysexit 
syn keyword asmKeyword	sysret 

" U-...
syn keyword asmKeyword	ud2 verr verw vmload vmmcall vmrun vmsave vrmsr
syn keyword asmKeyword	wbinvd wrmsr xchg 

" in gas, mnemonics can be suffixed by the size of the operands (!= nasm)
syn match   asmKeyword        "\<adc[bwlq]\?\>"
syn match   asmKeyword        "\<x\?add[s]\?[dbwlq]\?\>"
syn match   asmKeyword        "\<and[bwlq]\?\>"
syn match   asmKeyword        "\<bound[bw]\?\>"
syn match   asmKeyword        "\<bs[rf][bwlq]\?\>"
syn match   asmKeyword        "\<bswap[lq]\?\>"
syn match   asmKeyword        "\<bt[bwlq]\?\>"
syn match   asmKeyword        "\<bt[crs][bwlq]\?\>"
syn match   asmKeyword        "\<call near\>"
syn match   asmKeyword        "\<call far\>"
syn match   asmKeyword        "\<call[bwlq]\?\>"
syn match   asmKeyword        "\<cmp[bwlq]\?\>"

syn match   asmKeyword        "\<cmovn\?[abceglopsz][bwlq]\?\>"
syn match   asmKeyword        "\<cmovn\?[abglp]e[bwlq]\?\>"
syn match   asmKeyword        "\<cmovn\?[p]o[bwlq]\?\>"
syn match   asmKeyword        "\<cmps[bwdlq]\?\>"
syn match   asmKeyword        "\<cmpxchg[bwlq]\?\>"

syn match   asmKeyword        "\<dec[bwlq]\?\>"
syn match   asmKeyword        "\<divs\?[bwlqd]\?\>"

syn match   asmKeyword        "\<int 3\>"
syn match   asmKeyword        "\<idiv[bwlq]\?\>"
syn match   asmKeyword        "\<imul[bwlq]\?\>"
syn match   asmKeyword        "\<in[bwlq]\?\>"
syn match   asmKeyword        "\<inc[bwlq]\?\>"
syn match   asmKeyword        "\<ins[bdwlq]\?\>"

syn match   asmKeyword        "\<jmp[bwlq]\?\>"
syn match   asmKeyword        "\<jn\?[abpgl]e\?s[bdwlq]\?\>"
syn match   asmKeyword        "\<jn\?[p]o\?s[bdwlq]\?\>"
syn match   asmKeyword        "\<jn\?[asplobczeg]s\?[bdwlq]\?\>"

syn match   asmKeyword        "\<jump far\>"

syn match   asmKeyword        "\<l[defgs]s[bwlq]\?\>"
syn match   asmKeyword        "\<lea[bwlq]\?\>"
syn match   asmKeyword        "\<lar[bwlq]\?\>"
syn match   asmKeyword        "\<leave[bwlq]\?\>"
syn match   asmKeyword        "\<lods[bwdlq]\?\>"
syn match   asmKeyword        "\<loopn\?[ez]\?\>"

syn match   asmKeyword        "\<mov[d]\?[bwlqd]\?\>"
syn match   asmKeyword        "\<movlp[bwlqd]\?\>"
syn match   asmKeyword        "\<mov[sz][x]\?[bwlqd]\?\>"
syn match   asmKeyword        "\<movnti[lq]\?\>"
syn match   asmKeyword        "\<mul[s]\?[d]\?[lq]\?\>"
syn match   asmKeyword        "\<neg[lq]\?\>"
syn match   asmKeyword        "\<nop[lq]\?\>"
syn match   asmKeyword        "\<x\?or[bwlq]\?\>"
syn match   asmKeyword        "\<outs[bwlq]\?\>"

syn match   asmKeyword        "\<pop[bwlqd]\?\>"
syn match   asmKeyword        "\<prefetch[w0-9]\?\>"
syn match   asmKeyword        "\<push[bwlqd]\?\>"

syn match   asmKeyword        "\<rc[lr][bwlq]\?\>"
syn match   asmKeyword        "\<i\?ret[bwlq]\?\>"
syn match   asmKeyword        "\<ret far\>"
syn match   asmKeyword        "\<ro[lr][bwlq]\?\>"

syn match   asmKeyword        "\<s[ah]l[bwlqd]\?\>"
syn match   asmKeyword        "\<s[ah]r[bwlq]\?\>"
syn match   asmKeyword        "\<sbb[bwlq]\?\>"
syn match   asmKeyword        "\<scas[bwdlq]\?\>"

syn match   asmKeyword        "\<setn\?[oslpzgebc][bwdlq]\?\>"
syn match   asmKeyword        "\<setn\?[agbpl]e[bwdlq]\?\>"
syn match   asmKeyword        "\<setn\?po[bwdlq]\?\>"
syn match   asmKeyword        "\<sh[lr]d[bwlq]\?\>"
syn match   asmKeyword        "\<stos[bwlqd]\?\>"

syn match   asmKeyword        "\<sub[bwlq]\?\>"
syn match   asmKeyword        "\<str[bwlq]\?\>"
syn match   asmKeyword        "\<sysret[bwlq]\?\>"
syn match   asmKeyword        "\<test[bwlq]\?\>"

syn match   asmKeyword        "\<xchg[bwlq]\?\>"
syn match   asmKeyword        "\<xlat[bwlq]\?\>"



" TODO: 
"mov crn
"mov drn


" Registers

setlocal iskeyword+=%

syn keyword  asmReg             %rax rax
syn keyword  asmReg             %eax eax
syn keyword  asmReg             %ax ax
syn keyword  asmReg             %ah ah
syn keyword  asmReg             %al al
syn keyword  asmReg             %rbx rbx
syn keyword  asmReg             %ebx ebx
syn keyword  asmReg             %bx bx
syn keyword  asmReg             %bh bh
syn keyword  asmReg             %bl bl
syn keyword  asmReg             %di di
syn keyword  asmReg             %edi edi
syn keyword  asmReg             %rdi rdi
syn keyword  asmReg             %rsi rsi
syn keyword  asmReg             %esi esi
syn keyword  asmReg             %si si
syn keyword  asmReg             %ip ip
syn keyword  asmReg             %eip eip
syn keyword  asmReg             %rip rip
syn keyword  asmReg             %rsp rsp
syn keyword  asmReg             %esp esp
syn keyword  asmReg             %sp sp
syn keyword  asmReg             %rbp rbp
syn keyword  asmReg             %ebp ebp
syn keyword  asmReg             %bp bp
syn keyword  asmReg             %gs gs
syn keyword  asmReg             %es es
syn keyword  asmReg             %ds ds
syn keyword  asmReg             %fs fs
syn keyword  asmReg             %ss ss
syn keyword  asmReg             %cs cs
syn keyword  asmReg             %rcx rcx
syn keyword  asmReg             %ecx ecx
syn keyword  asmReg             %cx cx
syn keyword  asmReg             %ch ch
syn keyword  asmReg             %cl cl
syn keyword  asmReg             %rdx rdx
syn keyword  asmReg             %edx edx
syn keyword  asmReg             %dx dx
syn keyword  asmReg             %dh dh
syn keyword  asmReg             %dl dl
syn keyword  asmReg             %r8 r8
syn keyword  asmReg             %r9 r9
syn keyword  asmReg             %r10 r10
syn keyword  asmReg             %r11 r11
syn keyword  asmReg             %r12 r12
syn keyword  asmReg             %r13 r13
syn keyword  asmReg             %r14 r14
syn keyword  asmReg             %r15 r15

syn keyword  asmReg 		%xmm0 %xmm1 %xmm2 %xmm3 %xmm4
syn keyword  asmReg 		%xmm5 %xmm6 %xmm7 %xmm8 %xmm9
syn keyword  asmReg 		%xmm10 %xmm11 %xmm12 %xmm14
syn keyword  asmReg 		%xmm15

" labels

syn match asmLabel		"^[[:blank:]]*[a-z_][a-z0-9_]*:"he=e-1
syn match asmLabel		"^[[:blank:]]*[0-9a-f]*:"he=e-1
syn match asmLabel		"<[^0-9][a-zA-Z@_.]*\([+-]0x[0-9a-f]*\)\?>"

syn match byteDump		"\t\([0-9a-f]\{2} \)\+ *\t"
hi def link byteDump Comment
hi def link asmLabel Label
setlocal iskeyword+=$
" numbers 
syn match octNumber		"\<0\+[1-7]\=[\t\n$,; ]\>"
syn match decNumber		"\<\$[1-9]\d*\>"
syn match decNumber		"\<\$-[1-9]\d*\>"
syn match octNumber		"\<0[0-7][0-7]\+\>"
syn match hexNumber		"\<\$\?0[xX][0-9a-fA-F]\+\>"
syn match binNumber		"\<0[bB][0-1]*\>"
syn match decNumber		"\<[0-9]\d*\>[^:]"
syn match decNumber		"\<[0-9]\d*\>$"

hi def link decNumber	asmNumber
hi def link octNumber	asmNumber
hi def link hexNumber	asmNumber
hi def link binNumber	asmNumber


" Comments : (taken from c.vim)
" cCommentGroup allows adding matches for special things in comments
syn cluster	cCommentGroup	contains=cTodo
if exists("c_comment_strings")

  syntax match	cCommentSkip	contained "^\s*\*\($\|\s\+\)"
  syntax region cCommentString	contained start=+L\=\\\@<!"+ skip=+\\\\\|\\"+ end=+"+ end=+\*/+me=s-1 contains=cSpecial,cCommentSkip
  syntax region cComment2String	contained start=+L\=\\\@<!"+ skip=+\\\\\|\\"+ end=+"+ end="$" contains=cSpecial
  syntax region  cCommentL	start="//" skip="\\$" end="$" keepend contains=@cCommentGroup,cComment2String
  if exists("c_no_comment_fold")
    syntax region cComment	matchgroup=cCommentStart start="/\*" end="\*/" contains=@cCommentGroup,cCommentStartError,cCommentString
  else
    syntax region cComment	matchgroup=cCommentStart start="/\*" end="\*/" contains=@cCommentGroup,cCommentStartError,cCommentString
  endif
else
  syn region	cCommentL	start="//" skip="\\$" end="$" keepend contains=@cCommentGroup
  if exists("c_no_comment_fold")
    syn region	cComment	matchgroup=cCommentStart start="/\*" end="\*/" contains=@cCommentGroup,cCommentStartError
  else
    syn region	cComment	matchgroup=cCommentStart start="/\*" end="\*/" contains=@cCommentGroup,cCommentStartError fold
  endif
endif

" keep a // comment separately, it terminates a preproc. conditional
syntax match	cCommentError	display "\*/"
syntax match	cCommentStartError display "/\*"me=e-1 contained
" C Preproc

syn region	cPreCondit	start="^\s*\(%:\|#\)\s*\(if\|ifdef\|ifndef\|elif\)\>" skip="\\$" end="$" end="//"me=s-1 contains=cComment,cCppString,asmNumber,cCommentError
syn match	cPreCondit	display "^\s*\(%:\|#\)\s*\(else\|endif\)\>"

syn region	cCppOut		start="^\s*\(%:\|#\)\s*if\s\+0\+\>" end=".\@=\|$" contains=cCppOut2 fold
syn region	cCppOut2	contained start="0" end="^\s*\(%:\|#\)\s*\(endif\>\|else\>\|elif\>\)" contains=cCppSkip
syn region	cCppSkip	contained start="^\s*\(%:\|#\)\s*\(if\>\|ifdef\>\|ifndef\>\)" skip="\\$" end="^\s*\(%:\|#\)\s*endif\>" contains=cCppSkip

syn region	cIncluded	display contained start=+"+ skip=+\\\\\|\\"+ end=+"+
syn match	cIncluded	display contained "<[^>]*>"
syn match	cInclude	display "^\s*\(%:\|#\)\s*include\>\s*["<]" contains=cIncluded 
syn cluster	cPreProcGroup	contains=cPreCondit,cIncluded,cInclude,cDefine,cErrInParen,cErrInBracket,cUserLabel,cSpecial,asmNumber,cCppOut,cCppOut2,cCppSkip,cString,cCommentSkip,cCommentString,cComment2String,@cCommentGroup,cCommentStartError 
syn region	cDefine		start="^\s*\(%:\|#\)\s*\(define\|undef\)\>" skip="\\$" end="$" end="//"me=s-1 contains=ALLBUT,@cPreProcGroup 
syn region	cPreProc	start="^\s*\(%:\|#\)\s*\(pragma\>\|line\>\|warning\>\|warn\>\|error\>\)" skip="\\$" end="$" keepend contains=ALLBUT,@cPreProcGroup contained


syn region 	asmComment	start="# " skip="\\$" end="$" 


syn region gasMacro start=".macro" end=".endm" contains=asmKeyword,decNumber,octNumber,hexNumber,asmReg,asmComment,cComment


" should add : contains=@cPreProcGroup
"
" Bind groups to highlighting groups :

" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet


if version >= 508 || !exists("did_asmx86_64_syntax_inits")

  if version < 508
    let did_asmx64_64_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif



  HiLink        gasMacro        PreProc

  HiLink        asmKeyword      Keyword

  HiLink        asmLabel        Label

  HiLink        cCommentString	cString
  HiLink        cComment2String	cString
  HiLink        cCommentSkip	cComment
  HiLink        cCommentL	cComment
  HiLink        cCommentStart	cComment
  HiLink	asmComment	Comment
  HiLink        cComment	Comment

  HiLink        cPreProc        PreProc
  HiLink        cDefine		Macro
  HiLink        cIncluded	cString
  HiLink        cPreCondit	PreCondit
  HiLink        cInclude	Include
  HiLink        cString		String
  HiLink        cCommentString	cString
  HiLink        cComment2String	cString
  HiLink        cCommentSkip	cComment
  HiLink        cTodo		Todo
  HiLink        cCppSkip	cCppOut
  HiLink        cCppOut2	cCppOut
  HiLink        cCppOut		Comment
  HiLink        cDefine		Macro

  HiLink        decNumber       Number
  HiLink        hexNumber       Number
  HiLink        octNumber       Number
  HiLink        binNumber       Number

  HiLink        asmReg          Identifier
  delcommand HiLink
endif

let b:current_syntax = "asmx86_64"

" vim: set shiftwidth=2
