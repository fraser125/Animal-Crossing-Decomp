lbl_80523910:
/* 80523910  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80523914  7C 08 02 A6 */	mflr r0
/* 80523918  90 01 00 34 */	stw r0, 0x34(r1)
/* 8052391C  39 61 00 30 */	addi r11, r1, 0x30
/* 80523920  4B B7 75 A9 */	bl func_8009AEC8
/* 80523924  3C E0 81 14 */	lis r7, common_data@ha /* 0x81138538@ha */
/* 80523928  7C 9E 23 78 */	mr r30, r4
/* 8052392C  38 87 85 38 */	addi r4, r7, common_data@l /* 0x81138538@l */
/* 80523930  7C 7A 1B 78 */	mr r26, r3
/* 80523934  3F A4 00 02 */	addis r29, r4, 2
/* 80523938  7C BB 2B 78 */	mr r27, r5
/* 8052393C  80 7D 61 3C */	lwz r3, 0x613c(r29)
/* 80523940  7C DF 33 78 */	mr r31, r6
/* 80523944  38 80 00 00 */	li r4, 0
/* 80523948  4B EB CD E1 */	bl mPr_GetPossessionItemIdx
/* 8052394C  7C 7C 1B 78 */	mr r28, r3
/* 80523950  2C 1C FF FF */	cmpwi r28, -1
/* 80523954  41 82 00 A8 */	beq lbl_805239FC
/* 80523958  88 1B 00 00 */	lbz r0, 0(r27)
/* 8052395C  28 00 00 04 */	cmplwi r0, 4
/* 80523960  41 80 00 0C */	blt lbl_8052396C
/* 80523964  38 00 00 03 */	li r0, 3
/* 80523968  98 1B 00 00 */	stb r0, 0(r27)
lbl_8052396C:
/* 8052396C  88 1B 00 00 */	lbz r0, 0(r27)
/* 80523970  3C 60 80 6A */	lis r3, category@ha /* 0x806A0B68@ha */
/* 80523974  38 A3 0B 68 */	addi r5, r3, category@l /* 0x806A0B68@l */
/* 80523978  38 81 00 08 */	addi r4, r1, 8
/* 8052397C  54 00 10 3A */	slwi r0, r0, 2
/* 80523980  38 60 00 00 */	li r3, 0
/* 80523984  7D 05 00 2E */	lwzx r8, r5, r0
/* 80523988  38 A0 00 01 */	li r5, 1
/* 8052398C  38 C0 00 00 */	li r6, 0
/* 80523990  38 E0 00 00 */	li r7, 0
/* 80523994  39 20 00 09 */	li r9, 9
/* 80523998  39 40 00 00 */	li r10, 0
/* 8052399C  4B EC 4A 41 */	bl mSP_SelectRandomItem_New
/* 805239A0  80 7D 61 3C */	lwz r3, 0x613c(r29)
/* 805239A4  7F 84 E3 78 */	mr r4, r28
/* 805239A8  A0 A1 00 08 */	lhz r5, 8(r1)
/* 805239AC  38 C0 00 01 */	li r6, 1
/* 805239B0  4B EB D4 79 */	bl mPr_SetPossessionItem
/* 805239B4  80 9D 61 3C */	lwz r4, 0x613c(r29)
/* 805239B8  7F C3 F3 78 */	mr r3, r30
/* 805239BC  4B EB C7 65 */	bl mPr_CopyPersonalID
/* 805239C0  A0 61 00 08 */	lhz r3, 8(r1)
/* 805239C4  38 00 00 00 */	li r0, 0
/* 805239C8  38 A0 00 00 */	li r5, 0
/* 805239CC  B0 7A 09 A0 */	sth r3, 0x9a0(r26)
/* 805239D0  98 1B 00 01 */	stb r0, 1(r27)
/* 805239D4  80 7D 61 3C */	lwz r3, 0x613c(r29)
/* 805239D8  88 1E 00 14 */	lbz r0, 0x14(r30)
/* 805239DC  A0 83 10 8A */	lhz r4, 0x108a(r3)
/* 805239E0  54 00 08 3C */	slwi r0, r0, 1
/* 805239E4  7C 7E 02 14 */	add r3, r30, r0
/* 805239E8  B0 83 00 16 */	sth r4, 0x16(r3)
/* 805239EC  88 7E 00 14 */	lbz r3, 0x14(r30)
/* 805239F0  38 03 00 01 */	addi r0, r3, 1
/* 805239F4  98 1E 00 14 */	stb r0, 0x14(r30)
/* 805239F8  48 00 00 08 */	b lbl_80523A00
lbl_805239FC:
/* 805239FC  38 A0 00 01 */	li r5, 1
lbl_80523A00:
/* 80523A00  3C 60 80 6A */	lis r3, talk_data_idx@ha /* 0x806A0B58@ha */
/* 80523A04  57 E4 18 38 */	slwi r4, r31, 3
/* 80523A08  38 63 0B 58 */	addi r3, r3, talk_data_idx@l /* 0x806A0B58@l */
/* 80523A0C  54 A0 10 3A */	slwi r0, r5, 2
/* 80523A10  7C 63 22 14 */	add r3, r3, r4
/* 80523A14  7C 63 00 2E */	lwzx r3, r3, r0
/* 80523A18  39 61 00 30 */	addi r11, r1, 0x30
/* 80523A1C  4B B7 74 F9 */	bl func_8009AF14
/* 80523A20  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80523A24  7C 08 03 A6 */	mtlr r0
/* 80523A28  38 21 00 30 */	addi r1, r1, 0x30
/* 80523A2C  4E 80 00 20 */	blr 
