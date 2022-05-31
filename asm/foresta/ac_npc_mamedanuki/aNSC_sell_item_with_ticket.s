lbl_8055D544:
/* 8055D544  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8055D548  7C 08 02 A6 */	mflr r0
/* 8055D54C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8055D550  39 61 00 20 */	addi r11, r1, 0x20
/* 8055D554  4B B3 D9 81 */	bl func_8009AED4
/* 8055D558  7C 7D 1B 78 */	mr r29, r3
/* 8055D55C  7C 9E 23 78 */	mr r30, r4
/* 8055D560  38 60 00 04 */	li r3, 4
/* 8055D564  38 80 00 09 */	li r4, 9
/* 8055D568  4B E3 AF 15 */	bl mDemo_Get_OrderValue
/* 8055D56C  54 7F 04 3E */	clrlwi r31, r3, 0x10
/* 8055D570  4B E6 21 39 */	bl func_803BF6A8
/* 8055D574  2C 1F 00 00 */	cmpwi r31, 0
/* 8055D578  7C 7F 1B 78 */	mr r31, r3
/* 8055D57C  41 82 00 68 */	beq lbl_8055D5E4
/* 8055D580  4B E6 37 19 */	bl mMsg_Check_MainNormalContinue
/* 8055D584  2C 03 00 00 */	cmpwi r3, 0
/* 8055D588  41 82 00 5C */	beq lbl_8055D5E4
/* 8055D58C  4B FF D2 69 */	bl aNSC_set_last_day_str
/* 8055D590  4B AF F7 65 */	bl fqrand
/* 8055D594  3C 60 80 65 */	lis r3, lit_1603@ha /* 0x806496FC@ha */
/* 8055D598  C0 03 96 FC */	lfs f0, lit_1603@l(r3)  /* 0x806496FC@l */
/* 8055D59C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8055D5A0  FC 00 00 1E */	fctiwz f0, f0
/* 8055D5A4  D8 01 00 08 */	stfd f0, 8(r1)
/* 8055D5A8  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8055D5AC  38 63 00 35 */	addi r3, r3, 0x35
/* 8055D5B0  4B FF E0 2D */	bl aNSC_get_msg_no
/* 8055D5B4  7C 65 1B 78 */	mr r5, r3
/* 8055D5B8  7F E3 FB 78 */	mr r3, r31
/* 8055D5BC  7F A4 EB 78 */	mr r4, r29
/* 8055D5C0  4B FF E0 55 */	bl aNSC_Set_continue_msg_num
/* 8055D5C4  38 60 00 04 */	li r3, 4
/* 8055D5C8  38 80 00 09 */	li r4, 9
/* 8055D5CC  38 A0 00 00 */	li r5, 0
/* 8055D5D0  4B E3 AE 69 */	bl mDemo_Set_OrderValue
/* 8055D5D4  7F A3 EB 78 */	mr r3, r29
/* 8055D5D8  7F C4 F3 78 */	mr r4, r30
/* 8055D5DC  38 A0 00 0F */	li r5, 0xf
/* 8055D5E0  48 00 17 F1 */	bl aNSC_setupAction
lbl_8055D5E4:
/* 8055D5E4  39 61 00 20 */	addi r11, r1, 0x20
/* 8055D5E8  4B B3 D9 39 */	bl func_8009AF20
/* 8055D5EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8055D5F0  7C 08 03 A6 */	mtlr r0
/* 8055D5F4  38 21 00 20 */	addi r1, r1, 0x20
/* 8055D5F8  4E 80 00 20 */	blr 
