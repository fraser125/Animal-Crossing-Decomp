lbl_80637AB0:
/* 80637AB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80637AB4  7C 08 02 A6 */	mflr r0
/* 80637AB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80637ABC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80637AC0  93 C1 00 08 */	stw r30, 8(r1)
/* 80637AC4  7C 7E 1B 78 */	mr r30, r3
/* 80637AC8  3B FE 01 34 */	addi r31, r30, 0x134
/* 80637ACC  A8 03 08 2A */	lha r0, 0x82a(r3)
/* 80637AD0  2C 00 00 01 */	cmpwi r0, 1
/* 80637AD4  40 82 00 30 */	bne lbl_80637B04
/* 80637AD8  7F E3 FB 78 */	mr r3, r31
/* 80637ADC  4B D3 95 39 */	bl cKF_SkeletonInfo_R_play
/* 80637AE0  2C 03 00 01 */	cmpwi r3, 1
/* 80637AE4  41 82 00 14 */	beq lbl_80637AF8
/* 80637AE8  3C 60 80 65 */	lis r3, lit_626@ha /* 0x8064D28C@ha */
/* 80637AEC  C0 03 D2 8C */	lfs f0, lit_626@l(r3)  /* 0x8064D28C@l */
/* 80637AF0  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80637AF4  48 00 00 74 */	b lbl_80637B68
lbl_80637AF8:
/* 80637AF8  38 00 00 00 */	li r0, 0
/* 80637AFC  B0 1E 08 2A */	sth r0, 0x82a(r30)
/* 80637B00  48 00 00 68 */	b lbl_80637B68
lbl_80637B04:
/* 80637B04  88 1E 01 2D */	lbz r0, 0x12d(r30)
/* 80637B08  28 00 00 00 */	cmplwi r0, 0
/* 80637B0C  41 82 00 5C */	beq lbl_80637B68
/* 80637B10  A8 1E 00 3C */	lha r0, 0x3c(r30)
/* 80637B14  2C 00 00 0D */	cmpwi r0, 0xd
/* 80637B18  41 82 00 28 */	beq lbl_80637B40
/* 80637B1C  2C 00 00 0E */	cmpwi r0, 0xe
/* 80637B20  41 82 00 20 */	beq lbl_80637B40
/* 80637B24  2C 00 00 0F */	cmpwi r0, 0xf
/* 80637B28  41 82 00 18 */	beq lbl_80637B40
/* 80637B2C  2C 00 00 0C */	cmpwi r0, 0xc
/* 80637B30  41 82 00 10 */	beq lbl_80637B40
/* 80637B34  38 9E 00 08 */	addi r4, r30, 8
/* 80637B38  38 60 01 44 */	li r3, 0x144
/* 80637B3C  4B FF 64 6D */	bl sAdo_OngenTrgStart
lbl_80637B40:
/* 80637B40  3C 60 80 65 */	lis r3, data_8064D274@ha /* 0x8064D274@ha */
/* 80637B44  38 00 00 01 */	li r0, 1
/* 80637B48  C0 03 D2 74 */	lfs f0, data_8064D274@l(r3)  /* 0x8064D274@l */
/* 80637B4C  7F E3 FB 78 */	mr r3, r31
/* 80637B50  B0 1E 08 2A */	sth r0, 0x82a(r30)
/* 80637B54  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 80637B58  4B D3 94 BD */	bl cKF_SkeletonInfo_R_play
/* 80637B5C  3C 60 80 65 */	lis r3, lit_626@ha /* 0x8064D28C@ha */
/* 80637B60  C0 03 D2 8C */	lfs f0, lit_626@l(r3)  /* 0x8064D28C@l */
/* 80637B64  D0 1F 00 0C */	stfs f0, 0xc(r31)
lbl_80637B68:
/* 80637B68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80637B6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80637B70  83 C1 00 08 */	lwz r30, 8(r1)
/* 80637B74  7C 08 03 A6 */	mtlr r0
/* 80637B78  38 21 00 10 */	addi r1, r1, 0x10
/* 80637B7C  4E 80 00 20 */	blr 
