lbl_8057C6AC:
/* 8057C6AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057C6B0  7C 08 02 A6 */	mflr r0
/* 8057C6B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057C6B8  4B E6 95 89 */	bl mRmTp_ItemNo2FtrSize
/* 8057C6BC  38 63 FF FE */	addi r3, r3, -2
/* 8057C6C0  38 00 FF D8 */	li r0, -40
/* 8057C6C4  30 63 FF FF */	addic r3, r3, -1
/* 8057C6C8  7C 63 19 10 */	subfe r3, r3, r3
/* 8057C6CC  7C 03 18 78 */	andc r3, r0, r3
/* 8057C6D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057C6D4  7C 08 03 A6 */	mtlr r0
/* 8057C6D8  38 21 00 10 */	addi r1, r1, 0x10
/* 8057C6DC  4E 80 00 20 */	blr 
