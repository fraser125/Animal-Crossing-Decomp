lbl_80635270:
/* 80635270  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80635274  7C 08 02 A6 */	mflr r0
/* 80635278  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063527C  80 63 08 50 */	lwz r3, 0x850(r3)
/* 80635280  28 03 00 00 */	cmplwi r3, 0
/* 80635284  41 82 00 08 */	beq lbl_8063528C
/* 80635288  4B D8 72 2D */	bl zelda_free
lbl_8063528C:
/* 8063528C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80635290  7C 08 03 A6 */	mtlr r0
/* 80635294  38 21 00 10 */	addi r1, r1, 0x10
/* 80635298  4E 80 00 20 */	blr 
