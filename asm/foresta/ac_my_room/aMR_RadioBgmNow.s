lbl_80473D58:
/* 80473D58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80473D5C  7C 08 02 A6 */	mflr r0
/* 80473D60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80473D64  4B F0 8B 39 */	bl mBGMPsComp_execute_bgm_num_get
/* 80473D68  20 03 00 1B */	subfic r0, r3, 0x1b
/* 80473D6C  7C 00 00 34 */	cntlzw r0, r0
/* 80473D70  54 03 D9 7E */	srwi r3, r0, 5
/* 80473D74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80473D78  7C 08 03 A6 */	mtlr r0
/* 80473D7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80473D80  4E 80 00 20 */	blr 
