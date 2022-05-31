lbl_803B3BAC:
/* 803B3BAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B3BB0  7C 08 02 A6 */	mflr r0
/* 803B3BB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B3BB8  4B FF FF B5 */	bl mLd_LandInfoInit
/* 803B3BBC  4B FF F3 79 */	bl mHm_ClearAllHomeInfo
/* 803B3BC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B3BC4  7C 08 03 A6 */	mtlr r0
/* 803B3BC8  38 21 00 10 */	addi r1, r1, 0x10
/* 803B3BCC  4E 80 00 20 */	blr 
