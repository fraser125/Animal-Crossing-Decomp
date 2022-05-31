lbl_803C2694:
/* 803C2694  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C2698  7C 08 02 A6 */	mflr r0
/* 803C269C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C26A0  4B FF CC DD */	bl func_803BF37C
/* 803C26A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C26A8  7C 08 03 A6 */	mtlr r0
/* 803C26AC  38 21 00 10 */	addi r1, r1, 0x10
/* 803C26B0  4E 80 00 20 */	blr 
