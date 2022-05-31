lbl_8063CC88:
/* 8063CC88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8063CC8C  7C 08 02 A6 */	mflr r0
/* 8063CC90  90 01 00 24 */	stw r0, 0x24(r1)
/* 8063CC94  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8063CC98  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 8063CC9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063CCA0  93 C1 00 08 */	stw r30, 8(r1)
/* 8063CCA4  7C 7F 1B 78 */	mr r31, r3
/* 8063CCA8  88 03 01 2D */	lbz r0, 0x12d(r3)
/* 8063CCAC  3B DF 01 34 */	addi r30, r31, 0x134
/* 8063CCB0  C3 E3 01 44 */	lfs f31, 0x144(r3)
/* 8063CCB4  28 00 00 00 */	cmplwi r0, 0
/* 8063CCB8  41 82 00 64 */	beq lbl_8063CD1C
/* 8063CCBC  A8 1F 08 2C */	lha r0, 0x82c(r31)
/* 8063CCC0  2C 00 00 01 */	cmpwi r0, 1
/* 8063CCC4  41 82 00 38 */	beq lbl_8063CCFC
/* 8063CCC8  40 80 00 54 */	bge lbl_8063CD1C
/* 8063CCCC  2C 00 00 00 */	cmpwi r0, 0
/* 8063CCD0  40 80 00 08 */	bge lbl_8063CCD8
/* 8063CCD4  48 00 00 48 */	b lbl_8063CD1C
lbl_8063CCD8:
/* 8063CCD8  A8 1F 08 2A */	lha r0, 0x82a(r31)
/* 8063CCDC  2C 00 00 00 */	cmpwi r0, 0
/* 8063CCE0  40 82 00 3C */	bne lbl_8063CD1C
/* 8063CCE4  38 00 00 01 */	li r0, 1
/* 8063CCE8  38 9F 00 08 */	addi r4, r31, 8
/* 8063CCEC  B0 1F 08 2A */	sth r0, 0x82a(r31)
/* 8063CCF0  38 60 00 17 */	li r3, 0x17
/* 8063CCF4  4B FF 12 B5 */	bl sAdo_OngenTrgStart
/* 8063CCF8  48 00 00 24 */	b lbl_8063CD1C
lbl_8063CCFC:
/* 8063CCFC  38 A0 00 00 */	li r5, 0
/* 8063CD00  38 00 00 01 */	li r0, 1
/* 8063CD04  B0 BF 08 2A */	sth r5, 0x82a(r31)
/* 8063CD08  38 9F 00 08 */	addi r4, r31, 8
/* 8063CD0C  38 60 00 16 */	li r3, 0x16
/* 8063CD10  B0 BF 08 2C */	sth r5, 0x82c(r31)
/* 8063CD14  98 1F 01 2C */	stb r0, 0x12c(r31)
/* 8063CD18  4B FF 12 91 */	bl sAdo_OngenTrgStart
lbl_8063CD1C:
/* 8063CD1C  A8 1F 08 2A */	lha r0, 0x82a(r31)
/* 8063CD20  2C 00 00 01 */	cmpwi r0, 1
/* 8063CD24  40 82 00 38 */	bne lbl_8063CD5C
/* 8063CD28  3C 60 80 65 */	lis r3, lit_6270@ha /* 0x8064D3AC@ha */
/* 8063CD2C  C0 03 D3 AC */	lfs f0, lit_6270@l(r3)  /* 0x8064D3AC@l */
/* 8063CD30  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 8063CD34  41 82 00 14 */	beq lbl_8063CD48
/* 8063CD38  3C 60 80 65 */	lis r3, lit_6271@ha /* 0x8064D3B0@ha */
/* 8063CD3C  C0 03 D3 B0 */	lfs f0, lit_6271@l(r3)  /* 0x8064D3B0@l */
/* 8063CD40  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 8063CD44  40 82 00 18 */	bne lbl_8063CD5C
lbl_8063CD48:
/* 8063CD48  38 60 00 00 */	li r3, 0
/* 8063CD4C  38 00 00 01 */	li r0, 1
/* 8063CD50  B0 7F 08 2A */	sth r3, 0x82a(r31)
/* 8063CD54  B0 1F 08 2C */	sth r0, 0x82c(r31)
/* 8063CD58  98 7F 01 2C */	stb r3, 0x12c(r31)
lbl_8063CD5C:
/* 8063CD5C  A8 1F 08 2C */	lha r0, 0x82c(r31)
/* 8063CD60  2C 00 00 00 */	cmpwi r0, 0
/* 8063CD64  40 82 00 18 */	bne lbl_8063CD7C
/* 8063CD68  7F C3 F3 78 */	mr r3, r30
/* 8063CD6C  4B D3 42 A9 */	bl cKF_SkeletonInfo_R_play
/* 8063CD70  3C 60 80 65 */	lis r3, lit_626@ha /* 0x8064D28C@ha */
/* 8063CD74  C0 03 D2 8C */	lfs f0, lit_626@l(r3)  /* 0x8064D28C@l */
/* 8063CD78  D0 1E 00 0C */	stfs f0, 0xc(r30)
lbl_8063CD7C:
/* 8063CD7C  A8 1F 08 2A */	lha r0, 0x82a(r31)
/* 8063CD80  2C 00 00 00 */	cmpwi r0, 0
/* 8063CD84  40 82 00 94 */	bne lbl_8063CE18
/* 8063CD88  A8 1F 08 2C */	lha r0, 0x82c(r31)
/* 8063CD8C  2C 00 00 00 */	cmpwi r0, 0
/* 8063CD90  40 82 00 88 */	bne lbl_8063CE18
/* 8063CD94  3C 60 80 65 */	lis r3, lit_6272@ha /* 0x8064D3B4@ha */
/* 8063CD98  C0 03 D3 B4 */	lfs f0, lit_6272@l(r3)  /* 0x8064D3B4@l */
/* 8063CD9C  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 8063CDA0  40 82 00 38 */	bne lbl_8063CDD8
/* 8063CDA4  A8 1F 00 3C */	lha r0, 0x3c(r31)
/* 8063CDA8  2C 00 00 0D */	cmpwi r0, 0xd
/* 8063CDAC  41 82 00 6C */	beq lbl_8063CE18
/* 8063CDB0  2C 00 00 0E */	cmpwi r0, 0xe
/* 8063CDB4  41 82 00 64 */	beq lbl_8063CE18
/* 8063CDB8  2C 00 00 0F */	cmpwi r0, 0xf
/* 8063CDBC  41 82 00 5C */	beq lbl_8063CE18
/* 8063CDC0  2C 00 00 0C */	cmpwi r0, 0xc
/* 8063CDC4  41 82 00 54 */	beq lbl_8063CE18
/* 8063CDC8  38 9F 00 08 */	addi r4, r31, 8
/* 8063CDCC  38 60 00 19 */	li r3, 0x19
/* 8063CDD0  4B FF 11 D9 */	bl sAdo_OngenTrgStart
/* 8063CDD4  48 00 00 44 */	b lbl_8063CE18
lbl_8063CDD8:
/* 8063CDD8  3C 60 80 65 */	lis r3, lit_6273@ha /* 0x8064D3B8@ha */
/* 8063CDDC  C0 03 D3 B8 */	lfs f0, lit_6273@l(r3)  /* 0x8064D3B8@l */
/* 8063CDE0  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 8063CDE4  40 82 00 34 */	bne lbl_8063CE18
/* 8063CDE8  A8 1F 00 3C */	lha r0, 0x3c(r31)
/* 8063CDEC  2C 00 00 0D */	cmpwi r0, 0xd
/* 8063CDF0  41 82 00 28 */	beq lbl_8063CE18
/* 8063CDF4  2C 00 00 0E */	cmpwi r0, 0xe
/* 8063CDF8  41 82 00 20 */	beq lbl_8063CE18
/* 8063CDFC  2C 00 00 0F */	cmpwi r0, 0xf
/* 8063CE00  41 82 00 18 */	beq lbl_8063CE18
/* 8063CE04  2C 00 00 0C */	cmpwi r0, 0xc
/* 8063CE08  41 82 00 10 */	beq lbl_8063CE18
/* 8063CE0C  38 9F 00 08 */	addi r4, r31, 8
/* 8063CE10  38 60 00 19 */	li r3, 0x19
/* 8063CE14  4B FF 11 95 */	bl sAdo_OngenTrgStart
lbl_8063CE18:
/* 8063CE18  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 8063CE1C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8063CE20  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 8063CE24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063CE28  83 C1 00 08 */	lwz r30, 8(r1)
/* 8063CE2C  7C 08 03 A6 */	mtlr r0
/* 8063CE30  38 21 00 20 */	addi r1, r1, 0x20
/* 8063CE34  4E 80 00 20 */	blr 
