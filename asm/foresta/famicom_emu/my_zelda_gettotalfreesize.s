lbl_8062D378:
/* 8062D378  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062D37C  7C 08 02 A6 */	mflr r0
/* 8062D380  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062D384  4B D8 F1 95 */	bl zelda_GetTotalFreeSize
/* 8062D388  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062D38C  7C 08 03 A6 */	mtlr r0
/* 8062D390  38 21 00 10 */	addi r1, r1, 0x10
/* 8062D394  4E 80 00 20 */	blr 
