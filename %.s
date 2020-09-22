	.cpu cortex-m0
	.eabi_attribute 20, 1	@ Tag_ABI_FP_denormal
	.eabi_attribute 21, 1	@ Tag_ABI_FP_exceptions
	.eabi_attribute 23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute 24, 1	@ Tag_ABI_align8_needed
	.eabi_attribute 25, 1	@ Tag_ABI_align8_preserved
	.eabi_attribute 26, 1	@ Tag_ABI_enum_size
	.eabi_attribute 30, 4	@ Tag_ABI_optimization_goals
	.eabi_attribute 34, 0	@ Tag_CPU_unaligned_access
	.eabi_attribute 18, 4	@ Tag_ABI_PCS_wchar_t
	.file	"raptor.c"
@ GNU C11 (GNU Arm Embedded Toolchain 9-2020-q2-update) version 9.3.1 20200408 (release) (arm-none-eabi)
@	compiled by GNU C version 4.2.1 Compatible Apple LLVM 11.0.0 (clang-1100.0.33.17), GMP version 6.1.0, MPFR version 3.1.4, MPC version 1.0.3, isl version isl-0.18-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -I . -I tensorflow/lite/micro/tools/make/downloads/
@ -I tensorflow/lite/micro/tools/make/downloads/gemmlowp
@ -I tensorflow/lite/micro/tools/make/downloads/flatbuffers/include
@ -I tensorflow/lite/micro/tools/make/downloads/ruy
@ -I tensorflow/lite/micro/tools/make/downloads/gcc_embedded/arm-none-eabi/
@ -I tensorflow/lite/micro/tools/make/downloads/raptor/
@ -I tensorflow/lite/micro/tools/make/downloads/raptor/sw/
@ -imultilib thumb/v6-m/nofp
@ -iprefix /Users/Mazen/Desktop/efabless/self/tensorflow/lite/micro/tools/make/downloads/gcc_embedded/bin/../lib/gcc/arm-none-eabi/9.3.1/
@ -isysroot /Users/Mazen/Desktop/efabless/self/tensorflow/lite/micro/tools/make/downloads/gcc_embedded/bin/../arm-none-eabi
@ -MMD %.d -MQ %.s -D__USES_INITFINI__ -D TF_LITE_STATIC_MEMORY -D NDEBUG
@ -D GEMMLOWP_ALLOW_SLOW_SCALAR_FALLBACK -D TF_LITE_STATIC_MEMORY -D NDEBUG
@ -D TF_LITE_MCU_DEBUG_LOG -D __FPU_PRESENT=1
@ tensorflow/lite/micro/tools/make/downloads/raptor/raptor.c
@ -mcpu=cortex-m0 -mfpu=auto -mfloat-abi=soft -mthumb -march=armv6s-m
@ -auxbase-strip %.s -ggdb -O3 -Os -Wsign-compare -Wdouble-promotion
@ -Wshadow -Wunused-variable -Wvla -Wall -Wextra
@ -Wno-missing-field-initializers -Wno-strict-aliasing -Wno-type-limits
@ -Wno-unused-function -Wno-unused-parameter -std=c11 -std=gnu++11
@ -fno-rtti -fmessage-length=0 -fno-exceptions -fno-unwind-tables
@ -ffunction-sections -fdata-sections -funsigned-char
@ -fno-delete-null-pointer-checks -fno-threadsafe-statics
@ -fomit-frame-pointer -fno-use-cxa-atexit -fverbose-asm
@ options enabled:  -faggressive-loop-optimizations -fassume-phsa
@ -fauto-inc-dec -fbranch-count-reg -fcaller-saves -fcode-hoisting
@ -fcombine-stack-adjustments -fcommon -fcompare-elim -fcprop-registers
@ -fcrossjumping -fcse-follow-jumps -fdata-sections -fdefer-pop
@ -fdevirtualize -fdevirtualize-speculatively -fdwarf2-cfi-asm
@ -fearly-inlining -feliminate-unused-debug-types -fexpensive-optimizations
@ -fforward-propagate -ffp-int-builtin-inexact -ffunction-cse
@ -ffunction-sections -fgcse -fgcse-lm -fgnu-runtime -fgnu-unique
@ -fguess-branch-probability -fhoist-adjacent-loads -fident -fif-conversion
@ -fif-conversion2 -findirect-inlining -finline -finline-atomics
@ -finline-functions -finline-functions-called-once
@ -finline-small-functions -fipa-bit-cp -fipa-cp -fipa-icf
@ -fipa-icf-functions -fipa-icf-variables -fipa-profile -fipa-pure-const
@ -fipa-reference -fipa-reference-addressable -fipa-sra
@ -fipa-stack-alignment -fipa-vrp -fira-hoist-pressure
@ -fira-share-save-slots -fira-share-spill-slots
@ -fisolate-erroneous-paths-dereference -fivopts -fkeep-static-consts
@ -fleading-underscore -flifetime-dse -flra-remat -flto-odr-type-merging
@ -fmath-errno -fmerge-constants -fmerge-debug-strings
@ -fmove-loop-invariants -fomit-frame-pointer -foptimize-sibling-calls
@ -fpartial-inlining -fpeephole -fpeephole2 -fplt -fprefetch-loop-arrays
@ -freg-struct-return -freorder-blocks -freorder-functions
@ -frerun-cse-after-loop -fsched-critical-path-heuristic
@ -fsched-dep-count-heuristic -fsched-group-heuristic -fsched-interblock
@ -fsched-last-insn-heuristic -fsched-pressure -fsched-rank-heuristic
@ -fsched-spec -fsched-spec-insn-heuristic -fsched-stalled-insns-dep
@ -fschedule-insns2 -fsection-anchors -fsemantic-interposition
@ -fshow-column -fshrink-wrap -fshrink-wrap-separate -fsigned-zeros
@ -fsplit-ivs-in-unroller -fsplit-wide-types -fssa-backprop -fssa-phiopt
@ -fstdarg-opt -fstore-merging -fstrict-aliasing
@ -fstrict-volatile-bitfields -fsync-libcalls -fthread-jumps
@ -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp -ftree-builtin-call-dce
@ -ftree-ccp -ftree-ch -ftree-coalesce-vars -ftree-copy-prop -ftree-cselim
@ -ftree-dce -ftree-dominator-opts -ftree-dse -ftree-forwprop -ftree-fre
@ -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
@ -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop -ftree-pre
@ -ftree-pta -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-slsr
@ -ftree-sra -ftree-switch-conversion -ftree-tail-merge -ftree-ter
@ -ftree-vrp -funit-at-a-time -fvar-tracking -fvar-tracking-assignments
@ -fverbose-asm -fzero-initialized-in-bss -mbe32 -mlittle-endian
@ -mpic-data-is-text-relative -msched-prolog -mthumb
@ -mvectorize-with-neon-quad

	.text
.Ltext0:
	.cfi_sections	.debug_frame
.Letext0:
	.file 1 "/Users/Mazen/Desktop/efabless/self/tensorflow/lite/micro/tools/make/downloads/gcc_embedded/arm-none-eabi/include/machine/_default_types.h"
	.file 2 "/Users/Mazen/Desktop/efabless/self/tensorflow/lite/micro/tools/make/downloads/gcc_embedded/arm-none-eabi/include/sys/_stdint.h"
	.file 3 "tensorflow/lite/micro/tools/make/downloads/raptor/raptor.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x84
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF11
	.byte	0xc
	.4byte	.LASF12
	.4byte	.LASF13
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x1
	.byte	0x4f
	.byte	0x19
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x2
	.byte	0x30
	.byte	0x14
	.4byte	0x40
	.uleb128 0x5
	.4byte	.LASF14
	.byte	0x3
	.byte	0x16
	.byte	0x11
	.4byte	0x6f
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x14
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF14:
	.ascii	"sram\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF5:
	.ascii	"long unsigned int\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF9:
	.ascii	"__uint32_t\000"
.LASF8:
	.ascii	"unsigned int\000"
.LASF7:
	.ascii	"long long unsigned int\000"
.LASF6:
	.ascii	"long long int\000"
.LASF13:
	.ascii	"/Users/Mazen/Desktop/efabless/self\000"
.LASF11:
	.ascii	"GNU C11 9.3.1 20200408 (release) -mcpu=cortex-m0 -m"
	.ascii	"fpu=auto -mfloat-abi=soft -mthumb -march=armv6s-m -"
	.ascii	"ggdb -O3 -Os -std=c11 -std=gnu++11 -fno-rtti -fmess"
	.ascii	"age-length=0 -fno-exceptions -fno-unwind-tables -ff"
	.ascii	"unction-sections -fdata-sections -funsigned-char -f"
	.ascii	"no-delete-null-pointer-checks -fno-threadsafe-stati"
	.ascii	"cs -fomit-frame-pointer -fno-use-cxa-atexit\000"
.LASF2:
	.ascii	"short int\000"
.LASF12:
	.ascii	"tensorflow/lite/micro/tools/make/downloads/raptor/r"
	.ascii	"aptor.c\000"
.LASF10:
	.ascii	"uint32_t\000"
.LASF4:
	.ascii	"long int\000"
.LASF0:
	.ascii	"signed char\000"
	.ident	"GCC: (GNU Arm Embedded Toolchain 9-2020-q2-update) 9.3.1 20200408 (release)"
