lbl_803E6AB0:
/* 803E6AB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E6AB4  7C 08 02 A6 */	mflr r0
/* 803E6AB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E6ABC  4B FB E2 11 */	bl mFI_GetFieldId
/* 803E6AC0  54 64 04 26 */	rlwinm r4, r3, 0, 0x10, 0x13
/* 803E6AC4  54 65 04 3E */	clrlwi r5, r3, 0x10
/* 803E6AC8  38 04 A0 00 */	addi r0, r4, -24576
/* 803E6ACC  30 60 FF FF */	addic r3, r0, -1
/* 803E6AD0  38 05 A0 00 */	addi r0, r5, -24576
/* 803E6AD4  7C 63 19 10 */	subfe r3, r3, r3
/* 803E6AD8  54 00 07 BE */	clrlwi r0, r0, 0x1e
/* 803E6ADC  7C 03 18 38 */	and r3, r0, r3
/* 803E6AE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E6AE4  7C 08 03 A6 */	mtlr r0
/* 803E6AE8  38 21 00 10 */	addi r1, r1, 0x10
/* 803E6AEC  4E 80 00 20 */	blr 
