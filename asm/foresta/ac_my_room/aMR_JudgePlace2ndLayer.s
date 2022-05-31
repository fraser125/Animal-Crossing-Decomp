lbl_8047E19C:
/* 8047E19C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8047E1A0  7C 08 02 A6 */	mflr r0
/* 8047E1A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8047E1A8  39 61 00 20 */	addi r11, r1, 0x20
/* 8047E1AC  4B C1 CD 29 */	bl func_8009AED4
/* 8047E1B0  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8047E1B4  7C 7F 1B 78 */	mr r31, r3
/* 8047E1B8  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 8047E1BC  7C 9D 23 78 */	mr r29, r4
/* 8047E1C0  3C 63 00 02 */	addis r3, r3, 2
/* 8047E1C4  80 83 60 8C */	lwz r4, 0x608c(r3)
/* 8047E1C8  88 63 60 03 */	lbz r3, 0x6003(r3)
/* 8047E1CC  28 04 00 00 */	cmplwi r4, 0
/* 8047E1D0  41 82 00 DC */	beq lbl_8047E2AC
/* 8047E1D4  80 84 00 00 */	lwz r4, 0(r4)
/* 8047E1D8  4B FF 4A 05 */	bl aMR_CheckRoomOwner
/* 8047E1DC  2C 03 00 00 */	cmpwi r3, 0
/* 8047E1E0  41 82 00 CC */	beq lbl_8047E2AC
/* 8047E1E4  38 60 00 00 */	li r3, 0
/* 8047E1E8  4B FF 22 09 */	bl aMR_GetLayerTopFg
/* 8047E1EC  7C 7E 1B 78 */	mr r30, r3
/* 8047E1F0  38 60 00 01 */	li r3, 1
/* 8047E1F4  4B FF 21 FD */	bl aMR_GetLayerTopFg
/* 8047E1F8  57 E5 07 3E */	clrlwi r5, r31, 0x1c
/* 8047E1FC  7C 7F 1B 78 */	mr r31, r3
/* 8047E200  2C 05 00 10 */	cmpwi r5, 0x10
/* 8047E204  57 A6 07 3E */	clrlwi r6, r29, 0x1c
/* 8047E208  40 80 00 A4 */	bge lbl_8047E2AC
/* 8047E20C  2C 06 00 10 */	cmpwi r6, 0x10
/* 8047E210  40 80 00 9C */	bge lbl_8047E2AC
/* 8047E214  28 1E 00 00 */	cmplwi r30, 0
/* 8047E218  41 82 00 94 */	beq lbl_8047E2AC
/* 8047E21C  28 1F 00 00 */	cmplwi r31, 0
/* 8047E220  41 82 00 8C */	beq lbl_8047E2AC
/* 8047E224  54 C0 20 36 */	slwi r0, r6, 4
/* 8047E228  7C 05 02 14 */	add r0, r5, r0
/* 8047E22C  54 1D 08 3C */	slwi r29, r0, 1
/* 8047E230  7C 1E EA 2E */	lhzx r0, r30, r29
/* 8047E234  28 00 00 00 */	cmplwi r0, 0
/* 8047E238  40 82 00 0C */	bne lbl_8047E244
/* 8047E23C  38 60 00 00 */	li r3, 0
/* 8047E240  48 00 00 70 */	b lbl_8047E2B0
lbl_8047E244:
/* 8047E244  38 61 00 08 */	addi r3, r1, 8
/* 8047E248  38 81 00 0C */	addi r4, r1, 0xc
/* 8047E24C  38 E0 00 00 */	li r7, 0
/* 8047E250  4B FF FC F1 */	bl aMR_UnitNum2FtrItemNoFtrID
/* 8047E254  2C 03 00 00 */	cmpwi r3, 0
/* 8047E258  41 82 00 54 */	beq lbl_8047E2AC
/* 8047E25C  3C 60 81 1D */	lis r3, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 8047E260  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8047E264  38 A3 DF E8 */	addi r5, r3, data_811CDFE8@l /* 0x811CDFE8@l */
/* 8047E268  80 65 00 04 */	lwz r3, 4(r5)
/* 8047E26C  1C 80 08 58 */	mulli r4, r0, 0x858
/* 8047E270  80 A5 00 00 */	lwz r5, 0(r5)
/* 8047E274  7C 03 00 AE */	lbzx r0, r3, r0
/* 8047E278  28 00 00 00 */	cmplwi r0, 0
/* 8047E27C  41 82 00 30 */	beq lbl_8047E2AC
/* 8047E280  3C 60 80 69 */	lis r3, aMR_layer_set_info@ha /* 0x80688984@ha */
/* 8047E284  7C 05 22 2E */	lhzx r0, r5, r4
/* 8047E288  38 63 89 84 */	addi r3, r3, aMR_layer_set_info@l /* 0x80688984@l */
/* 8047E28C  7C 03 00 AE */	lbzx r0, r3, r0
/* 8047E290  28 00 00 01 */	cmplwi r0, 1
/* 8047E294  40 82 00 18 */	bne lbl_8047E2AC
/* 8047E298  7C 1F EA 2E */	lhzx r0, r31, r29
/* 8047E29C  28 00 00 00 */	cmplwi r0, 0
/* 8047E2A0  40 82 00 0C */	bne lbl_8047E2AC
/* 8047E2A4  38 60 00 01 */	li r3, 1
/* 8047E2A8  48 00 00 08 */	b lbl_8047E2B0
lbl_8047E2AC:
/* 8047E2AC  38 60 00 00 */	li r3, 0
lbl_8047E2B0:
/* 8047E2B0  39 61 00 20 */	addi r11, r1, 0x20
/* 8047E2B4  4B C1 CC 6D */	bl func_8009AF20
/* 8047E2B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8047E2BC  7C 08 03 A6 */	mtlr r0
/* 8047E2C0  38 21 00 20 */	addi r1, r1, 0x20
/* 8047E2C4  4E 80 00 20 */	blr 
