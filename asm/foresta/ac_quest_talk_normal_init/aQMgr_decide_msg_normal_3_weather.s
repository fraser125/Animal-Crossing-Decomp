lbl_80493990:
/* 80493990  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80493994  7C 08 02 A6 */	mflr r0
/* 80493998  90 01 00 24 */	stw r0, 0x24(r1)
/* 8049399C  39 61 00 20 */	addi r11, r1, 0x20
/* 804939A0  4B C0 75 31 */	bl func_8009AED0
/* 804939A4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804939A8  7C 9C 23 78 */	mr r28, r4
/* 804939AC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804939B0  3B C0 00 05 */	li r30, 5
/* 804939B4  3C 63 00 02 */	addis r3, r3, 2
/* 804939B8  3B A0 00 00 */	li r29, 0
/* 804939BC  AB E3 66 6C */	lha r31, 0x666c(r3)
/* 804939C0  2C 1F 00 03 */	cmpwi r31, 3
/* 804939C4  40 82 00 08 */	bne lbl_804939CC
/* 804939C8  3B E0 00 00 */	li r31, 0
lbl_804939CC:
/* 804939CC  4B F2 01 3D */	bl mLd_PlayerManKindCheck
/* 804939D0  2C 03 00 00 */	cmpwi r3, 0
/* 804939D4  41 82 00 0C */	beq lbl_804939E0
/* 804939D8  3B C0 00 04 */	li r30, 4
/* 804939DC  3B A0 00 01 */	li r29, 1
lbl_804939E0:
/* 804939E0  3C 60 80 69 */	lis r3, l_normal3_weather@ha /* 0x8068B618@ha */
/* 804939E4  57 85 10 3A */	slwi r5, r28, 2
/* 804939E8  38 83 B6 18 */	addi r4, r3, l_normal3_weather@l /* 0x8068B618@l */
/* 804939EC  7F C3 F3 78 */	mr r3, r30
/* 804939F0  1C 1F 00 05 */	mulli r0, r31, 5
/* 804939F4  7C 84 28 2E */	lwzx r4, r4, r5
/* 804939F8  7F C4 02 14 */	add r30, r4, r0
/* 804939FC  4B F5 09 D5 */	bl mQst_GetRandom
/* 80493A00  7C 63 EA 14 */	add r3, r3, r29
/* 80493A04  39 61 00 20 */	addi r11, r1, 0x20
/* 80493A08  7C 7E 1A 14 */	add r3, r30, r3
/* 80493A0C  4B C0 75 11 */	bl func_8009AF1C
/* 80493A10  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80493A14  7C 08 03 A6 */	mtlr r0
/* 80493A18  38 21 00 20 */	addi r1, r1, 0x20
/* 80493A1C  4E 80 00 20 */	blr 
