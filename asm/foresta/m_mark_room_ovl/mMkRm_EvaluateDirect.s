lbl_804D2A10:
/* 804D2A10  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 804D2A14  7C 08 02 A6 */	mflr r0
/* 804D2A18  90 01 00 84 */	stw r0, 0x84(r1)
/* 804D2A1C  39 61 00 80 */	addi r11, r1, 0x80
/* 804D2A20  4B BC 84 85 */	bl func_8009AEA4
/* 804D2A24  7C 76 1B 78 */	mr r22, r3
/* 804D2A28  7C 97 23 78 */	mr r23, r4
/* 804D2A2C  7C B8 2B 78 */	mr r24, r5
/* 804D2A30  7C D9 33 78 */	mr r25, r6
/* 804D2A34  3B E0 00 00 */	li r31, 0
/* 804D2A38  3B 80 00 00 */	li r28, 0
/* 804D2A3C  3A A0 00 00 */	li r21, 0
lbl_804D2A40:
/* 804D2A40  7F 77 A8 2E */	lwzx r27, r23, r21
/* 804D2A44  28 1B 00 00 */	cmplwi r27, 0
/* 804D2A48  41 82 00 EC */	beq lbl_804D2B34
/* 804D2A4C  3B A0 00 01 */	li r29, 1
/* 804D2A50  3A 80 00 10 */	li r20, 0x10
/* 804D2A54  48 00 00 D8 */	b lbl_804D2B2C
lbl_804D2A58:
/* 804D2A58  3B C0 00 01 */	li r30, 1
/* 804D2A5C  48 00 00 C0 */	b lbl_804D2B1C
lbl_804D2A60:
/* 804D2A60  7C 1E A2 14 */	add r0, r30, r20
/* 804D2A64  54 00 08 3C */	slwi r0, r0, 1
/* 804D2A68  7F 5B 02 2E */	lhzx r26, r27, r0
/* 804D2A6C  57 40 A7 3E */	rlwinm r0, r26, 0x14, 0x1c, 0x1f
/* 804D2A70  2C 00 00 01 */	cmpwi r0, 1
/* 804D2A74  41 82 00 0C */	beq lbl_804D2A80
/* 804D2A78  2C 00 00 03 */	cmpwi r0, 3
/* 804D2A7C  40 82 00 9C */	bne lbl_804D2B18
lbl_804D2A80:
/* 804D2A80  7F 43 D3 78 */	mr r3, r26
/* 804D2A84  4B F1 4D 0D */	bl mRmTp_FtrItemNo2FtrIdx
/* 804D2A88  3C 80 80 6A */	lis r4, mMkRm_ftr_info@ha /* 0x8069CEFC@ha */
/* 804D2A8C  54 63 10 3A */	slwi r3, r3, 2
/* 804D2A90  38 04 CE FC */	addi r0, r4, mMkRm_ftr_info@l /* 0x8069CEFC@l */
/* 804D2A94  7C 60 1A 14 */	add r3, r0, r3
/* 804D2A98  88 03 00 02 */	lbz r0, 2(r3)
/* 804D2A9C  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 804D2AA0  41 82 00 78 */	beq lbl_804D2B18
/* 804D2AA4  7F 43 D3 78 */	mr r3, r26
/* 804D2AA8  7F C4 F3 78 */	mr r4, r30
/* 804D2AAC  7F A5 EB 78 */	mr r5, r29
/* 804D2AB0  57 53 07 BE */	clrlwi r19, r26, 0x1e
/* 804D2AB4  38 C1 00 08 */	addi r6, r1, 8
/* 804D2AB8  4B F1 32 0D */	bl mRmTp_GetFurnitureData
/* 804D2ABC  3A 40 00 00 */	li r18, 0
/* 804D2AC0  3B 40 00 00 */	li r26, 0
lbl_804D2AC4:
/* 804D2AC4  38 81 00 08 */	addi r4, r1, 8
/* 804D2AC8  3A 20 00 00 */	li r17, 0
/* 804D2ACC  7C 84 D2 14 */	add r4, r4, r26
/* 804D2AD0  80 04 00 00 */	lwz r0, 0(r4)
/* 804D2AD4  2C 00 00 00 */	cmpwi r0, 0
/* 804D2AD8  41 82 00 28 */	beq lbl_804D2B00
/* 804D2ADC  80 64 00 04 */	lwz r3, 4(r4)
/* 804D2AE0  7E 65 9B 78 */	mr r5, r19
/* 804D2AE4  80 84 00 08 */	lwz r4, 8(r4)
/* 804D2AE8  7F 26 CB 78 */	mr r6, r25
/* 804D2AEC  4B FF FE 25 */	bl mMkRm_CheckEdgeZone
/* 804D2AF0  2C 03 00 00 */	cmpwi r3, 0
/* 804D2AF4  41 82 00 0C */	beq lbl_804D2B00
/* 804D2AF8  3A 20 00 01 */	li r17, 1
/* 804D2AFC  3B FF 00 01 */	addi r31, r31, 1
lbl_804D2B00:
/* 804D2B00  2C 11 00 01 */	cmpwi r17, 1
/* 804D2B04  41 82 00 14 */	beq lbl_804D2B18
/* 804D2B08  3A 52 00 01 */	addi r18, r18, 1
/* 804D2B0C  3B 5A 00 0C */	addi r26, r26, 0xc
/* 804D2B10  2C 12 00 04 */	cmpwi r18, 4
/* 804D2B14  41 80 FF B0 */	blt lbl_804D2AC4
lbl_804D2B18:
/* 804D2B18  3B DE 00 01 */	addi r30, r30, 1
lbl_804D2B1C:
/* 804D2B1C  7C 1E C0 00 */	cmpw r30, r24
/* 804D2B20  41 80 FF 40 */	blt lbl_804D2A60
/* 804D2B24  3B BD 00 01 */	addi r29, r29, 1
/* 804D2B28  3A 94 00 10 */	addi r20, r20, 0x10
lbl_804D2B2C:
/* 804D2B2C  7C 1D C0 00 */	cmpw r29, r24
/* 804D2B30  41 80 FF 28 */	blt lbl_804D2A58
lbl_804D2B34:
/* 804D2B34  3B 9C 00 01 */	addi r28, r28, 1
/* 804D2B38  3A B5 00 04 */	addi r21, r21, 4
/* 804D2B3C  2C 1C 00 02 */	cmpwi r28, 2
/* 804D2B40  41 80 FF 00 */	blt lbl_804D2A40
/* 804D2B44  2C 1F 00 00 */	cmpwi r31, 0
/* 804D2B48  40 81 00 2C */	ble lbl_804D2B74
/* 804D2B4C  1C BF 03 20 */	mulli r5, r31, 0x320
/* 804D2B50  80 96 00 00 */	lwz r4, 0(r22)
/* 804D2B54  3C 60 81 1D */	lis r3, data_811D2D10@ha /* 0x811D2D10@ha */
/* 804D2B58  3C 00 00 01 */	lis r0, 1
/* 804D2B5C  7C 85 20 50 */	subf r4, r5, r4
/* 804D2B60  90 96 00 00 */	stw r4, 0(r22)
/* 804D2B64  38 A3 2D 10 */	addi r5, r3, data_811D2D10@l /* 0x811D2D10@l */
/* 804D2B68  80 85 00 04 */	lwz r4, 4(r5)
/* 804D2B6C  7C 80 03 78 */	or r0, r4, r0
/* 804D2B70  90 05 00 04 */	stw r0, 4(r5)
lbl_804D2B74:
/* 804D2B74  39 61 00 80 */	addi r11, r1, 0x80
/* 804D2B78  4B BC 83 79 */	bl func_8009AEF0
/* 804D2B7C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 804D2B80  7C 08 03 A6 */	mtlr r0
/* 804D2B84  38 21 00 80 */	addi r1, r1, 0x80
/* 804D2B88  4E 80 00 20 */	blr 
