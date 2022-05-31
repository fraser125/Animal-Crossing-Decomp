lbl_8049CB28:
/* 8049CB28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049CB2C  7C 08 02 A6 */	mflr r0
/* 8049CB30  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049CB34  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 8049CB38  41 82 00 10 */	beq lbl_8049CB48
/* 8049CB3C  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FE09@ha */
/* 8049CB40  38 84 FE 09 */	addi r4, r4, 0xFE09 /* 0x0000FE09@l */
/* 8049CB44  4B F4 E2 A1 */	bl mSP_SetGoods2ReservedPoint
lbl_8049CB48:
/* 8049CB48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049CB4C  7C 08 03 A6 */	mtlr r0
/* 8049CB50  38 21 00 10 */	addi r1, r1, 0x10
/* 8049CB54  4E 80 00 20 */	blr 
