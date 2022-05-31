lbl_8063FDD4:
/* 8063FDD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063FDD8  7C 08 02 A6 */	mflr r0
/* 8063FDDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063FDE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063FDE4  93 C1 00 08 */	stw r30, 8(r1)
/* 8063FDE8  7C 7E 1B 78 */	mr r30, r3
/* 8063FDEC  3B FE 01 34 */	addi r31, r30, 0x134
/* 8063FDF0  7F E3 FB 78 */	mr r3, r31
/* 8063FDF4  4B D3 12 21 */	bl cKF_SkeletonInfo_R_play
/* 8063FDF8  2C 03 00 01 */	cmpwi r3, 1
/* 8063FDFC  41 82 00 8C */	beq lbl_8063FE88
/* 8063FE00  3C 60 80 65 */	lis r3, lit_368@ha /* 0x8064D278@ha */
/* 8063FE04  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8063FE08  C0 23 D2 78 */	lfs f1, lit_368@l(r3)  /* 0x8064D278@l */
/* 8063FE0C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8063FE10  41 82 00 78 */	beq lbl_8063FE88
/* 8063FE14  7F E3 FB 78 */	mr r3, r31
/* 8063FE18  4B D3 11 FD */	bl cKF_SkeletonInfo_R_play
/* 8063FE1C  3C 60 80 65 */	lis r3, lit_626@ha /* 0x8064D28C@ha */
/* 8063FE20  C0 03 D2 8C */	lfs f0, lit_626@l(r3)  /* 0x8064D28C@l */
/* 8063FE24  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8063FE28  88 1E 01 2D */	lbz r0, 0x12d(r30)
/* 8063FE2C  28 00 00 00 */	cmplwi r0, 0
/* 8063FE30  41 82 00 B4 */	beq lbl_8063FEE4
/* 8063FE34  A8 1E 00 3C */	lha r0, 0x3c(r30)
/* 8063FE38  2C 00 00 0D */	cmpwi r0, 0xd
/* 8063FE3C  41 82 00 28 */	beq lbl_8063FE64
/* 8063FE40  2C 00 00 0E */	cmpwi r0, 0xe
/* 8063FE44  41 82 00 20 */	beq lbl_8063FE64
/* 8063FE48  2C 00 00 0F */	cmpwi r0, 0xf
/* 8063FE4C  41 82 00 18 */	beq lbl_8063FE64
/* 8063FE50  2C 00 00 0C */	cmpwi r0, 0xc
/* 8063FE54  41 82 00 10 */	beq lbl_8063FE64
/* 8063FE58  38 9E 00 08 */	addi r4, r30, 8
/* 8063FE5C  38 60 01 76 */	li r3, 0x176
/* 8063FE60  4B FE E1 49 */	bl sAdo_OngenTrgStart
lbl_8063FE64:
/* 8063FE64  3C 80 80 65 */	lis r4, data_8064D274@ha /* 0x8064D274@ha */
/* 8063FE68  7F E3 FB 78 */	mr r3, r31
/* 8063FE6C  C0 04 D2 74 */	lfs f0, data_8064D274@l(r4)  /* 0x8064D274@l */
/* 8063FE70  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 8063FE74  4B D3 11 A1 */	bl cKF_SkeletonInfo_R_play
/* 8063FE78  3C 60 80 65 */	lis r3, lit_626@ha /* 0x8064D28C@ha */
/* 8063FE7C  C0 03 D2 8C */	lfs f0, lit_626@l(r3)  /* 0x8064D28C@l */
/* 8063FE80  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8063FE84  48 00 00 60 */	b lbl_8063FEE4
lbl_8063FE88:
/* 8063FE88  88 1E 01 2D */	lbz r0, 0x12d(r30)
/* 8063FE8C  28 00 00 00 */	cmplwi r0, 0
/* 8063FE90  41 82 00 54 */	beq lbl_8063FEE4
/* 8063FE94  A8 1E 00 3C */	lha r0, 0x3c(r30)
/* 8063FE98  2C 00 00 0D */	cmpwi r0, 0xd
/* 8063FE9C  41 82 00 28 */	beq lbl_8063FEC4
/* 8063FEA0  2C 00 00 0E */	cmpwi r0, 0xe
/* 8063FEA4  41 82 00 20 */	beq lbl_8063FEC4
/* 8063FEA8  2C 00 00 0F */	cmpwi r0, 0xf
/* 8063FEAC  41 82 00 18 */	beq lbl_8063FEC4
/* 8063FEB0  2C 00 00 0C */	cmpwi r0, 0xc
/* 8063FEB4  41 82 00 10 */	beq lbl_8063FEC4
/* 8063FEB8  38 9E 00 08 */	addi r4, r30, 8
/* 8063FEBC  38 60 01 76 */	li r3, 0x176
/* 8063FEC0  4B FE E0 E9 */	bl sAdo_OngenTrgStart
lbl_8063FEC4:
/* 8063FEC4  3C 80 80 65 */	lis r4, data_8064D274@ha /* 0x8064D274@ha */
/* 8063FEC8  7F E3 FB 78 */	mr r3, r31
/* 8063FECC  C0 04 D2 74 */	lfs f0, data_8064D274@l(r4)  /* 0x8064D274@l */
/* 8063FED0  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 8063FED4  4B D3 11 41 */	bl cKF_SkeletonInfo_R_play
/* 8063FED8  3C 60 80 65 */	lis r3, lit_626@ha /* 0x8064D28C@ha */
/* 8063FEDC  C0 03 D2 8C */	lfs f0, lit_626@l(r3)  /* 0x8064D28C@l */
/* 8063FEE0  D0 1F 00 0C */	stfs f0, 0xc(r31)
lbl_8063FEE4:
/* 8063FEE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063FEE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063FEEC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8063FEF0  7C 08 03 A6 */	mtlr r0
/* 8063FEF4  38 21 00 10 */	addi r1, r1, 0x10
/* 8063FEF8  4E 80 00 20 */	blr 
