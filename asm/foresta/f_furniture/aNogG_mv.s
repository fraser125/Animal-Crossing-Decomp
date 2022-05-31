lbl_80640A5C:
/* 80640A5C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80640A60  7C 08 02 A6 */	mflr r0
/* 80640A64  90 01 00 34 */	stw r0, 0x34(r1)
/* 80640A68  39 61 00 30 */	addi r11, r1, 0x30
/* 80640A6C  4B A5 A4 69 */	bl func_8009AED4
/* 80640A70  7C 7D 1B 78 */	mr r29, r3
/* 80640A74  7C BE 2B 78 */	mr r30, r5
/* 80640A78  3B FD 01 34 */	addi r31, r29, 0x134
/* 80640A7C  7F E3 FB 78 */	mr r3, r31
/* 80640A80  4B D3 05 95 */	bl cKF_SkeletonInfo_R_play
/* 80640A84  2C 03 00 01 */	cmpwi r3, 1
/* 80640A88  41 82 00 1C */	beq lbl_80640AA4
/* 80640A8C  7F E3 FB 78 */	mr r3, r31
/* 80640A90  4B D3 05 85 */	bl cKF_SkeletonInfo_R_play
/* 80640A94  3C 60 80 65 */	lis r3, lit_626@ha /* 0x8064D28C@ha */
/* 80640A98  C0 03 D2 8C */	lfs f0, lit_626@l(r3)  /* 0x8064D28C@l */
/* 80640A9C  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80640AA0  48 00 00 D0 */	b lbl_80640B70
lbl_80640AA4:
/* 80640AA4  88 1D 01 2D */	lbz r0, 0x12d(r29)
/* 80640AA8  28 00 00 00 */	cmplwi r0, 0
/* 80640AAC  41 82 00 C4 */	beq lbl_80640B70
/* 80640AB0  A8 1D 00 3C */	lha r0, 0x3c(r29)
/* 80640AB4  2C 00 00 0D */	cmpwi r0, 0xd
/* 80640AB8  41 82 00 98 */	beq lbl_80640B50
/* 80640ABC  2C 00 00 0E */	cmpwi r0, 0xe
/* 80640AC0  41 82 00 90 */	beq lbl_80640B50
/* 80640AC4  2C 00 00 0F */	cmpwi r0, 0xf
/* 80640AC8  41 82 00 88 */	beq lbl_80640B50
/* 80640ACC  2C 00 00 0C */	cmpwi r0, 0xc
/* 80640AD0  41 82 00 80 */	beq lbl_80640B50
/* 80640AD4  38 9D 00 08 */	addi r4, r29, 8
/* 80640AD8  38 60 01 74 */	li r3, 0x174
/* 80640ADC  4B FE D4 CD */	bl sAdo_OngenTrgStart
/* 80640AE0  4B DA 57 01 */	bl mRmTp_GetWallIdx
/* 80640AE4  2C 03 00 41 */	cmpwi r3, 0x41
/* 80640AE8  40 82 00 68 */	bne lbl_80640B50
/* 80640AEC  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000817E@ha */
/* 80640AF0  38 63 81 7E */	addi r3, r3, 0x817E /* 0x0000817E@l */
/* 80640AF4  4B FE D2 11 */	bl sAdo_SysTrgStart
/* 80640AF8  80 9D 00 08 */	lwz r4, 8(r29)
/* 80640AFC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80640B00  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 80640B04  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80640B08  3C 63 00 02 */	addis r3, r3, 2
/* 80640B0C  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 80640B10  90 81 00 08 */	stw r4, 8(r1)
/* 80640B14  7F C7 F3 78 */	mr r7, r30
/* 80640B18  81 63 60 9C */	lwz r11, 0x609c(r3)
/* 80640B1C  38 81 00 08 */	addi r4, r1, 8
/* 80640B20  90 01 00 0C */	stw r0, 0xc(r1)
/* 80640B24  39 05 FF FF */	addi r8, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80640B28  38 60 00 79 */	li r3, 0x79
/* 80640B2C  38 A0 00 02 */	li r5, 2
/* 80640B30  80 1D 00 10 */	lwz r0, 0x10(r29)
/* 80640B34  38 C0 00 00 */	li r6, 0
/* 80640B38  39 20 00 00 */	li r9, 0
/* 80640B3C  39 40 00 00 */	li r10, 0
/* 80640B40  90 01 00 10 */	stw r0, 0x10(r1)
/* 80640B44  81 8B 00 00 */	lwz r12, 0(r11)
/* 80640B48  7D 89 03 A6 */	mtctr r12
/* 80640B4C  4E 80 04 21 */	bctrl 
lbl_80640B50:
/* 80640B50  3C 80 80 65 */	lis r4, data_8064D274@ha /* 0x8064D274@ha */
/* 80640B54  7F E3 FB 78 */	mr r3, r31
/* 80640B58  C0 04 D2 74 */	lfs f0, data_8064D274@l(r4)  /* 0x8064D274@l */
/* 80640B5C  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 80640B60  4B D3 04 B5 */	bl cKF_SkeletonInfo_R_play
/* 80640B64  3C 60 80 65 */	lis r3, lit_626@ha /* 0x8064D28C@ha */
/* 80640B68  C0 03 D2 8C */	lfs f0, lit_626@l(r3)  /* 0x8064D28C@l */
/* 80640B6C  D0 1F 00 0C */	stfs f0, 0xc(r31)
lbl_80640B70:
/* 80640B70  39 61 00 30 */	addi r11, r1, 0x30
/* 80640B74  4B A5 A3 AD */	bl func_8009AF20
/* 80640B78  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80640B7C  7C 08 03 A6 */	mtlr r0
/* 80640B80  38 21 00 30 */	addi r1, r1, 0x30
/* 80640B84  4E 80 00 20 */	blr 
