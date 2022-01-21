.include "macros.inc"

.section .text

.org 0x800831BC

.global DBInit
DBInit:
/* 800831BC 0008011C  3C 80 80 00 */	lis r4, 0x80000040@ha
/* 800831C0 00080120  38 04 00 40 */	addi r0, r4, 0x80000040@l
/* 800831C4 00080124  3C 60 80 08 */	lis r3, __DBExceptionDestination@ha
/* 800831C8 00080128  90 0D 8E 08 */	stw r0, __DBInterface-_SDA_BASE_(r13)
/* 800831CC 0008012C  38 63 32 2C */	addi r3, r3, __DBExceptionDestination@l
/* 800831D0 00080130  3C 03 80 00 */	addis r0, r3, 0x8000
/* 800831D4 00080134  90 04 00 48 */	stw r0, 0x48(r4)
/* 800831D8 00080138  38 00 00 01 */	li r0, 1
/* 800831DC 0008013C  90 0D 8E 0C */	stw r0, DBVerbose-_SDA_BASE_(r13)
/* 800831E0 00080140  4E 80 00 20 */	blr 

.global __DBExceptionDestinationAux
__DBExceptionDestinationAux:
/* 800831E4 00080144  7C 08 02 A6 */	mflr r0
/* 800831E8 00080148  3C 60 80 0E */	lis r3, @7@ha
/* 800831EC 0008014C  90 01 00 04 */	stw r0, 4(r1)
/* 800831F0 00080150  38 63 0B 90 */	addi r3, r3, @7@l
/* 800831F4 00080154  4C C6 31 82 */	crclr 6
/* 800831F8 00080158  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 800831FC 0008015C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80083200 00080160  80 80 00 C0 */	lwz r4, 0xc0(0)
/* 80083204 00080164  3F E4 80 00 */	addis r31, r4, 0x8000
/* 80083208 00080168  4B FD 75 49 */	bl OSReport
/* 8008320C 0008016C  7F E3 FB 78 */	mr r3, r31
/* 80083210 00080170  4B FF 73 01 */	bl OSDumpContext
/* 80083214 00080174  4B FF 54 A9 */	bl PPCHalt
/* 80083218 00080178  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8008321C 0008017C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80083220 00080180  38 21 00 18 */	addi r1, r1, 0x18
/* 80083224 00080184  7C 08 03 A6 */	mtlr r0
/* 80083228 00080188  4E 80 00 20 */	blr 

.global __DBExceptionDestination
__DBExceptionDestination:
/* 8008322C 0008018C  7C 60 00 A6 */	mfmsr r3
/* 80083230 00080190  60 63 00 30 */	ori r3, r3, 0x30
/* 80083234 00080194  7C 60 01 24 */	mtmsr r3
/* 80083238 00080198  4B FF FF AC */	b __DBExceptionDestinationAux

.global __DBIsExceptionMarked
__DBIsExceptionMarked:
/* 8008323C 0008019C  80 8D 8E 08 */	lwz r4, __DBInterface-_SDA_BASE_(r13)
/* 80083240 000801A0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80083244 000801A4  38 60 00 01 */	li r3, 1
/* 80083248 000801A8  80 84 00 04 */	lwz r4, 4(r4)
/* 8008324C 000801AC  7C 60 00 30 */	slw r0, r3, r0
/* 80083250 000801B0  7C 83 00 38 */	and r3, r4, r0
/* 80083254 000801B4  4E 80 00 20 */	blr 

.global DBPrintf
DBPrintf:
/* 80083258 000801B8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8008325C 000801BC  40 86 00 24 */	bne cr1, lbl_80083280
/* 80083260 000801C0  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 80083264 000801C4  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 80083268 000801C8  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 8008326C 000801CC  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 80083270 000801D0  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 80083274 000801D4  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 80083278 000801D8  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 8008327C 000801DC  D9 01 00 60 */	stfd f8, 0x60(r1)
lbl_80083280:
/* 80083280 000801E0  90 61 00 08 */	stw r3, 8(r1)
/* 80083284 000801E4  90 81 00 0C */	stw r4, 0xc(r1)
/* 80083288 000801E8  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8008328C 000801EC  90 C1 00 14 */	stw r6, 0x14(r1)
/* 80083290 000801F0  90 E1 00 18 */	stw r7, 0x18(r1)
/* 80083294 000801F4  91 01 00 1C */	stw r8, 0x1c(r1)
/* 80083298 000801F8  91 21 00 20 */	stw r9, 0x20(r1)
/* 8008329C 000801FC  91 41 00 24 */	stw r10, 0x24(r1)
/* 800832A0 00080200  38 21 00 70 */	addi r1, r1, 0x70
/* 800832A4 00080204  4E 80 00 20 */	blr 
