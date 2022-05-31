lbl_80616A4C:
/* 80616A4C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80616A50  7C 08 02 A6 */	mflr r0
/* 80616A54  90 01 00 24 */	stw r0, 0x24(r1)
/* 80616A58  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80616A5C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80616A60  7C 7E 1B 78 */	mr r30, r3
/* 80616A64  38 9E 00 28 */	addi r4, r30, 0x28
/* 80616A68  A8 C3 00 00 */	lha r6, 0(r3)
/* 80616A6C  38 7E 00 1C */	addi r3, r30, 0x1c
/* 80616A70  A8 1E 00 4C */	lha r0, 0x4c(r30)
/* 80616A74  7C 65 1B 78 */	mr r5, r3
/* 80616A78  7C 06 02 14 */	add r0, r6, r0
/* 80616A7C  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 80616A80  7C 1F 03 78 */	mr r31, r0
/* 80616A84  4B DA 44 C1 */	bl xyz_t_add
/* 80616A88  38 7E 00 10 */	addi r3, r30, 0x10
/* 80616A8C  38 9E 00 1C */	addi r4, r30, 0x1c
/* 80616A90  7C 65 1B 78 */	mr r5, r3
/* 80616A94  4B DA 44 B1 */	bl xyz_t_add
/* 80616A98  7F E0 07 34 */	extsh r0, r31
/* 80616A9C  2C 00 00 07 */	cmpwi r0, 7
/* 80616AA0  41 81 00 44 */	bgt lbl_80616AE4
/* 80616AA4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80616AA8  3C 80 80 65 */	lis r4, data_8064C72C@ha /* 0x8064C72C@ha */
/* 80616AAC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80616AB0  3C A0 80 65 */	lis r5, lit_529@ha /* 0x8064C768@ha */
/* 80616AB4  3C 63 00 02 */	addis r3, r3, 2
/* 80616AB8  38 C4 C7 2C */	addi r6, r4, data_8064C72C@l /* 0x8064C72C@l */
/* 80616ABC  80 83 60 9C */	lwz r4, 0x609c(r3)
/* 80616AC0  7F E3 FB 78 */	mr r3, r31
/* 80616AC4  C0 45 C7 68 */	lfs f2, lit_529@l(r5)  /* 0x8064C768@l */
/* 80616AC8  38 A0 00 07 */	li r5, 7
/* 80616ACC  81 84 00 14 */	lwz r12, 0x14(r4)
/* 80616AD0  38 80 00 00 */	li r4, 0
/* 80616AD4  C0 26 00 00 */	lfs f1, 0(r6)
/* 80616AD8  7D 89 03 A6 */	mtctr r12
/* 80616ADC  4E 80 04 21 */	bctrl 
/* 80616AE0  48 00 00 40 */	b lbl_80616B20
lbl_80616AE4:
/* 80616AE4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80616AE8  3C 80 80 65 */	lis r4, lit_529@ha /* 0x8064C768@ha */
/* 80616AEC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80616AF0  3C A0 80 65 */	lis r5, data_8064C72C@ha /* 0x8064C72C@ha */
/* 80616AF4  3C 63 00 02 */	addis r3, r3, 2
/* 80616AF8  38 C4 C7 68 */	addi r6, r4, lit_529@l /* 0x8064C768@l */
/* 80616AFC  80 83 60 9C */	lwz r4, 0x609c(r3)
/* 80616B00  7F E3 FB 78 */	mr r3, r31
/* 80616B04  C0 45 C7 2C */	lfs f2, data_8064C72C@l(r5)  /* 0x8064C72C@l */
/* 80616B08  38 A0 00 0F */	li r5, 0xf
/* 80616B0C  81 84 00 14 */	lwz r12, 0x14(r4)
/* 80616B10  38 80 00 08 */	li r4, 8
/* 80616B14  C0 26 00 00 */	lfs f1, 0(r6)
/* 80616B18  7D 89 03 A6 */	mtctr r12
/* 80616B1C  4E 80 04 21 */	bctrl 
lbl_80616B20:
/* 80616B20  D0 3E 00 34 */	stfs f1, 0x34(r30)
/* 80616B24  7F E0 07 35 */	extsh. r0, r31
/* 80616B28  D0 3E 00 38 */	stfs f1, 0x38(r30)
/* 80616B2C  D0 3E 00 3C */	stfs f1, 0x3c(r30)
/* 80616B30  40 82 00 40 */	bne lbl_80616B70
/* 80616B34  80 9E 00 10 */	lwz r4, 0x10(r30)
/* 80616B38  3C 60 80 65 */	lis r3, data_8064C72C@ha /* 0x8064C72C@ha */
/* 80616B3C  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 80616B40  C0 23 C7 2C */	lfs f1, data_8064C72C@l(r3)  /* 0x8064C72C@l */
/* 80616B44  38 61 00 08 */	addi r3, r1, 8
/* 80616B48  90 81 00 08 */	stw r4, 8(r1)
/* 80616B4C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80616B50  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 80616B54  90 01 00 10 */	stw r0, 0x10(r1)
/* 80616B58  4B D7 8E 41 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 80616B5C  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 80616B60  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80616B64  40 80 00 0C */	bge lbl_80616B70
/* 80616B68  38 00 00 00 */	li r0, 0
/* 80616B6C  B0 1E 00 00 */	sth r0, 0(r30)
lbl_80616B70:
/* 80616B70  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80616B74  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80616B78  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80616B7C  7C 08 03 A6 */	mtlr r0
/* 80616B80  38 21 00 20 */	addi r1, r1, 0x20
/* 80616B84  4E 80 00 20 */	blr 
