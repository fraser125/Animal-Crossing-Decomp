lbl_803B3D98:
/* 803B3D98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B3D9C  7C 08 02 A6 */	mflr r0
/* 803B3DA0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803B3DA4  3C 60 81 17 */	lis r3, data_81168278@ha /* 0x81168278@ha */
/* 803B3DA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B3DAC  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803B3DB0  38 03 82 78 */	addi r0, r3, data_81168278@l /* 0x81168278@l */
/* 803B3DB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803B3DB8  3F E4 00 02 */	addis r31, r4, 2
/* 803B3DBC  38 7F 25 48 */	addi r3, r31, 0x2548
/* 803B3DC0  93 C1 00 08 */	stw r30, 8(r1)
/* 803B3DC4  7C 1E 03 78 */	mr r30, r0
/* 803B3DC8  A0 9F 25 52 */	lhz r4, 0x2552(r31)
/* 803B3DCC  3B FF 25 40 */	addi r31, r31, 0x2540
/* 803B3DD0  4B FF FD 69 */	bl mLd_CheckThisLand
/* 803B3DD4  2C 03 00 00 */	cmpwi r3, 0
/* 803B3DD8  40 82 00 1C */	bne lbl_803B3DF4
/* 803B3DDC  7F C3 F3 78 */	mr r3, r30
/* 803B3DE0  7F E4 FB 78 */	mr r4, r31
/* 803B3DE4  38 A0 19 00 */	li r5, 0x1900
/* 803B3DE8  4B CA 92 35 */	bl func_8005D01C
/* 803B3DEC  4B FF FE D5 */	bl mISL_RestoreIslandComb
/* 803B3DF0  48 00 00 14 */	b lbl_803B3E04
lbl_803B3DF4:
/* 803B3DF4  7F E3 FB 78 */	mr r3, r31
/* 803B3DF8  7F C4 F3 78 */	mr r4, r30
/* 803B3DFC  38 A0 19 00 */	li r5, 0x1900
/* 803B3E00  4B CA 92 1D */	bl func_8005D01C
lbl_803B3E04:
/* 803B3E04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B3E08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803B3E0C  83 C1 00 08 */	lwz r30, 8(r1)
/* 803B3E10  7C 08 03 A6 */	mtlr r0
/* 803B3E14  38 21 00 10 */	addi r1, r1, 0x10
/* 803B3E18  4E 80 00 20 */	blr 
