lbl_80570220:
/* 80570220  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80570224  7C 08 02 A6 */	mflr r0
/* 80570228  90 01 00 24 */	stw r0, 0x24(r1)
/* 8057022C  39 61 00 20 */	addi r11, r1, 0x20
/* 80570230  4B B2 AC A5 */	bl func_8009AED4
/* 80570234  4B E4 F4 75 */	bl func_803BF6A8
/* 80570238  7C 7F 1B 78 */	mr r31, r3
/* 8057023C  4B E7 39 2D */	bl mQst_GetFirstJobData
/* 80570240  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80570244  3B C3 00 0C */	addi r30, r3, 0xc
/* 80570248  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 8057024C  A0 9E 00 00 */	lhz r4, 0(r30)
/* 80570250  3C 63 00 01 */	addis r3, r3, 1
/* 80570254  38 A0 00 0F */	li r5, 0xf
/* 80570258  38 63 74 38 */	addi r3, r3, 0x7438
/* 8057025C  4B E5 C4 81 */	bl mNpc_SearchAnimalinfo
/* 80570260  2C 03 FF FF */	cmpwi r3, -1
/* 80570264  41 82 00 70 */	beq lbl_805702D4
/* 80570268  1C A3 09 88 */	mulli r5, r3, 0x988
/* 8057026C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80570270  3C 60 80 6C */	lis r3, choume_str@ha /* 0x806BEF68@ha */
/* 80570274  38 04 85 38 */	addi r0, r4, common_data@l /* 0x81138538@l */
/* 80570278  7C 80 2A 14 */	add r4, r0, r5
/* 8057027C  38 C0 00 01 */	li r6, 1
/* 80570280  3F A4 00 01 */	addis r29, r4, 1
/* 80570284  38 03 EF 68 */	addi r0, r3, choume_str@l /* 0x806BEF68@l */
/* 80570288  88 BD 7C D2 */	lbz r5, 0x7cd2(r29)
/* 8057028C  7F E3 FB 78 */	mr r3, r31
/* 80570290  38 80 00 03 */	li r4, 3
/* 80570294  3B BD 7C D0 */	addi r29, r29, 0x7cd0
/* 80570298  7C A0 2A 14 */	add r5, r0, r5
/* 8057029C  4B E4 F9 B9 */	bl mMsg_Set_free_str
/* 805702A0  88 BD 00 01 */	lbz r5, 1(r29)
/* 805702A4  38 61 00 08 */	addi r3, r1, 8
/* 805702A8  38 80 00 08 */	li r4, 8
/* 805702AC  38 C0 00 08 */	li r6, 8
/* 805702B0  38 E0 00 01 */	li r7, 1
/* 805702B4  39 00 00 00 */	li r8, 0
/* 805702B8  39 20 00 01 */	li r9, 1
/* 805702BC  4B E3 F1 BD */	bl mFont_UnintToString
/* 805702C0  7F E3 FB 78 */	mr r3, r31
/* 805702C4  38 A1 00 08 */	addi r5, r1, 8
/* 805702C8  38 80 00 04 */	li r4, 4
/* 805702CC  38 C0 00 08 */	li r6, 8
/* 805702D0  4B E4 F9 85 */	bl mMsg_Set_free_str
lbl_805702D4:
/* 805702D4  7F C4 F3 78 */	mr r4, r30
/* 805702D8  38 61 00 08 */	addi r3, r1, 8
/* 805702DC  4B E6 16 75 */	bl mNpc_GetNpcWorldNameAnm
/* 805702E0  7F E3 FB 78 */	mr r3, r31
/* 805702E4  38 A1 00 08 */	addi r5, r1, 8
/* 805702E8  38 80 00 05 */	li r4, 5
/* 805702EC  38 C0 00 08 */	li r6, 8
/* 805702F0  38 E0 00 01 */	li r7, 1
/* 805702F4  4B E4 FA 15 */	bl mMsg_Set_free_str_cl
/* 805702F8  39 61 00 20 */	addi r11, r1, 0x20
/* 805702FC  4B B2 AC 25 */	bl func_8009AF20
/* 80570300  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80570304  7C 08 03 A6 */	mtlr r0
/* 80570308  38 21 00 20 */	addi r1, r1, 0x20
/* 8057030C  4E 80 00 20 */	blr 
