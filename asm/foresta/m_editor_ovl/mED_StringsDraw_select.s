lbl_805DBC48:
/* 805DBC48  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805DBC4C  7C 08 02 A6 */	mflr r0
/* 805DBC50  90 01 00 44 */	stw r0, 0x44(r1)
/* 805DBC54  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 805DBC58  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 805DBC5C  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 805DBC60  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 805DBC64  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805DBC68  FF E0 08 90 */	fmr f31, f1
/* 805DBC6C  7C 9F 23 78 */	mr r31, r4
/* 805DBC70  FF C0 10 90 */	fmr f30, f2
/* 805DBC74  88 83 00 02 */	lbz r4, 2(r3)
/* 805DBC78  88 A3 00 03 */	lbz r5, 3(r3)
/* 805DBC7C  4B FF C7 7D */	bl mED_get_code
/* 805DBC80  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 805DBC84  98 61 00 10 */	stb r3, 0x10(r1)
/* 805DBC88  28 00 00 D3 */	cmplwi r0, 0xd3
/* 805DBC8C  41 82 00 C4 */	beq lbl_805DBD50
/* 805DBC90  3C 80 80 65 */	lis r4, lit_1993@ha /* 0x8064B260@ha */
/* 805DBC94  3C 60 80 65 */	lis r3, lit_1995@ha /* 0x8064B268@ha */
/* 805DBC98  C0 03 B2 68 */	lfs f0, lit_1995@l(r3)  /* 0x8064B268@l */
/* 805DBC9C  3C A0 80 65 */	lis r5, lit_1992@ha /* 0x8064B25C@ha */
/* 805DBCA0  C0 24 B2 60 */	lfs f1, lit_1993@l(r4)  /* 0x8064B260@l */
/* 805DBCA4  3C 60 80 65 */	lis r3, lit_1994@ha /* 0x8064B264@ha */
/* 805DBCA8  EC 00 F0 28 */	fsubs f0, f0, f30
/* 805DBCAC  C0 65 B2 5C */	lfs f3, lit_1992@l(r5)  /* 0x8064B25C@l */
/* 805DBCB0  EC 41 F8 2A */	fadds f2, f1, f31
/* 805DBCB4  C0 23 B2 64 */	lfs f1, lit_1994@l(r3)  /* 0x8064B264@l */
/* 805DBCB8  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 805DBCBC  EF C1 00 2A */	fadds f30, f1, f0
/* 805DBCC0  EF E3 10 2A */	fadds f31, f3, f2
/* 805DBCC4  38 63 80 00 */	addi r3, r3, 0x8000 /* 0x00008000@l */
/* 805DBCC8  4B DB A1 A9 */	bl chkButton
/* 805DBCCC  2C 03 00 00 */	cmpwi r3, 0
/* 805DBCD0  41 82 00 10 */	beq lbl_805DBCE0
/* 805DBCD4  3C 60 80 65 */	lis r3, lit_1859@ha /* 0x8064B22C@ha */
/* 805DBCD8  C0 03 B2 2C */	lfs f0, lit_1859@l(r3)  /* 0x8064B22C@l */
/* 805DBCDC  EF DE 00 2A */	fadds f30, f30, f0
lbl_805DBCE0:
/* 805DBCE0  88 01 00 10 */	lbz r0, 0x10(r1)
/* 805DBCE4  2C 00 00 20 */	cmpwi r0, 0x20
/* 805DBCE8  41 82 00 08 */	beq lbl_805DBCF0
/* 805DBCEC  48 00 00 20 */	b lbl_805DBD0C
lbl_805DBCF0:
/* 805DBCF0  FC 20 F8 90 */	fmr f1, f31
/* 805DBCF4  3C 60 80 6D */	lis r3, sp_col@ha /* 0x806CCF60@ha */
/* 805DBCF8  FC 40 F0 90 */	fmr f2, f30
/* 805DBCFC  38 83 CF 60 */	addi r4, r3, sp_col@l /* 0x806CCF60@l */
/* 805DBD00  7F E3 FB 78 */	mr r3, r31
/* 805DBD04  4B FF FC 6D */	bl mED_StringsDraw_spaceCode
/* 805DBD08  48 00 00 48 */	b lbl_805DBD50
lbl_805DBD0C:
/* 805DBD0C  3C 60 80 65 */	lis r3, lit_1859@ha /* 0x8064B22C@ha */
/* 805DBD10  38 00 00 00 */	li r0, 0
/* 805DBD14  C0 63 B2 2C */	lfs f3, lit_1859@l(r3)  /* 0x8064B22C@l */
/* 805DBD18  FC 20 F8 90 */	fmr f1, f31
/* 805DBD1C  90 01 00 08 */	stw r0, 8(r1)
/* 805DBD20  FC 40 F0 90 */	fmr f2, f30
/* 805DBD24  FC 80 18 90 */	fmr f4, f3
/* 805DBD28  7F E3 FB 78 */	mr r3, r31
/* 805DBD2C  90 01 00 0C */	stw r0, 0xc(r1)
/* 805DBD30  38 81 00 10 */	addi r4, r1, 0x10
/* 805DBD34  38 A0 00 01 */	li r5, 1
/* 805DBD38  38 C0 00 FF */	li r6, 0xff
/* 805DBD3C  38 E0 00 FF */	li r7, 0xff
/* 805DBD40  39 00 00 FF */	li r8, 0xff
/* 805DBD44  39 20 00 FF */	li r9, 0xff
/* 805DBD48  39 40 00 00 */	li r10, 0
/* 805DBD4C  4B DD 43 5D */	bl mFont_SetLineStrings
lbl_805DBD50:
/* 805DBD50  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 805DBD54  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 805DBD58  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 805DBD5C  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 805DBD60  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805DBD64  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805DBD68  7C 08 03 A6 */	mtlr r0
/* 805DBD6C  38 21 00 40 */	addi r1, r1, 0x40
/* 805DBD70  4E 80 00 20 */	blr 
