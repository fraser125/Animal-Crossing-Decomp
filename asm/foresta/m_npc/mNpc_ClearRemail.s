lbl_803CD450:
/* 803CD450  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803CD454  7C 08 02 A6 */	mflr r0
/* 803CD458  3C 80 80 64 */	lis r4, mTM_rtcTime_ymd_clear_code@ha /* 0x806432CC@ha */
/* 803CD45C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803CD460  80 04 32 CC */	lwz r0, mTM_rtcTime_ymd_clear_code@l(r4)  /* 0x806432CC@l */
/* 803CD464  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803CD468  7C 7F 1B 78 */	mr r31, r3
/* 803CD46C  38 7F 00 04 */	addi r3, r31, 4
/* 803CD470  90 1F 00 00 */	stw r0, 0(r31)
/* 803CD474  48 01 2A 21 */	bl func_803DFE94
/* 803CD478  38 7F 00 0C */	addi r3, r31, 0xc
/* 803CD47C  4B FE 64 4D */	bl mLd_ClearLandName
/* 803CD480  88 1F 00 14 */	lbz r0, 0x14(r31)
/* 803CD484  38 60 00 00 */	li r3, 0
/* 803CD488  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 803CD48C  38 60 00 7F */	li r3, 0x7f
/* 803CD490  98 1F 00 14 */	stb r0, 0x14(r31)
/* 803CD494  88 1F 00 14 */	lbz r0, 0x14(r31)
/* 803CD498  50 60 06 7E */	rlwimi r0, r3, 0, 0x19, 0x1f
/* 803CD49C  98 1F 00 14 */	stb r0, 0x14(r31)
/* 803CD4A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803CD4A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803CD4A8  7C 08 03 A6 */	mtlr r0
/* 803CD4AC  38 21 00 10 */	addi r1, r1, 0x10
/* 803CD4B0  4E 80 00 20 */	blr 
