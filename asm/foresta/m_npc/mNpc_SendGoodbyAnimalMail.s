lbl_803D1068:
/* 803D1068  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D106C  7C 08 02 A6 */	mflr r0
/* 803D1070  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D1074  39 61 00 20 */	addi r11, r1, 0x20
/* 803D1078  4B CC 9E 5D */	bl func_8009AED4
/* 803D107C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803D1080  7C 7D 1B 78 */	mr r29, r3
/* 803D1084  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803D1088  3B E4 00 20 */	addi r31, r4, 0x20
/* 803D108C  4B FF A3 51 */	bl mNpc_CheckFreeAnimalPersonalID
/* 803D1090  2C 03 00 00 */	cmpwi r3, 0
/* 803D1094  40 82 00 80 */	bne lbl_803D1114
/* 803D1098  3B C0 00 00 */	li r30, 0
lbl_803D109C:
/* 803D109C  88 1D 00 0E */	lbz r0, 0xe(r29)
/* 803D10A0  7C 00 F6 30 */	sraw r0, r0, r30
/* 803D10A4  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 803D10A8  2C 00 00 01 */	cmpwi r0, 1
/* 803D10AC  40 82 00 44 */	bne lbl_803D10F0
/* 803D10B0  3C 60 81 17 */	lis r3, l_npc_mail@ha /* 0x8116B428@ha */
/* 803D10B4  38 63 B4 28 */	addi r3, r3, l_npc_mail@l /* 0x8116B428@l */
/* 803D10B8  4B FE B6 49 */	bl mMl_clear_mail
/* 803D10BC  3C 60 81 17 */	lis r3, l_npc_mail@ha /* 0x8116B428@ha */
/* 803D10C0  7F E4 FB 78 */	mr r4, r31
/* 803D10C4  38 63 B4 28 */	addi r3, r3, l_npc_mail@l /* 0x8116B428@l */
/* 803D10C8  7F C5 F3 78 */	mr r5, r30
/* 803D10CC  7F A6 EB 78 */	mr r6, r29
/* 803D10D0  4B FF FE 95 */	bl mNpc_SendGoodbyAnimalMailOne
/* 803D10D4  2C 03 00 01 */	cmpwi r3, 1
/* 803D10D8  40 82 00 18 */	bne lbl_803D10F0
/* 803D10DC  38 00 00 01 */	li r0, 1
/* 803D10E0  88 7D 00 0E */	lbz r3, 0xe(r29)
/* 803D10E4  7C 00 F0 30 */	slw r0, r0, r30
/* 803D10E8  7C 60 00 78 */	andc r0, r3, r0
/* 803D10EC  98 1D 00 0E */	stb r0, 0xe(r29)
lbl_803D10F0:
/* 803D10F0  3B DE 00 01 */	addi r30, r30, 1
/* 803D10F4  3B FF 24 40 */	addi r31, r31, 0x2440
/* 803D10F8  2C 1E 00 04 */	cmpwi r30, 4
/* 803D10FC  41 80 FF A0 */	blt lbl_803D109C
/* 803D1100  88 1D 00 0E */	lbz r0, 0xe(r29)
/* 803D1104  28 00 00 00 */	cmplwi r0, 0
/* 803D1108  40 82 00 0C */	bne lbl_803D1114
/* 803D110C  7F A3 EB 78 */	mr r3, r29
/* 803D1110  4B FF FC 85 */	bl mNpc_ClearGoodbyMail
lbl_803D1114:
/* 803D1114  39 61 00 20 */	addi r11, r1, 0x20
/* 803D1118  4B CC 9E 09 */	bl func_8009AF20
/* 803D111C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D1120  7C 08 03 A6 */	mtlr r0
/* 803D1124  38 21 00 20 */	addi r1, r1, 0x20
/* 803D1128  4E 80 00 20 */	blr 
