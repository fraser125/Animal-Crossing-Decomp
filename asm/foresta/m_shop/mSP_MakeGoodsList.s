lbl_803E8FB4:
/* 803E8FB4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803E8FB8  7C 08 02 A6 */	mflr r0
/* 803E8FBC  90 01 00 34 */	stw r0, 0x34(r1)
/* 803E8FC0  39 61 00 30 */	addi r11, r1, 0x30
/* 803E8FC4  4B CB 1F 01 */	bl func_8009AEC4
/* 803E8FC8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803E8FCC  38 00 00 00 */	li r0, 0
/* 803E8FD0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803E8FD4  90 01 00 08 */	stw r0, 8(r1)
/* 803E8FD8  3F A4 00 02 */	addis r29, r4, 2
/* 803E8FDC  7C 79 1B 78 */	mr r25, r3
/* 803E8FE0  7F BF EB 78 */	mr r31, r29
/* 803E8FE4  3B BD 04 0E */	addi r29, r29, 0x40e
/* 803E8FE8  48 00 09 7D */	bl mSP_GetShopLevel
/* 803E8FEC  7C 7E 1B 78 */	mr r30, r3
/* 803E8FF0  3C 60 80 66 */	lis r3, l_goods_count_table@ha /* 0x8065D790@ha */
/* 803E8FF4  57 C0 10 3A */	slwi r0, r30, 2
/* 803E8FF8  38 63 D7 90 */	addi r3, r3, l_goods_count_table@l /* 0x8065D790@l */
/* 803E8FFC  7C 63 00 2E */	lwzx r3, r3, r0
/* 803E9000  8B 83 00 09 */	lbz r28, 9(r3)
/* 803E9004  8B 63 00 0A */	lbz r27, 0xa(r3)
/* 803E9008  8B 43 00 08 */	lbz r26, 8(r3)
/* 803E900C  48 00 1D 81 */	bl mSP_CheckFukubikiDay
/* 803E9010  2C 03 00 00 */	cmpwi r3, 0
/* 803E9014  40 82 00 B8 */	bne lbl_803E90CC
/* 803E9018  48 00 1C F9 */	bl mSP_Chk_HukubukuroSail
/* 803E901C  2C 03 00 00 */	cmpwi r3, 0
/* 803E9020  41 82 00 0C */	beq lbl_803E902C
/* 803E9024  38 00 00 00 */	li r0, 0
/* 803E9028  98 1F 04 64 */	stb r0, 0x464(r31)
lbl_803E902C:
/* 803E902C  7F 23 CB 78 */	mr r3, r25
/* 803E9030  7F A5 EB 78 */	mr r5, r29
/* 803E9034  38 81 00 08 */	addi r4, r1, 8
/* 803E9038  4B FF F9 D9 */	bl mSP_MakeRandomGoodsList
/* 803E903C  48 00 1C D5 */	bl mSP_Chk_HukubukuroSail
/* 803E9040  2C 03 00 00 */	cmpwi r3, 0
/* 803E9044  41 82 00 58 */	beq lbl_803E909C
/* 803E9048  88 BF 04 64 */	lbz r5, 0x464(r31)
/* 803E904C  7F 84 07 74 */	extsb r4, r28
/* 803E9050  7F 63 07 74 */	extsb r3, r27
/* 803E9054  7F 40 07 74 */	extsb r0, r26
/* 803E9058  7C A5 22 14 */	add r5, r5, r4
/* 803E905C  2C 1E 00 02 */	cmpwi r30, 2
/* 803E9060  54 A4 06 3E */	clrlwi r4, r5, 0x18
/* 803E9064  98 BF 04 64 */	stb r5, 0x464(r31)
/* 803E9068  7C 84 1A 14 */	add r4, r4, r3
/* 803E906C  54 83 06 3E */	clrlwi r3, r4, 0x18
/* 803E9070  98 9F 04 64 */	stb r4, 0x464(r31)
/* 803E9074  7C 03 02 14 */	add r0, r3, r0
/* 803E9078  98 1F 04 64 */	stb r0, 0x464(r31)
/* 803E907C  41 80 00 50 */	blt lbl_803E90CC
/* 803E9080  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 803E9084  38 03 00 01 */	addi r0, r3, 1
/* 803E9088  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 803E908C  98 1F 04 64 */	stb r0, 0x464(r31)
/* 803E9090  38 03 00 01 */	addi r0, r3, 1
/* 803E9094  98 1F 04 64 */	stb r0, 0x464(r31)
/* 803E9098  48 00 00 34 */	b lbl_803E90CC
lbl_803E909C:
/* 803E909C  57 DE 07 BE */	clrlwi r30, r30, 0x1e
/* 803E90A0  7F A3 EB 78 */	mr r3, r29
/* 803E90A4  7F 85 E3 78 */	mr r5, r28
/* 803E90A8  38 81 00 08 */	addi r4, r1, 8
/* 803E90AC  7F C6 F3 78 */	mr r6, r30
/* 803E90B0  4B FF FC 01 */	bl mSP_SelectTool
/* 803E90B4  7F A3 EB 78 */	mr r3, r29
/* 803E90B8  7F 65 DB 78 */	mr r5, r27
/* 803E90BC  7F 46 D3 78 */	mr r6, r26
/* 803E90C0  7F C7 F3 78 */	mr r7, r30
/* 803E90C4  38 81 00 08 */	addi r4, r1, 8
/* 803E90C8  4B FF FD A1 */	bl mSP_SelectPlant
lbl_803E90CC:
/* 803E90CC  39 61 00 30 */	addi r11, r1, 0x30
/* 803E90D0  4B CB 1E 41 */	bl func_8009AF10
/* 803E90D4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803E90D8  7C 08 03 A6 */	mtlr r0
/* 803E90DC  38 21 00 30 */	addi r1, r1, 0x30
/* 803E90E0  4E 80 00 20 */	blr 
