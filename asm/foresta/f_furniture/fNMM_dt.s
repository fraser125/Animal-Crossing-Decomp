lbl_806334DC:
/* 806334DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806334E0  7C 08 02 A6 */	mflr r0
/* 806334E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 806334E8  80 63 08 50 */	lwz r3, 0x850(r3)
/* 806334EC  28 03 00 00 */	cmplwi r3, 0
/* 806334F0  41 82 00 08 */	beq lbl_806334F8
/* 806334F4  4B D8 8F C1 */	bl zelda_free
lbl_806334F8:
/* 806334F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806334FC  7C 08 03 A6 */	mtlr r0
/* 80633500  38 21 00 10 */	addi r1, r1, 0x10
/* 80633504  4E 80 00 20 */	blr 
