lbl_80473A14:
/* 80473A14  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80473A18  7C 08 02 A6 */	mflr r0
/* 80473A1C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80473A20  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80473A24  7C 7F 1B 78 */	mr r31, r3
/* 80473A28  38 61 00 24 */	addi r3, r1, 0x24
/* 80473A2C  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80473A30  80 9F 00 00 */	lwz r4, 0(r31)
/* 80473A34  80 1F 00 04 */	lwz r0, 4(r31)
/* 80473A38  90 81 00 24 */	stw r4, 0x24(r1)
/* 80473A3C  90 01 00 28 */	stw r0, 0x28(r1)
/* 80473A40  80 1F 00 08 */	lwz r0, 8(r31)
/* 80473A44  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80473A48  4B F3 39 E9 */	bl mFI_GetUnitFG
/* 80473A4C  28 03 00 00 */	cmplwi r3, 0
/* 80473A50  41 82 00 E0 */	beq lbl_80473B30
/* 80473A54  A0 03 00 00 */	lhz r0, 0(r3)
/* 80473A58  28 00 10 00 */	cmplwi r0, 0x1000
/* 80473A5C  41 80 00 0C */	blt lbl_80473A68
/* 80473A60  28 00 20 00 */	cmplwi r0, 0x2000
/* 80473A64  40 81 00 0C */	ble lbl_80473A70
lbl_80473A68:
/* 80473A68  28 00 FE 1F */	cmplwi r0, 0xfe1f
/* 80473A6C  40 82 00 C4 */	bne lbl_80473B30
lbl_80473A70:
/* 80473A70  80 DF 00 00 */	lwz r6, 0(r31)
/* 80473A74  38 61 00 14 */	addi r3, r1, 0x14
/* 80473A78  80 1F 00 04 */	lwz r0, 4(r31)
/* 80473A7C  38 81 00 10 */	addi r4, r1, 0x10
/* 80473A80  38 A1 00 18 */	addi r5, r1, 0x18
/* 80473A84  90 C1 00 18 */	stw r6, 0x18(r1)
/* 80473A88  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80473A8C  80 1F 00 08 */	lwz r0, 8(r31)
/* 80473A90  90 01 00 20 */	stw r0, 0x20(r1)
/* 80473A94  4B F3 18 D5 */	bl mFI_Wpos2UtNum
/* 80473A98  2C 03 00 00 */	cmpwi r3, 0
/* 80473A9C  41 82 00 94 */	beq lbl_80473B30
/* 80473AA0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80473AA4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80473AA8  3C 63 00 02 */	addis r3, r3, 2
/* 80473AAC  80 03 60 8C */	lwz r0, 0x608c(r3)
/* 80473AB0  28 00 00 00 */	cmplwi r0, 0
/* 80473AB4  41 82 00 7C */	beq lbl_80473B30
/* 80473AB8  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 80473ABC  38 61 00 08 */	addi r3, r1, 8
/* 80473AC0  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80473AC4  38 81 00 0C */	addi r4, r1, 0xc
/* 80473AC8  54 A5 07 3E */	clrlwi r5, r5, 0x1c
/* 80473ACC  38 E0 00 00 */	li r7, 0
/* 80473AD0  54 06 07 3E */	clrlwi r6, r0, 0x1c
/* 80473AD4  48 00 A4 6D */	bl aMR_UnitNum2FtrItemNoFtrID
/* 80473AD8  2C 03 00 00 */	cmpwi r3, 0
/* 80473ADC  41 82 00 54 */	beq lbl_80473B30
/* 80473AE0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80473AE4  3C 60 81 1D */	lis r3, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 80473AE8  38 63 DF E8 */	addi r3, r3, data_811CDFE8@l /* 0x811CDFE8@l */
/* 80473AEC  1C 00 08 58 */	mulli r0, r0, 0x858
/* 80473AF0  80 63 00 00 */	lwz r3, 0(r3)
/* 80473AF4  7F C3 02 14 */	add r30, r3, r0
/* 80473AF8  A0 7E 00 00 */	lhz r3, 0(r30)
/* 80473AFC  4B FF C6 A5 */	bl func_804701A0
/* 80473B00  28 03 00 00 */	cmplwi r3, 0
/* 80473B04  41 82 00 2C */	beq lbl_80473B30
/* 80473B08  A0 03 00 2E */	lhz r0, 0x2e(r3)
/* 80473B0C  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 80473B10  40 82 00 20 */	bne lbl_80473B30
/* 80473B14  7F E4 FB 78 */	mr r4, r31
/* 80473B18  38 7E 00 4C */	addi r3, r30, 0x4c
/* 80473B1C  48 00 3B 3D */	bl aMR_CheckFtrAndGoki2
/* 80473B20  2C 03 00 00 */	cmpwi r3, 0
/* 80473B24  41 82 00 0C */	beq lbl_80473B30
/* 80473B28  38 60 00 01 */	li r3, 1
/* 80473B2C  48 00 00 08 */	b lbl_80473B34
lbl_80473B30:
/* 80473B30  38 60 00 00 */	li r3, 0
lbl_80473B34:
/* 80473B34  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80473B38  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80473B3C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80473B40  7C 08 03 A6 */	mtlr r0
/* 80473B44  38 21 00 40 */	addi r1, r1, 0x40
/* 80473B48  4E 80 00 20 */	blr 
