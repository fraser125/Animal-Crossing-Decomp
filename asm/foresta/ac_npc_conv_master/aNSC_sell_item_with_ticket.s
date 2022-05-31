lbl_80549534:
/* 80549534  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80549538  7C 08 02 A6 */	mflr r0
/* 8054953C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80549540  39 61 00 20 */	addi r11, r1, 0x20
/* 80549544  4B B5 19 91 */	bl func_8009AED4
/* 80549548  7C 7D 1B 78 */	mr r29, r3
/* 8054954C  7C 9E 23 78 */	mr r30, r4
/* 80549550  38 60 00 04 */	li r3, 4
/* 80549554  38 80 00 09 */	li r4, 9
/* 80549558  4B E4 EF 25 */	bl mDemo_Get_OrderValue
/* 8054955C  54 7F 04 3E */	clrlwi r31, r3, 0x10
/* 80549560  4B E7 61 49 */	bl func_803BF6A8
/* 80549564  2C 1F 00 00 */	cmpwi r31, 0
/* 80549568  7C 7F 1B 78 */	mr r31, r3
/* 8054956C  41 82 00 68 */	beq lbl_805495D4
/* 80549570  4B E7 77 29 */	bl mMsg_Check_MainNormalContinue
/* 80549574  2C 03 00 00 */	cmpwi r3, 0
/* 80549578  41 82 00 5C */	beq lbl_805495D4
/* 8054957C  4B FF C9 F9 */	bl aNSC_set_last_day_str
/* 80549580  4B B1 37 75 */	bl fqrand
/* 80549584  3C 60 80 65 */	lis r3, lit_1719@ha /* 0x806494C0@ha */
/* 80549588  C0 03 94 C0 */	lfs f0, lit_1719@l(r3)  /* 0x806494C0@l */
/* 8054958C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80549590  FC 00 00 1E */	fctiwz f0, f0
/* 80549594  D8 01 00 08 */	stfd f0, 8(r1)
/* 80549598  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8054959C  38 63 00 35 */	addi r3, r3, 0x35
/* 805495A0  4B FF D7 45 */	bl aNSC_get_msg_no
/* 805495A4  7C 65 1B 78 */	mr r5, r3
/* 805495A8  7F E3 FB 78 */	mr r3, r31
/* 805495AC  7F A4 EB 78 */	mr r4, r29
/* 805495B0  4B FF D7 7D */	bl aNSC_Set_continue_msg_num
/* 805495B4  38 60 00 04 */	li r3, 4
/* 805495B8  38 80 00 09 */	li r4, 9
/* 805495BC  38 A0 00 00 */	li r5, 0
/* 805495C0  4B E4 EE 79 */	bl mDemo_Set_OrderValue
/* 805495C4  7F A3 EB 78 */	mr r3, r29
/* 805495C8  7F C4 F3 78 */	mr r4, r30
/* 805495CC  38 A0 00 0F */	li r5, 0xf
/* 805495D0  48 00 19 4D */	bl aNSC_setupAction
lbl_805495D4:
/* 805495D4  39 61 00 20 */	addi r11, r1, 0x20
/* 805495D8  4B B5 19 49 */	bl func_8009AF20
/* 805495DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805495E0  7C 08 03 A6 */	mtlr r0
/* 805495E4  38 21 00 20 */	addi r1, r1, 0x20
/* 805495E8  4E 80 00 20 */	blr 
