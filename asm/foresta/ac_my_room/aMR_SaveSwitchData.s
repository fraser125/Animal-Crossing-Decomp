lbl_80470B00:
/* 80470B00  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80470B04  7C 08 02 A6 */	mflr r0
/* 80470B08  90 01 00 34 */	stw r0, 0x34(r1)
/* 80470B0C  39 61 00 30 */	addi r11, r1, 0x30
/* 80470B10  4B C2 A3 B5 */	bl func_8009AEC4
/* 80470B14  3C 80 81 1D */	lis r4, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 80470B18  7C 79 1B 78 */	mr r25, r3
/* 80470B1C  38 64 DF E8 */	addi r3, r4, data_811CDFE8@l /* 0x811CDFE8@l */
/* 80470B20  80 03 00 00 */	lwz r0, 0(r3)
/* 80470B24  28 00 00 00 */	cmplwi r0, 0
/* 80470B28  41 82 00 98 */	beq lbl_80470BC0
/* 80470B2C  80 03 00 04 */	lwz r0, 4(r3)
/* 80470B30  28 00 00 00 */	cmplwi r0, 0
/* 80470B34  41 82 00 8C */	beq lbl_80470BC0
/* 80470B38  3B 40 00 00 */	li r26, 0
lbl_80470B3C:
/* 80470B3C  7F 43 D3 78 */	mr r3, r26
/* 80470B40  7F 24 CB 78 */	mr r4, r25
/* 80470B44  4B FF F8 DD */	bl aMR_GetBitSwitchTable
/* 80470B48  7C 7D 1B 79 */	or. r29, r3, r3
/* 80470B4C  41 82 00 68 */	beq lbl_80470BB4
/* 80470B50  38 00 00 00 */	li r0, 0
/* 80470B54  7F 43 07 34 */	extsh r3, r26
/* 80470B58  90 1D 00 04 */	stw r0, 4(r29)
/* 80470B5C  90 1D 00 00 */	stw r0, 0(r29)
/* 80470B60  4B FF F8 91 */	bl aMR_GetLayerTopFg
/* 80470B64  7C 7E 1B 79 */	or. r30, r3, r3
/* 80470B68  41 82 00 4C */	beq lbl_80470BB4
/* 80470B6C  3B 60 00 01 */	li r27, 1
/* 80470B70  3B E0 00 10 */	li r31, 0x10
lbl_80470B74:
/* 80470B74  3B 80 00 01 */	li r28, 1
lbl_80470B78:
/* 80470B78  7C 1C FA 14 */	add r0, r28, r31
/* 80470B7C  7F 84 E3 78 */	mr r4, r28
/* 80470B80  54 00 08 3C */	slwi r0, r0, 1
/* 80470B84  7F 65 DB 78 */	mr r5, r27
/* 80470B88  7C 7E 02 2E */	lhzx r3, r30, r0
/* 80470B8C  7F A7 EB 78 */	mr r7, r29
/* 80470B90  7F 46 07 34 */	extsh r6, r26
/* 80470B94  4B FF FE 81 */	bl aMR_SaveOneFtrSwitchData
/* 80470B98  3B 9C 00 01 */	addi r28, r28, 1
/* 80470B9C  2C 1C 00 08 */	cmpwi r28, 8
/* 80470BA0  40 81 FF D8 */	ble lbl_80470B78
/* 80470BA4  3B 7B 00 01 */	addi r27, r27, 1
/* 80470BA8  3B FF 00 10 */	addi r31, r31, 0x10
/* 80470BAC  2C 1B 00 08 */	cmpwi r27, 8
/* 80470BB0  40 81 FF C4 */	ble lbl_80470B74
lbl_80470BB4:
/* 80470BB4  3B 5A 00 01 */	addi r26, r26, 1
/* 80470BB8  2C 1A 00 02 */	cmpwi r26, 2
/* 80470BBC  41 80 FF 80 */	blt lbl_80470B3C
lbl_80470BC0:
/* 80470BC0  39 61 00 30 */	addi r11, r1, 0x30
/* 80470BC4  4B C2 A3 4D */	bl func_8009AF10
/* 80470BC8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80470BCC  7C 08 03 A6 */	mtlr r0
/* 80470BD0  38 21 00 30 */	addi r1, r1, 0x30
/* 80470BD4  4E 80 00 20 */	blr 
