lbl_803A2058:
/* 803A2058  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A205C  7C 08 02 A6 */	mflr r0
/* 803A2060  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803A2064  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A2068  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803A206C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803A2070  3F E3 00 02 */	addis r31, r3, 2
/* 803A2074  88 1F 13 94 */	lbz r0, 0x1394(r31)
/* 803A2078  28 00 00 01 */	cmplwi r0, 1
/* 803A207C  40 82 00 2C */	bne lbl_803A20A8
/* 803A2080  38 61 00 0C */	addi r3, r1, 0xc
/* 803A2084  38 81 00 08 */	addi r4, r1, 8
/* 803A2088  4B FF FD 01 */	bl mFAs_GetDustNum
/* 803A208C  2C 03 00 00 */	cmpwi r3, 0
/* 803A2090  40 82 00 0C */	bne lbl_803A209C
/* 803A2094  38 00 00 00 */	li r0, 0
/* 803A2098  98 1F 13 94 */	stb r0, 0x1394(r31)
lbl_803A209C:
/* 803A209C  3C 60 81 16 */	lis r3, data_811678C8@ha /* 0x811678C8@ha */
/* 803A20A0  38 00 00 00 */	li r0, 0
/* 803A20A4  90 03 78 C8 */	stw r0, data_811678C8@l(r3)  /* 0x811678C8@l */
lbl_803A20A8:
/* 803A20A8  88 1F 13 94 */	lbz r0, 0x1394(r31)
/* 803A20AC  28 00 00 00 */	cmplwi r0, 0
/* 803A20B0  40 82 00 10 */	bne lbl_803A20C0
/* 803A20B4  4B FF FC 69 */	bl mFAs_GetFieldGoodBlockNum
/* 803A20B8  3C 80 81 16 */	lis r4, data_811678C8@ha /* 0x811678C8@ha */
/* 803A20BC  90 64 78 C8 */	stw r3, data_811678C8@l(r4)  /* 0x811678C8@l */
lbl_803A20C0:
/* 803A20C0  3C 60 81 16 */	lis r3, data_811678C8@ha /* 0x811678C8@ha */
/* 803A20C4  80 03 78 C8 */	lwz r0, data_811678C8@l(r3)  /* 0x811678C8@l */
/* 803A20C8  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 803A20CC  4B FF FC 8D */	bl mFAs_GetFieldRankbyFGoodBlock
/* 803A20D0  3C 80 81 16 */	lis r4, l_field_assessment_rank@ha /* 0x811678CC@ha */
/* 803A20D4  90 64 78 CC */	stw r3, l_field_assessment_rank@l(r4)  /* 0x811678CC@l */
/* 803A20D8  4B FF F3 D9 */	bl mFAs_SetGoodField
/* 803A20DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A20E0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803A20E4  7C 08 03 A6 */	mtlr r0
/* 803A20E8  38 21 00 20 */	addi r1, r1, 0x20
/* 803A20EC  4E 80 00 20 */	blr 
