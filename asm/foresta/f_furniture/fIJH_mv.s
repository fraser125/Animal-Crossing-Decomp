lbl_8062FBC4:
/* 8062FBC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062FBC8  7C 08 02 A6 */	mflr r0
/* 8062FBCC  3C 80 80 65 */	lis r4, lit_368@ha /* 0x8064D278@ha */
/* 8062FBD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062FBD4  C0 24 D2 78 */	lfs f1, lit_368@l(r4)  /* 0x8064D278@l */
/* 8062FBD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8062FBDC  3B E3 01 34 */	addi r31, r3, 0x134
/* 8062FBE0  C0 03 01 40 */	lfs f0, 0x140(r3)
/* 8062FBE4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8062FBE8  40 82 00 64 */	bne lbl_8062FC4C
/* 8062FBEC  88 03 01 2D */	lbz r0, 0x12d(r3)
/* 8062FBF0  28 00 00 00 */	cmplwi r0, 0
/* 8062FBF4  41 82 00 8C */	beq lbl_8062FC80
/* 8062FBF8  A8 03 00 3C */	lha r0, 0x3c(r3)
/* 8062FBFC  2C 00 00 0D */	cmpwi r0, 0xd
/* 8062FC00  41 82 00 28 */	beq lbl_8062FC28
/* 8062FC04  2C 00 00 0E */	cmpwi r0, 0xe
/* 8062FC08  41 82 00 20 */	beq lbl_8062FC28
/* 8062FC0C  2C 00 00 0F */	cmpwi r0, 0xf
/* 8062FC10  41 82 00 18 */	beq lbl_8062FC28
/* 8062FC14  2C 00 00 0C */	cmpwi r0, 0xc
/* 8062FC18  41 82 00 10 */	beq lbl_8062FC28
/* 8062FC1C  38 83 00 08 */	addi r4, r3, 8
/* 8062FC20  38 60 00 7B */	li r3, 0x7b
/* 8062FC24  4B FF E3 85 */	bl sAdo_OngenTrgStart
lbl_8062FC28:
/* 8062FC28  3C 80 80 65 */	lis r4, data_8064D274@ha /* 0x8064D274@ha */
/* 8062FC2C  7F E3 FB 78 */	mr r3, r31
/* 8062FC30  C0 04 D2 74 */	lfs f0, data_8064D274@l(r4)  /* 0x8064D274@l */
/* 8062FC34  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 8062FC38  4B D4 13 DD */	bl cKF_SkeletonInfo_R_play
/* 8062FC3C  3C 60 80 65 */	lis r3, lit_848@ha /* 0x8064D2A4@ha */
/* 8062FC40  C0 03 D2 A4 */	lfs f0, lit_848@l(r3)  /* 0x8064D2A4@l */
/* 8062FC44  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8062FC48  48 00 00 38 */	b lbl_8062FC80
lbl_8062FC4C:
/* 8062FC4C  7F E3 FB 78 */	mr r3, r31
/* 8062FC50  4B D4 13 C5 */	bl cKF_SkeletonInfo_R_play
/* 8062FC54  2C 03 00 01 */	cmpwi r3, 1
/* 8062FC58  41 82 00 1C */	beq lbl_8062FC74
/* 8062FC5C  7F E3 FB 78 */	mr r3, r31
/* 8062FC60  4B D4 13 B5 */	bl cKF_SkeletonInfo_R_play
/* 8062FC64  3C 60 80 65 */	lis r3, lit_848@ha /* 0x8064D2A4@ha */
/* 8062FC68  C0 03 D2 A4 */	lfs f0, lit_848@l(r3)  /* 0x8064D2A4@l */
/* 8062FC6C  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8062FC70  48 00 00 10 */	b lbl_8062FC80
lbl_8062FC74:
/* 8062FC74  3C 60 80 65 */	lis r3, lit_368@ha /* 0x8064D278@ha */
/* 8062FC78  C0 03 D2 78 */	lfs f0, lit_368@l(r3)  /* 0x8064D278@l */
/* 8062FC7C  D0 1F 00 0C */	stfs f0, 0xc(r31)
lbl_8062FC80:
/* 8062FC80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062FC84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8062FC88  7C 08 03 A6 */	mtlr r0
/* 8062FC8C  38 21 00 10 */	addi r1, r1, 0x10
/* 8062FC90  4E 80 00 20 */	blr 
