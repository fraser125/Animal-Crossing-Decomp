lbl_8063C858:
/* 8063C858  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8063C85C  7C 08 02 A6 */	mflr r0
/* 8063C860  90 01 00 24 */	stw r0, 0x24(r1)
/* 8063C864  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8063C868  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 8063C86C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063C870  7C 7F 1B 78 */	mr r31, r3
/* 8063C874  A8 03 08 2A */	lha r0, 0x82a(r3)
/* 8063C878  2C 00 00 01 */	cmpwi r0, 1
/* 8063C87C  40 82 00 10 */	bne lbl_8063C88C
/* 8063C880  3C 60 80 65 */	lis r3, lit_6133@ha /* 0x8064D3A8@ha */
/* 8063C884  C3 E3 D3 A8 */	lfs f31, lit_6133@l(r3)  /* 0x8064D3A8@l */
/* 8063C888  48 00 00 0C */	b lbl_8063C894
lbl_8063C88C:
/* 8063C88C  3C 60 80 65 */	lis r3, lit_368@ha /* 0x8064D278@ha */
/* 8063C890  C3 E3 D2 78 */	lfs f31, lit_368@l(r3)  /* 0x8064D278@l */
lbl_8063C894:
/* 8063C894  2C 00 00 01 */	cmpwi r0, 1
/* 8063C898  40 82 00 38 */	bne lbl_8063C8D0
/* 8063C89C  A8 1F 00 3C */	lha r0, 0x3c(r31)
/* 8063C8A0  2C 00 00 0D */	cmpwi r0, 0xd
/* 8063C8A4  41 82 00 2C */	beq lbl_8063C8D0
/* 8063C8A8  2C 00 00 0E */	cmpwi r0, 0xe
/* 8063C8AC  41 82 00 24 */	beq lbl_8063C8D0
/* 8063C8B0  2C 00 00 0F */	cmpwi r0, 0xf
/* 8063C8B4  41 82 00 1C */	beq lbl_8063C8D0
/* 8063C8B8  2C 00 00 0C */	cmpwi r0, 0xc
/* 8063C8BC  41 82 00 14 */	beq lbl_8063C8D0
/* 8063C8C0  7F E3 FB 78 */	mr r3, r31
/* 8063C8C4  38 BF 00 08 */	addi r5, r31, 8
/* 8063C8C8  38 80 00 4A */	li r4, 0x4a
/* 8063C8CC  4B FF 16 79 */	bl sAdo_OngenPos
lbl_8063C8D0:
/* 8063C8D0  C0 3F 08 34 */	lfs f1, 0x834(r31)
/* 8063C8D4  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8063C8D8  40 81 00 28 */	ble lbl_8063C900
/* 8063C8DC  3C 60 80 65 */	lis r3, lit_695@ha /* 0x8064D29C@ha */
/* 8063C8E0  C0 03 D2 9C */	lfs f0, lit_695@l(r3)  /* 0x8064D29C@l */
/* 8063C8E4  EC 01 00 28 */	fsubs f0, f1, f0
/* 8063C8E8  D0 1F 08 34 */	stfs f0, 0x834(r31)
/* 8063C8EC  C0 1F 08 34 */	lfs f0, 0x834(r31)
/* 8063C8F0  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 8063C8F4  40 80 00 50 */	bge lbl_8063C944
/* 8063C8F8  D3 FF 08 34 */	stfs f31, 0x834(r31)
/* 8063C8FC  48 00 00 48 */	b lbl_8063C944
lbl_8063C900:
/* 8063C900  40 80 00 28 */	bge lbl_8063C928
/* 8063C904  3C 60 80 65 */	lis r3, lit_695@ha /* 0x8064D29C@ha */
/* 8063C908  C0 03 D2 9C */	lfs f0, lit_695@l(r3)  /* 0x8064D29C@l */
/* 8063C90C  EC 01 00 2A */	fadds f0, f1, f0
/* 8063C910  D0 1F 08 34 */	stfs f0, 0x834(r31)
/* 8063C914  C0 1F 08 34 */	lfs f0, 0x834(r31)
/* 8063C918  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 8063C91C  40 81 00 28 */	ble lbl_8063C944
/* 8063C920  D3 FF 08 34 */	stfs f31, 0x834(r31)
/* 8063C924  48 00 00 20 */	b lbl_8063C944
lbl_8063C928:
/* 8063C928  88 1F 01 2D */	lbz r0, 0x12d(r31)
/* 8063C92C  28 00 00 00 */	cmplwi r0, 0
/* 8063C930  41 82 00 14 */	beq lbl_8063C944
/* 8063C934  A8 7F 08 2A */	lha r3, 0x82a(r31)
/* 8063C938  38 03 00 01 */	addi r0, r3, 1
/* 8063C93C  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 8063C940  B0 1F 08 2A */	sth r0, 0x82a(r31)
lbl_8063C944:
/* 8063C944  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 8063C948  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8063C94C  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 8063C950  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063C954  7C 08 03 A6 */	mtlr r0
/* 8063C958  38 21 00 20 */	addi r1, r1, 0x20
/* 8063C95C  4E 80 00 20 */	blr 
