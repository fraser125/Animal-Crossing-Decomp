lbl_80639CA8:
/* 80639CA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80639CAC  7C 08 02 A6 */	mflr r0
/* 80639CB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80639CB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80639CB8  93 C1 00 08 */	stw r30, 8(r1)
/* 80639CBC  7C 7E 1B 78 */	mr r30, r3
/* 80639CC0  3B FE 01 34 */	addi r31, r30, 0x134
/* 80639CC4  7F E3 FB 78 */	mr r3, r31
/* 80639CC8  4B D3 73 4D */	bl cKF_SkeletonInfo_R_play
/* 80639CCC  2C 03 00 01 */	cmpwi r3, 1
/* 80639CD0  41 82 00 1C */	beq lbl_80639CEC
/* 80639CD4  7F E3 FB 78 */	mr r3, r31
/* 80639CD8  4B D3 73 3D */	bl cKF_SkeletonInfo_R_play
/* 80639CDC  3C 60 80 65 */	lis r3, lit_626@ha /* 0x8064D28C@ha */
/* 80639CE0  C0 03 D2 8C */	lfs f0, lit_626@l(r3)  /* 0x8064D28C@l */
/* 80639CE4  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80639CE8  48 00 00 60 */	b lbl_80639D48
lbl_80639CEC:
/* 80639CEC  88 1E 01 2D */	lbz r0, 0x12d(r30)
/* 80639CF0  28 00 00 00 */	cmplwi r0, 0
/* 80639CF4  41 82 00 54 */	beq lbl_80639D48
/* 80639CF8  A8 1E 00 3C */	lha r0, 0x3c(r30)
/* 80639CFC  2C 00 00 0D */	cmpwi r0, 0xd
/* 80639D00  41 82 00 28 */	beq lbl_80639D28
/* 80639D04  2C 00 00 0E */	cmpwi r0, 0xe
/* 80639D08  41 82 00 20 */	beq lbl_80639D28
/* 80639D0C  2C 00 00 0F */	cmpwi r0, 0xf
/* 80639D10  41 82 00 18 */	beq lbl_80639D28
/* 80639D14  2C 00 00 0C */	cmpwi r0, 0xc
/* 80639D18  41 82 00 10 */	beq lbl_80639D28
/* 80639D1C  38 9E 00 08 */	addi r4, r30, 8
/* 80639D20  38 60 01 45 */	li r3, 0x145
/* 80639D24  4B FF 42 85 */	bl sAdo_OngenTrgStart
lbl_80639D28:
/* 80639D28  3C 80 80 65 */	lis r4, data_8064D274@ha /* 0x8064D274@ha */
/* 80639D2C  7F E3 FB 78 */	mr r3, r31
/* 80639D30  C0 04 D2 74 */	lfs f0, data_8064D274@l(r4)  /* 0x8064D274@l */
/* 80639D34  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 80639D38  4B D3 72 DD */	bl cKF_SkeletonInfo_R_play
/* 80639D3C  3C 60 80 65 */	lis r3, lit_626@ha /* 0x8064D28C@ha */
/* 80639D40  C0 03 D2 8C */	lfs f0, lit_626@l(r3)  /* 0x8064D28C@l */
/* 80639D44  D0 1F 00 0C */	stfs f0, 0xc(r31)
lbl_80639D48:
/* 80639D48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80639D4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80639D50  83 C1 00 08 */	lwz r30, 8(r1)
/* 80639D54  7C 08 03 A6 */	mtlr r0
/* 80639D58  38 21 00 10 */	addi r1, r1, 0x10
/* 80639D5C  4E 80 00 20 */	blr 
