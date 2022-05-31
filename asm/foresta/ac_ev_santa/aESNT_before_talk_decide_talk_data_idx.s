lbl_80523A94:
/* 80523A94  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80523A98  7C 08 02 A6 */	mflr r0
/* 80523A9C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80523AA0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80523AA4  7C DF 33 78 */	mr r31, r6
/* 80523AA8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80523AAC  7C 9E 23 78 */	mr r30, r4
/* 80523AB0  88 84 00 E4 */	lbz r4, 0xe4(r4)
/* 80523AB4  88 06 00 02 */	lbz r0, 2(r6)
/* 80523AB8  7C 84 07 74 */	extsb r4, r4
/* 80523ABC  7C 00 07 74 */	extsb r0, r0
/* 80523AC0  7C 04 00 00 */	cmpw r4, r0
/* 80523AC4  40 82 00 40 */	bne lbl_80523B04
/* 80523AC8  88 9E 00 E5 */	lbz r4, 0xe5(r30)
/* 80523ACC  88 1F 00 03 */	lbz r0, 3(r31)
/* 80523AD0  7C 84 07 74 */	extsb r4, r4
/* 80523AD4  7C 00 07 74 */	extsb r0, r0
/* 80523AD8  7C 04 00 00 */	cmpw r4, r0
/* 80523ADC  40 82 00 28 */	bne lbl_80523B04
/* 80523AE0  4B B3 92 15 */	bl fqrand
/* 80523AE4  3C 60 80 65 */	lis r3, data_8064917C@ha /* 0x8064917C@ha */
/* 80523AE8  C0 03 91 7C */	lfs f0, data_8064917C@l(r3)  /* 0x8064917C@l */
/* 80523AEC  EC 00 00 72 */	fmuls f0, f0, f1
/* 80523AF0  FC 00 00 1E */	fctiwz f0, f0
/* 80523AF4  D8 01 00 08 */	stfd f0, 8(r1)
/* 80523AF8  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80523AFC  38 63 00 08 */	addi r3, r3, 8
/* 80523B00  48 00 00 2C */	b lbl_80523B2C
lbl_80523B04:
/* 80523B04  88 1F 00 01 */	lbz r0, 1(r31)
/* 80523B08  28 00 00 04 */	cmplwi r0, 4
/* 80523B0C  41 80 00 18 */	blt lbl_80523B24
/* 80523B10  7C A4 2B 78 */	mr r4, r5
/* 80523B14  7F E5 FB 78 */	mr r5, r31
/* 80523B18  38 C0 00 00 */	li r6, 0
/* 80523B1C  4B FF FD F5 */	bl aESNT_before_talk_present_decide_talk_data_idx
/* 80523B20  48 00 00 0C */	b lbl_80523B2C
lbl_80523B24:
/* 80523B24  7F E3 FB 78 */	mr r3, r31
/* 80523B28  4B FF FF 09 */	bl aESNT_before_talk_more_check_decide_talk_data_idx
lbl_80523B2C:
/* 80523B2C  2C 03 00 07 */	cmpwi r3, 7
/* 80523B30  41 82 00 14 */	beq lbl_80523B44
/* 80523B34  88 1E 00 E4 */	lbz r0, 0xe4(r30)
/* 80523B38  98 1F 00 02 */	stb r0, 2(r31)
/* 80523B3C  88 1E 00 E5 */	lbz r0, 0xe5(r30)
/* 80523B40  98 1F 00 03 */	stb r0, 3(r31)
lbl_80523B44:
/* 80523B44  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80523B48  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80523B4C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80523B50  7C 08 03 A6 */	mtlr r0
/* 80523B54  38 21 00 20 */	addi r1, r1, 0x20
/* 80523B58  4E 80 00 20 */	blr 
