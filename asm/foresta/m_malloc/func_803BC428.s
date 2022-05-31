lbl_803BC428:
/* 803BC428  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BC42C  7C 08 02 A6 */	mflr r0
/* 803BC430  3C A0 81 17 */	lis r5, zelda_arena@ha /* 0x81169DD8@ha */
/* 803BC434  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BC438  7C 60 1B 78 */	mr r0, r3
/* 803BC43C  38 65 9D D8 */	addi r3, r5, zelda_arena@l /* 0x81169DD8@l */
/* 803BC440  7C 85 23 78 */	mr r5, r4
/* 803BC444  7C 04 03 78 */	mr r4, r0
/* 803BC448  4B C9 FC D1 */	bl __osMallocAlign
/* 803BC44C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BC450  7C 08 03 A6 */	mtlr r0
/* 803BC454  38 21 00 10 */	addi r1, r1, 0x10
/* 803BC458  4E 80 00 20 */	blr 
