lbl_8037A28C:
/* 8037A28C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037A290  7C 08 02 A6 */	mflr r0
/* 8037A294  3C A0 80 65 */	lis r5, mbgm_pattern_data@ha /* 0x8064F5B8@ha */
/* 8037A298  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037A29C  38 A5 F5 B8 */	addi r5, r5, mbgm_pattern_data@l /* 0x8064F5B8@l */
/* 8037A2A0  88 C4 00 03 */	lbz r6, 3(r4)
/* 8037A2A4  80 03 00 04 */	lwz r0, 4(r3)
/* 8037A2A8  1C C6 00 0C */	mulli r6, r6, 0xc
/* 8037A2AC  88 64 00 02 */	lbz r3, 2(r4)
/* 8037A2B0  54 00 10 3A */	slwi r0, r0, 2
/* 8037A2B4  38 80 00 01 */	li r4, 1
/* 8037A2B8  7C A5 32 14 */	add r5, r5, r6
/* 8037A2BC  7C 05 00 2E */	lwzx r0, r5, r0
/* 8037A2C0  20 00 00 01 */	subfic r0, r0, 1
/* 8037A2C4  7C 00 00 34 */	cntlzw r0, r0
/* 8037A2C8  54 05 D9 7E */	srwi r5, r0, 5
/* 8037A2CC  48 00 22 D9 */	bl mBGMPsComp_volume_change_fieldSchedEv
/* 8037A2D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037A2D4  7C 08 03 A6 */	mtlr r0
/* 8037A2D8  38 21 00 10 */	addi r1, r1, 0x10
/* 8037A2DC  4E 80 00 20 */	blr 
