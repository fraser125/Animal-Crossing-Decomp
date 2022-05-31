lbl_805C0A9C:
/* 805C0A9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C0AA0  7C 08 02 A6 */	mflr r0
/* 805C0AA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C0AA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805C0AAC  7C 7F 1B 78 */	mr r31, r3
/* 805C0AB0  93 C1 00 08 */	stw r30, 8(r1)
/* 805C0AB4  83 C3 01 4C */	lwz r30, 0x14c(r3)
/* 805C0AB8  38 7F 01 78 */	addi r3, r31, 0x178
/* 805C0ABC  4B DB 05 59 */	bl cKF_SkeletonInfo_R_play
/* 805C0AC0  90 7F 01 74 */	stw r3, 0x174(r31)
/* 805C0AC4  4B DD A3 F5 */	bl mEv_CheckTitleDemo
/* 805C0AC8  2C 03 00 00 */	cmpwi r3, 0
/* 805C0ACC  41 81 00 0C */	bgt lbl_805C0AD8
/* 805C0AD0  7F E3 FB 78 */	mr r3, r31
/* 805C0AD4  4B FF FB D5 */	bl aTR1_position_move
lbl_805C0AD8:
/* 805C0AD8  7F E3 FB 78 */	mr r3, r31
/* 805C0ADC  4B FF FD 5D */	bl aTR1_passenger_ctrl
/* 805C0AE0  80 9E 02 B4 */	lwz r4, 0x2b4(r30)
/* 805C0AE4  80 1F 02 B4 */	lwz r0, 0x2b4(r31)
/* 805C0AE8  7C 04 00 00 */	cmpw r4, r0
/* 805C0AEC  41 82 00 0C */	beq lbl_805C0AF8
/* 805C0AF0  7F E3 FB 78 */	mr r3, r31
/* 805C0AF4  4B FF FE 7D */	bl aTR1_setupAction
lbl_805C0AF8:
/* 805C0AF8  3C 60 80 65 */	lis r3, lit_487@ha /* 0x8064ACAC@ha */
/* 805C0AFC  C0 03 AC AC */	lfs f0, lit_487@l(r3)  /* 0x8064ACAC@l */
/* 805C0B00  D0 1F 02 C8 */	stfs f0, 0x2c8(r31)
/* 805C0B04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C0B08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805C0B0C  83 C1 00 08 */	lwz r30, 8(r1)
/* 805C0B10  7C 08 03 A6 */	mtlr r0
/* 805C0B14  38 21 00 10 */	addi r1, r1, 0x10
/* 805C0B18  4E 80 00 20 */	blr 
