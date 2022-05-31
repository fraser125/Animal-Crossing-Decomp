lbl_80377948:
/* 80377948  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8037794C  7C 08 02 A6 */	mflr r0
/* 80377950  90 01 00 24 */	stw r0, 0x24(r1)
/* 80377954  39 61 00 20 */	addi r11, r1, 0x20
/* 80377958  4B D2 35 7D */	bl func_8009AED4
/* 8037795C  3C 60 81 13 */	lis r3, banti@ha /* 0x8112C968@ha */
/* 80377960  3B C3 C9 68 */	addi r30, r3, banti@l /* 0x8112C968@l */
/* 80377964  80 1E 00 C8 */	lwz r0, 0xc8(r30)
/* 80377968  2C 00 00 00 */	cmpwi r0, 0
/* 8037796C  40 82 00 30 */	bne lbl_8037799C
/* 80377970  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80377974  88 9E 04 41 */	lbz r4, 0x441(r30)
/* 80377978  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8037797C  3C 63 00 02 */	addis r3, r3, 2
/* 80377980  88 03 61 25 */	lbz r0, 0x6125(r3)
/* 80377984  7C 04 00 40 */	cmplw r4, r0
/* 80377988  41 82 00 14 */	beq lbl_8037799C
/* 8037798C  38 7E 00 1C */	addi r3, r30, 0x1c
/* 80377990  4B FF FD 45 */	bl banti_animation_init_hiduke
/* 80377994  38 00 00 01 */	li r0, 1
/* 80377998  90 1E 00 C8 */	stw r0, 0xc8(r30)
lbl_8037799C:
/* 8037799C  3C 60 81 13 */	lis r3, banti@ha /* 0x8112C968@ha */
/* 803779A0  3B C3 C9 68 */	addi r30, r3, banti@l /* 0x8112C968@l */
/* 803779A4  80 1E 01 78 */	lwz r0, 0x178(r30)
/* 803779A8  2C 00 00 00 */	cmpwi r0, 0
/* 803779AC  40 82 00 30 */	bne lbl_803779DC
/* 803779B0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803779B4  88 9E 04 3F */	lbz r4, 0x43f(r30)
/* 803779B8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803779BC  3C 63 00 02 */	addis r3, r3, 2
/* 803779C0  88 03 61 23 */	lbz r0, 0x6123(r3)
/* 803779C4  7C 04 00 40 */	cmplw r4, r0
/* 803779C8  41 82 00 14 */	beq lbl_803779DC
/* 803779CC  38 7E 00 CC */	addi r3, r30, 0xcc
/* 803779D0  4B FF FD 05 */	bl banti_animation_init_hiduke
/* 803779D4  38 00 00 01 */	li r0, 1
/* 803779D8  90 1E 01 78 */	stw r0, 0x178(r30)
lbl_803779DC:
/* 803779DC  3C 60 81 13 */	lis r3, banti@ha /* 0x8112C968@ha */
/* 803779E0  38 63 C9 68 */	addi r3, r3, banti@l /* 0x8112C968@l */
/* 803779E4  88 63 04 3E */	lbz r3, 0x43e(r3)
/* 803779E8  28 03 00 00 */	cmplwi r3, 0
/* 803779EC  41 82 00 0C */	beq lbl_803779F8
/* 803779F0  28 03 00 0C */	cmplwi r3, 0xc
/* 803779F4  40 82 00 0C */	bne lbl_80377A00
lbl_803779F8:
/* 803779F8  3B E0 00 0C */	li r31, 0xc
/* 803779FC  48 00 00 18 */	b lbl_80377A14
lbl_80377A00:
/* 80377A00  28 03 00 0B */	cmplwi r3, 0xb
/* 80377A04  40 81 00 0C */	ble lbl_80377A10
/* 80377A08  3B E3 FF F4 */	addi r31, r3, -12
/* 80377A0C  48 00 00 08 */	b lbl_80377A14
lbl_80377A10:
/* 80377A10  7C 7F 1B 78 */	mr r31, r3
lbl_80377A14:
/* 80377A14  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80377A18  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80377A1C  3C 63 00 02 */	addis r3, r3, 2
/* 80377A20  88 63 61 22 */	lbz r3, 0x6122(r3)
/* 80377A24  28 03 00 00 */	cmplwi r3, 0
/* 80377A28  41 82 00 0C */	beq lbl_80377A34
/* 80377A2C  28 03 00 0C */	cmplwi r3, 0xc
/* 80377A30  40 82 00 0C */	bne lbl_80377A3C
lbl_80377A34:
/* 80377A34  3B A0 00 0C */	li r29, 0xc
/* 80377A38  48 00 00 18 */	b lbl_80377A50
lbl_80377A3C:
/* 80377A3C  28 03 00 0B */	cmplwi r3, 0xb
/* 80377A40  40 81 00 0C */	ble lbl_80377A4C
/* 80377A44  3B A3 FF F4 */	addi r29, r3, -12
/* 80377A48  48 00 00 08 */	b lbl_80377A50
lbl_80377A4C:
/* 80377A4C  7C 7D 1B 78 */	mr r29, r3
lbl_80377A50:
/* 80377A50  38 80 00 0A */	li r4, 0xa
/* 80377A54  3C 60 81 13 */	lis r3, banti@ha /* 0x8112C968@ha */
/* 80377A58  7C BF 23 D6 */	divw r5, r31, r4
/* 80377A5C  3B C3 C9 68 */	addi r30, r3, banti@l /* 0x8112C968@l */
/* 80377A60  80 1E 02 28 */	lwz r0, 0x228(r30)
/* 80377A64  2C 00 00 00 */	cmpwi r0, 0
/* 80377A68  7C 1D 23 D6 */	divw r0, r29, r4
/* 80377A6C  40 82 00 1C */	bne lbl_80377A88
/* 80377A70  7C 05 00 00 */	cmpw r5, r0
/* 80377A74  41 82 00 14 */	beq lbl_80377A88
/* 80377A78  38 7E 01 7C */	addi r3, r30, 0x17c
/* 80377A7C  4B FF FC B9 */	bl banti_animation_init_jikan
/* 80377A80  38 00 00 01 */	li r0, 1
/* 80377A84  90 1E 02 28 */	stw r0, 0x228(r30)
lbl_80377A88:
/* 80377A88  38 A0 00 0A */	li r5, 0xa
/* 80377A8C  3C 60 81 13 */	lis r3, banti@ha /* 0x8112C968@ha */
/* 80377A90  7C 9F 2B D6 */	divw r4, r31, r5
/* 80377A94  3B C3 C9 68 */	addi r30, r3, banti@l /* 0x8112C968@l */
/* 80377A98  80 1E 02 D8 */	lwz r0, 0x2d8(r30)
/* 80377A9C  2C 00 00 00 */	cmpwi r0, 0
/* 80377AA0  7C 1D 2B D6 */	divw r0, r29, r5
/* 80377AA4  7C 64 29 D6 */	mullw r3, r4, r5
/* 80377AA8  7C 00 29 D6 */	mullw r0, r0, r5
/* 80377AAC  7C 63 F8 50 */	subf r3, r3, r31
/* 80377AB0  7C 00 E8 50 */	subf r0, r0, r29
/* 80377AB4  40 82 00 1C */	bne lbl_80377AD0
/* 80377AB8  7C 03 00 00 */	cmpw r3, r0
/* 80377ABC  41 82 00 14 */	beq lbl_80377AD0
/* 80377AC0  38 7E 02 2C */	addi r3, r30, 0x22c
/* 80377AC4  4B FF FC 71 */	bl banti_animation_init_jikan
/* 80377AC8  38 00 00 01 */	li r0, 1
/* 80377ACC  90 1E 02 D8 */	stw r0, 0x2d8(r30)
lbl_80377AD0:
/* 80377AD0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80377AD4  3C A0 81 13 */	lis r5, banti@ha /* 0x8112C968@ha */
/* 80377AD8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80377ADC  38 80 00 0A */	li r4, 0xa
/* 80377AE0  3B E5 C9 68 */	addi r31, r5, banti@l /* 0x8112C968@l */
/* 80377AE4  3F C3 00 02 */	addis r30, r3, 2
/* 80377AE8  88 1F 04 3D */	lbz r0, 0x43d(r31)
/* 80377AEC  88 7E 61 21 */	lbz r3, 0x6121(r30)
/* 80377AF0  7C A0 23 D6 */	divw r5, r0, r4
/* 80377AF4  80 1F 03 88 */	lwz r0, 0x388(r31)
/* 80377AF8  2C 00 00 00 */	cmpwi r0, 0
/* 80377AFC  7C 03 23 D6 */	divw r0, r3, r4
/* 80377B00  40 82 00 1C */	bne lbl_80377B1C
/* 80377B04  7C 05 00 00 */	cmpw r5, r0
/* 80377B08  41 82 00 14 */	beq lbl_80377B1C
/* 80377B0C  38 7F 02 DC */	addi r3, r31, 0x2dc
/* 80377B10  4B FF FC 25 */	bl banti_animation_init_jikan
/* 80377B14  38 00 00 01 */	li r0, 1
/* 80377B18  90 1F 03 88 */	stw r0, 0x388(r31)
lbl_80377B1C:
/* 80377B1C  88 FF 04 3D */	lbz r7, 0x43d(r31)
/* 80377B20  38 C0 00 0A */	li r6, 0xa
/* 80377B24  88 9E 61 21 */	lbz r4, 0x6121(r30)
/* 80377B28  3C 60 81 13 */	lis r3, banti@ha /* 0x8112C968@ha */
/* 80377B2C  7C A7 33 D6 */	divw r5, r7, r6
/* 80377B30  3B E3 C9 68 */	addi r31, r3, banti@l /* 0x8112C968@l */
/* 80377B34  80 1F 04 38 */	lwz r0, 0x438(r31)
/* 80377B38  2C 00 00 00 */	cmpwi r0, 0
/* 80377B3C  7C 04 33 D6 */	divw r0, r4, r6
/* 80377B40  7C 65 31 D6 */	mullw r3, r5, r6
/* 80377B44  7C 00 31 D6 */	mullw r0, r0, r6
/* 80377B48  7C 63 38 50 */	subf r3, r3, r7
/* 80377B4C  7C 00 20 50 */	subf r0, r0, r4
/* 80377B50  40 82 00 1C */	bne lbl_80377B6C
/* 80377B54  7C 03 00 00 */	cmpw r3, r0
/* 80377B58  41 82 00 14 */	beq lbl_80377B6C
/* 80377B5C  38 7F 03 8C */	addi r3, r31, 0x38c
/* 80377B60  4B FF FB D5 */	bl banti_animation_init_jikan
/* 80377B64  38 00 00 01 */	li r0, 1
/* 80377B68  90 1F 04 38 */	stw r0, 0x438(r31)
lbl_80377B6C:
/* 80377B6C  39 61 00 20 */	addi r11, r1, 0x20
/* 80377B70  4B D2 33 B1 */	bl func_8009AF20
/* 80377B74  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80377B78  7C 08 03 A6 */	mtlr r0
/* 80377B7C  38 21 00 20 */	addi r1, r1, 0x20
/* 80377B80  4E 80 00 20 */	blr 
