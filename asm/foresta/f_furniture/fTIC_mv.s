lbl_8063C444:
/* 8063C444  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063C448  7C 08 02 A6 */	mflr r0
/* 8063C44C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063C450  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063C454  7C 7F 1B 78 */	mr r31, r3
/* 8063C458  88 03 01 2C */	lbz r0, 0x12c(r3)
/* 8063C45C  28 00 00 00 */	cmplwi r0, 0
/* 8063C460  41 82 00 10 */	beq lbl_8063C470
/* 8063C464  3C 60 80 65 */	lis r3, data_8064D274@ha /* 0x8064D274@ha */
/* 8063C468  C0 23 D2 74 */	lfs f1, data_8064D274@l(r3)  /* 0x8064D274@l */
/* 8063C46C  48 00 00 0C */	b lbl_8063C478
lbl_8063C470:
/* 8063C470  3C 60 80 65 */	lis r3, lit_368@ha /* 0x8064D278@ha */
/* 8063C474  C0 23 D2 78 */	lfs f1, lit_368@l(r3)  /* 0x8064D278@l */
lbl_8063C478:
/* 8063C478  C0 5F 08 34 */	lfs f2, 0x834(r31)
/* 8063C47C  38 7F 01 34 */	addi r3, r31, 0x134
/* 8063C480  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8063C484  40 80 00 28 */	bge lbl_8063C4AC
/* 8063C488  3C 80 80 65 */	lis r4, lit_920@ha /* 0x8064D2B4@ha */
/* 8063C48C  C0 04 D2 B4 */	lfs f0, lit_920@l(r4)  /* 0x8064D2B4@l */
/* 8063C490  EC 02 00 2A */	fadds f0, f2, f0
/* 8063C494  D0 1F 08 34 */	stfs f0, 0x834(r31)
/* 8063C498  C0 1F 08 34 */	lfs f0, 0x834(r31)
/* 8063C49C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8063C4A0  40 81 00 30 */	ble lbl_8063C4D0
/* 8063C4A4  D0 3F 08 34 */	stfs f1, 0x834(r31)
/* 8063C4A8  48 00 00 28 */	b lbl_8063C4D0
lbl_8063C4AC:
/* 8063C4AC  40 81 00 24 */	ble lbl_8063C4D0
/* 8063C4B0  3C 80 80 65 */	lis r4, lit_920@ha /* 0x8064D2B4@ha */
/* 8063C4B4  C0 04 D2 B4 */	lfs f0, lit_920@l(r4)  /* 0x8064D2B4@l */
/* 8063C4B8  EC 02 00 28 */	fsubs f0, f2, f0
/* 8063C4BC  D0 1F 08 34 */	stfs f0, 0x834(r31)
/* 8063C4C0  C0 1F 08 34 */	lfs f0, 0x834(r31)
/* 8063C4C4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8063C4C8  40 80 00 08 */	bge lbl_8063C4D0
/* 8063C4CC  D0 3F 08 34 */	stfs f1, 0x834(r31)
lbl_8063C4D0:
/* 8063C4D0  3C 80 80 65 */	lis r4, lit_626@ha /* 0x8064D28C@ha */
/* 8063C4D4  C0 1F 08 34 */	lfs f0, 0x834(r31)
/* 8063C4D8  C0 24 D2 8C */	lfs f1, lit_626@l(r4)  /* 0x8064D28C@l */
/* 8063C4DC  EC 01 00 32 */	fmuls f0, f1, f0
/* 8063C4E0  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8063C4E4  4B D3 4B 31 */	bl cKF_SkeletonInfo_R_play
/* 8063C4E8  A8 1F 00 3C */	lha r0, 0x3c(r31)
/* 8063C4EC  2C 00 00 0D */	cmpwi r0, 0xd
/* 8063C4F0  41 82 00 84 */	beq lbl_8063C574
/* 8063C4F4  2C 00 00 0E */	cmpwi r0, 0xe
/* 8063C4F8  41 82 00 7C */	beq lbl_8063C574
/* 8063C4FC  2C 00 00 0F */	cmpwi r0, 0xf
/* 8063C500  41 82 00 74 */	beq lbl_8063C574
/* 8063C504  2C 00 00 0C */	cmpwi r0, 0xc
/* 8063C508  41 82 00 6C */	beq lbl_8063C574
/* 8063C50C  88 1F 01 2D */	lbz r0, 0x12d(r31)
/* 8063C510  28 00 00 00 */	cmplwi r0, 0
/* 8063C514  41 82 00 2C */	beq lbl_8063C540
/* 8063C518  88 1F 01 2C */	lbz r0, 0x12c(r31)
/* 8063C51C  28 00 00 01 */	cmplwi r0, 1
/* 8063C520  40 82 00 14 */	bne lbl_8063C534
/* 8063C524  38 9F 00 08 */	addi r4, r31, 8
/* 8063C528  38 60 00 16 */	li r3, 0x16
/* 8063C52C  4B FF 1A 7D */	bl sAdo_OngenTrgStart
/* 8063C530  48 00 00 10 */	b lbl_8063C540
lbl_8063C534:
/* 8063C534  38 9F 00 08 */	addi r4, r31, 8
/* 8063C538  38 60 00 17 */	li r3, 0x17
/* 8063C53C  4B FF 1A 6D */	bl sAdo_OngenTrgStart
lbl_8063C540:
/* 8063C540  3C 60 80 65 */	lis r3, lit_920@ha /* 0x8064D2B4@ha */
/* 8063C544  C0 3F 08 34 */	lfs f1, 0x834(r31)
/* 8063C548  C0 03 D2 B4 */	lfs f0, lit_920@l(r3)  /* 0x8064D2B4@l */
/* 8063C54C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8063C550  4C 41 13 82 */	cror 2, 1, 2
/* 8063C554  40 82 00 20 */	bne lbl_8063C574
/* 8063C558  88 1F 01 2C */	lbz r0, 0x12c(r31)
/* 8063C55C  28 00 00 01 */	cmplwi r0, 1
/* 8063C560  40 82 00 14 */	bne lbl_8063C574
/* 8063C564  7F E3 FB 78 */	mr r3, r31
/* 8063C568  38 BF 00 08 */	addi r5, r31, 8
/* 8063C56C  38 80 00 51 */	li r4, 0x51
/* 8063C570  4B FF 19 D5 */	bl sAdo_OngenPos
lbl_8063C574:
/* 8063C574  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063C578  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063C57C  7C 08 03 A6 */	mtlr r0
/* 8063C580  38 21 00 10 */	addi r1, r1, 0x10
/* 8063C584  4E 80 00 20 */	blr 
