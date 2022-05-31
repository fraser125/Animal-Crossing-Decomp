lbl_80470A14:
/* 80470A14  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80470A18  7C 08 02 A6 */	mflr r0
/* 80470A1C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80470A20  39 61 00 20 */	addi r11, r1, 0x20
/* 80470A24  4B C2 A4 B1 */	bl func_8009AED4
/* 80470A28  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 80470A2C  7C 9D 23 78 */	mr r29, r4
/* 80470A30  2C 00 00 01 */	cmpwi r0, 1
/* 80470A34  7C BE 2B 78 */	mr r30, r5
/* 80470A38  7C C8 33 78 */	mr r8, r6
/* 80470A3C  7C FF 3B 78 */	mr r31, r7
/* 80470A40  41 82 00 0C */	beq lbl_80470A4C
/* 80470A44  2C 00 00 03 */	cmpwi r0, 3
/* 80470A48  40 82 00 A0 */	bne lbl_80470AE8
lbl_80470A4C:
/* 80470A4C  7F A5 EB 78 */	mr r5, r29
/* 80470A50  7F C6 F3 78 */	mr r6, r30
/* 80470A54  38 61 00 08 */	addi r3, r1, 8
/* 80470A58  38 81 00 0C */	addi r4, r1, 0xc
/* 80470A5C  7D 07 07 34 */	extsh r7, r8
/* 80470A60  48 00 D4 E1 */	bl aMR_UnitNum2FtrItemNoFtrID
/* 80470A64  2C 03 00 00 */	cmpwi r3, 0
/* 80470A68  41 82 00 80 */	beq lbl_80470AE8
/* 80470A6C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80470A70  3C 60 81 1D */	lis r3, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 80470A74  38 63 DF E8 */	addi r3, r3, data_811CDFE8@l /* 0x811CDFE8@l */
/* 80470A78  2C 1D 00 00 */	cmpwi r29, 0
/* 80470A7C  1C 00 08 58 */	mulli r0, r0, 0x858
/* 80470A80  80 63 00 00 */	lwz r3, 0(r3)
/* 80470A84  7C 83 02 14 */	add r4, r3, r0
/* 80470A88  40 81 00 60 */	ble lbl_80470AE8
/* 80470A8C  2C 1D 00 09 */	cmpwi r29, 9
/* 80470A90  40 80 00 58 */	bge lbl_80470AE8
/* 80470A94  2C 1E 00 00 */	cmpwi r30, 0
/* 80470A98  40 81 00 50 */	ble lbl_80470AE8
/* 80470A9C  2C 1E 00 09 */	cmpwi r30, 9
/* 80470AA0  40 80 00 48 */	bge lbl_80470AE8
/* 80470AA4  38 7E FF FF */	addi r3, r30, -1
/* 80470AA8  88 04 01 2C */	lbz r0, 0x12c(r4)
/* 80470AAC  54 63 18 38 */	slwi r3, r3, 3
/* 80470AB0  7C 7D 1A 14 */	add r3, r29, r3
/* 80470AB4  28 00 00 00 */	cmplwi r0, 0
/* 80470AB8  38 03 FF FF */	addi r0, r3, -1
/* 80470ABC  54 05 06 BE */	clrlwi r5, r0, 0x1a
/* 80470AC0  41 82 00 28 */	beq lbl_80470AE8
/* 80470AC4  38 60 00 00 */	li r3, 0
/* 80470AC8  38 80 00 01 */	li r4, 1
/* 80470ACC  4B C2 A8 79 */	bl __shl2i
/* 80470AD0  80 1F 00 04 */	lwz r0, 4(r31)
/* 80470AD4  80 BF 00 00 */	lwz r5, 0(r31)
/* 80470AD8  7C 00 23 78 */	or r0, r0, r4
/* 80470ADC  90 1F 00 04 */	stw r0, 4(r31)
/* 80470AE0  7C A0 1B 78 */	or r0, r5, r3
/* 80470AE4  90 1F 00 00 */	stw r0, 0(r31)
lbl_80470AE8:
/* 80470AE8  39 61 00 20 */	addi r11, r1, 0x20
/* 80470AEC  4B C2 A4 35 */	bl func_8009AF20
/* 80470AF0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80470AF4  7C 08 03 A6 */	mtlr r0
/* 80470AF8  38 21 00 20 */	addi r1, r1, 0x20
/* 80470AFC  4E 80 00 20 */	blr 
