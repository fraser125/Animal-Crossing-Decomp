lbl_8049F0D0:
/* 8049F0D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049F0D4  7C 08 02 A6 */	mflr r0
/* 8049F0D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049F0DC  4B FF FF 9D */	bl aSI_DrawShopIndoor
/* 8049F0E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049F0E4  7C 08 03 A6 */	mtlr r0
/* 8049F0E8  38 21 00 10 */	addi r1, r1, 0x10
/* 8049F0EC  4E 80 00 20 */	blr 
