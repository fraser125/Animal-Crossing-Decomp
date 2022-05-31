lbl_8063FB88:
/* 8063FB88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063FB8C  7C 08 02 A6 */	mflr r0
/* 8063FB90  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063FB94  80 63 08 50 */	lwz r3, 0x850(r3)
/* 8063FB98  28 03 00 00 */	cmplwi r3, 0
/* 8063FB9C  41 82 00 08 */	beq lbl_8063FBA4
/* 8063FBA0  4B D7 C9 15 */	bl zelda_free
lbl_8063FBA4:
/* 8063FBA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063FBA8  7C 08 03 A6 */	mtlr r0
/* 8063FBAC  38 21 00 10 */	addi r1, r1, 0x10
/* 8063FBB0  4E 80 00 20 */	blr 
