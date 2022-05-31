lbl_80379488:
/* 80379488  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037948C  7C 08 02 A6 */	mflr r0
/* 80379490  90 01 00 14 */	stw r0, 0x14(r1)
/* 80379494  48 02 DC 7D */	bl mFI_CheckInJustIslandOutdoor
/* 80379498  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037949C  7C 08 03 A6 */	mtlr r0
/* 803794A0  38 21 00 10 */	addi r1, r1, 0x10
/* 803794A4  4E 80 00 20 */	blr 
