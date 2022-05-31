lbl_803AD2D4:
/* 803AD2D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803AD2D8  7C 08 02 A6 */	mflr r0
/* 803AD2DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803AD2E0  4B FF F9 A1 */	bl sChk_OSRTCTime_sub
/* 803AD2E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803AD2E8  7C 08 03 A6 */	mtlr r0
/* 803AD2EC  38 21 00 10 */	addi r1, r1, 0x10
/* 803AD2F0  4E 80 00 20 */	blr 
