lbl_803D3B28:
/* 803D3B28  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803D3B2C  7C 08 02 A6 */	mflr r0
/* 803D3B30  90 01 00 34 */	stw r0, 0x34(r1)
/* 803D3B34  39 61 00 30 */	addi r11, r1, 0x30
/* 803D3B38  4B CC 73 99 */	bl func_8009AED0
/* 803D3B3C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803D3B40  3C 60 80 64 */	lis r3, lit_1926@ha /* 0x806428E8@ha */
/* 803D3B44  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803D3B48  3B 80 00 00 */	li r28, 0
/* 803D3B4C  3F C4 00 01 */	addis r30, r4, 1
/* 803D3B50  3B E3 28 E8 */	addi r31, r3, lit_1926@l /* 0x806428E8@l */
/* 803D3B54  3F A4 00 02 */	addis r29, r4, 2
/* 803D3B58  3B DE 74 38 */	addi r30, r30, 0x7438
/* 803D3B5C  3B BD 61 64 */	addi r29, r29, 0x6164
lbl_803D3B60:
/* 803D3B60  7F C3 F3 78 */	mr r3, r30
/* 803D3B64  4B FF 8A 59 */	bl mNpc_CheckFreeAnimalInfo
/* 803D3B68  2C 03 00 00 */	cmpwi r3, 0
/* 803D3B6C  40 82 00 2C */	bne lbl_803D3B98
/* 803D3B70  80 BD 00 04 */	lwz r5, 4(r29)
/* 803D3B74  38 61 00 08 */	addi r3, r1, 8
/* 803D3B78  80 9D 00 08 */	lwz r4, 8(r29)
/* 803D3B7C  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 803D3B80  90 A1 00 08 */	stw r5, 8(r1)
/* 803D3B84  C0 3F 00 00 */	lfs f1, 0(r31)
/* 803D3B88  90 81 00 0C */	stw r4, 0xc(r1)
/* 803D3B8C  90 01 00 10 */	stw r0, 0x10(r1)
/* 803D3B90  4B FB BE 09 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 803D3B94  D0 3D 00 08 */	stfs f1, 8(r29)
lbl_803D3B98:
/* 803D3B98  3B 9C 00 01 */	addi r28, r28, 1
/* 803D3B9C  3B BD 00 38 */	addi r29, r29, 0x38
/* 803D3BA0  2C 1C 00 0F */	cmpwi r28, 0xf
/* 803D3BA4  3B DE 09 88 */	addi r30, r30, 0x988
/* 803D3BA8  41 80 FF B8 */	blt lbl_803D3B60
/* 803D3BAC  39 61 00 30 */	addi r11, r1, 0x30
/* 803D3BB0  4B CC 73 6D */	bl func_8009AF1C
/* 803D3BB4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803D3BB8  7C 08 03 A6 */	mtlr r0
/* 803D3BBC  38 21 00 30 */	addi r1, r1, 0x30
/* 803D3BC0  4E 80 00 20 */	blr 
