.include "macros.inc"

.section .text

.org 0x8009B520

.global GetR2__Fv
GetR2__Fv:
/* 8009B520 00098480  7C 43 13 78 */	mr r3, r2
/* 8009B524 00098484  4E 80 00 20 */	blr 

.global __fini_cpp_exceptions
__fini_cpp_exceptions:
/* 8009B528 00098488  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009B52C 0009848C  7C 08 02 A6 */	mflr r0
/* 8009B530 00098490  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009B534 00098494  80 6D 86 D0 */	lwz r3, fragmentID-_SDA_BASE_(r13)
/* 8009B538 00098498  2C 03 FF FE */	cmpwi r3, -2
/* 8009B53C 0009849C  41 82 00 10 */	beq lbl_8009B54C
/* 8009B540 000984A0  48 00 00 5D */	bl __unregister_fragment
/* 8009B544 000984A4  38 00 FF FE */	li r0, -2
/* 8009B548 000984A8  90 0D 86 D0 */	stw r0, fragmentID-_SDA_BASE_(r13)
lbl_8009B54C:
/* 8009B54C 000984AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009B550 000984B0  7C 08 03 A6 */	mtlr r0
/* 8009B554 000984B4  38 21 00 10 */	addi r1, r1, 0x10
/* 8009B558 000984B8  4E 80 00 20 */	blr 

.global __init_cpp_exceptions
__init_cpp_exceptions:
/* 8009B55C 000984BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009B560 000984C0  7C 08 02 A6 */	mflr r0
/* 8009B564 000984C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009B568 000984C8  80 0D 86 D0 */	lwz r0, fragmentID-_SDA_BASE_(r13)
/* 8009B56C 000984CC  2C 00 FF FE */	cmpwi r0, -2
/* 8009B570 000984D0  40 82 00 1C */	bne lbl_8009B58C
/* 8009B574 000984D4  4B FF FF AD */	bl GetR2__Fv
/* 8009B578 000984D8  3C A0 80 00 */	lis r5, lbl_80005684@ha
/* 8009B57C 000984DC  7C 64 1B 78 */	mr r4, r3
/* 8009B580 000984E0  38 65 56 84 */	addi r3, r5, lbl_80005684@l
/* 8009B584 000984E4  48 00 00 4D */	bl __register_fragment
/* 8009B588 000984E8  90 6D 86 D0 */	stw r3, fragmentID-_SDA_BASE_(r13)
lbl_8009B58C:
/* 8009B58C 000984EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009B590 000984F0  7C 08 03 A6 */	mtlr r0
/* 8009B594 000984F4  38 21 00 10 */	addi r1, r1, 0x10
/* 8009B598 000984F8  4E 80 00 20 */	blr 
