lbl_805A0AA4:
/* 805A0AA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A0AA8  7C 08 02 A6 */	mflr r0
/* 805A0AAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A0AB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A0AB4  7C 9F 23 78 */	mr r31, r4
/* 805A0AB8  93 C1 00 08 */	stw r30, 8(r1)
/* 805A0ABC  7C 7E 1B 78 */	mr r30, r3
/* 805A0AC0  C0 23 00 74 */	lfs f1, 0x74(r3)
/* 805A0AC4  C0 03 01 EC */	lfs f0, 0x1ec(r3)
/* 805A0AC8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805A0ACC  40 82 00 7C */	bne lbl_805A0B48
/* 805A0AD0  80 BE 02 28 */	lwz r5, 0x228(r30)
/* 805A0AD4  2C 05 00 00 */	cmpwi r5, 0
/* 805A0AD8  41 81 00 68 */	bgt lbl_805A0B40
/* 805A0ADC  FC 20 0A 10 */	fabs f1, f1
/* 805A0AE0  3C A0 80 65 */	lis r5, lit_516@ha /* 0x8064A2E8@ha */
/* 805A0AE4  C0 05 A2 E8 */	lfs f0, lit_516@l(r5)  /* 0x8064A2E8@l */
/* 805A0AE8  FC 20 08 18 */	frsp f1, f1
/* 805A0AEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A0AF0  40 80 00 40 */	bge lbl_805A0B30
/* 805A0AF4  80 1E 01 D0 */	lwz r0, 0x1d0(r30)
/* 805A0AF8  2C 00 00 0C */	cmpwi r0, 0xc
/* 805A0AFC  41 82 00 20 */	beq lbl_805A0B1C
/* 805A0B00  4B FF FE DD */	bl aITB_check_water_touch
/* 805A0B04  2C 03 00 01 */	cmpwi r3, 1
/* 805A0B08  40 82 00 14 */	bne lbl_805A0B1C
/* 805A0B0C  38 00 00 01 */	li r0, 1
/* 805A0B10  38 80 00 05 */	li r4, 5
/* 805A0B14  90 1E 02 30 */	stw r0, 0x230(r30)
/* 805A0B18  48 00 00 08 */	b lbl_805A0B20
lbl_805A0B1C:
/* 805A0B1C  38 80 00 04 */	li r4, 4
lbl_805A0B20:
/* 805A0B20  7F C3 F3 78 */	mr r3, r30
/* 805A0B24  7F E5 FB 78 */	mr r5, r31
/* 805A0B28  48 00 10 65 */	bl aITB_setupAction
/* 805A0B2C  48 00 00 1C */	b lbl_805A0B48
lbl_805A0B30:
/* 805A0B30  3C 60 80 65 */	lis r3, lit_407@ha /* 0x8064A2C4@ha */
/* 805A0B34  C0 03 A2 C4 */	lfs f0, lit_407@l(r3)  /* 0x8064A2C4@l */
/* 805A0B38  D0 1E 01 EC */	stfs f0, 0x1ec(r30)
/* 805A0B3C  48 00 00 0C */	b lbl_805A0B48
lbl_805A0B40:
/* 805A0B40  38 05 FF FF */	addi r0, r5, -1
/* 805A0B44  90 1E 02 28 */	stw r0, 0x228(r30)
lbl_805A0B48:
/* 805A0B48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A0B4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A0B50  83 C1 00 08 */	lwz r30, 8(r1)
/* 805A0B54  7C 08 03 A6 */	mtlr r0
/* 805A0B58  38 21 00 10 */	addi r1, r1, 0x10
/* 805A0B5C  4E 80 00 20 */	blr 
