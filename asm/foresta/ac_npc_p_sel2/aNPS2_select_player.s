lbl_80569464:
/* 80569464  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80569468  7C 08 02 A6 */	mflr r0
/* 8056946C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80569470  39 61 00 20 */	addi r11, r1, 0x20
/* 80569474  4B B3 1A 61 */	bl func_8009AED4
/* 80569478  7C 7D 1B 78 */	mr r29, r3
/* 8056947C  7C 9E 23 78 */	mr r30, r4
/* 80569480  38 60 00 04 */	li r3, 4
/* 80569484  38 80 00 09 */	li r4, 9
/* 80569488  4B E2 EF F5 */	bl mDemo_Get_OrderValue
/* 8056948C  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80569490  2C 00 00 06 */	cmpwi r0, 6
/* 80569494  40 82 00 FC */	bne lbl_80569590
/* 80569498  4B E5 62 11 */	bl func_803BF6A8
/* 8056949C  4B E5 77 FD */	bl mMsg_Check_MainNormalContinue
/* 805694A0  2C 03 00 01 */	cmpwi r3, 1
/* 805694A4  40 82 00 EC */	bne lbl_80569590
/* 805694A8  38 60 00 04 */	li r3, 4
/* 805694AC  38 80 00 09 */	li r4, 9
/* 805694B0  38 A0 00 00 */	li r5, 0
/* 805694B4  4B E2 EF 85 */	bl mDemo_Set_OrderValue
/* 805694B8  4B E1 A0 89 */	bl func_80383540
/* 805694BC  4B E1 A6 B1 */	bl mChoice_Get_ChoseNum
/* 805694C0  80 1D 09 A0 */	lwz r0, 0x9a0(r29)
/* 805694C4  7C 03 00 00 */	cmpw r3, r0
/* 805694C8  40 82 00 3C */	bne lbl_80569504
/* 805694CC  4B FF EA 21 */	bl aNPS2_get_free_pl_no
/* 805694D0  90 7D 09 A4 */	stw r3, 0x9a4(r29)
/* 805694D4  7F A3 EB 78 */	mr r3, r29
/* 805694D8  38 80 00 13 */	li r4, 0x13
/* 805694DC  4B FF E0 6D */	bl aNPS2_make_msg
/* 805694E0  7C 7F 1B 78 */	mr r31, r3
/* 805694E4  4B E5 61 C5 */	bl func_803BF6A8
/* 805694E8  7F E4 FB 78 */	mr r4, r31
/* 805694EC  4B E5 6A D9 */	bl mMsg_Set_continue_msg_num
/* 805694F0  7F A3 EB 78 */	mr r3, r29
/* 805694F4  7F C4 F3 78 */	mr r4, r30
/* 805694F8  38 A0 00 1A */	li r5, 0x1a
/* 805694FC  48 00 08 CD */	bl aNPS2_change_talk_proc
/* 80569500  48 00 00 90 */	b lbl_80569590
lbl_80569504:
/* 80569504  4B FF E1 65 */	bl aNPS2_get_pl_no
/* 80569508  90 7D 09 A4 */	stw r3, 0x9a4(r29)
/* 8056950C  80 7D 09 A4 */	lwz r3, 0x9a4(r29)
/* 80569510  4B FF DE BD */	bl func_805673CC
/* 80569514  80 1D 09 A4 */	lwz r0, 0x9a4(r29)
/* 80569518  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8056951C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80569520  1C 00 24 40 */	mulli r0, r0, 0x2440
/* 80569524  7C 63 02 14 */	add r3, r3, r0
/* 80569528  88 03 10 A6 */	lbz r0, 0x10a6(r3)
/* 8056952C  28 00 00 01 */	cmplwi r0, 1
/* 80569530  40 82 00 34 */	bne lbl_80569564
/* 80569534  7F A3 EB 78 */	mr r3, r29
/* 80569538  7F C4 F3 78 */	mr r4, r30
/* 8056953C  38 A0 00 17 */	li r5, 0x17
/* 80569540  48 00 08 89 */	bl aNPS2_change_talk_proc
/* 80569544  7F A3 EB 78 */	mr r3, r29
/* 80569548  38 80 00 12 */	li r4, 0x12
/* 8056954C  4B FF DF FD */	bl aNPS2_make_msg
/* 80569550  7C 7F 1B 78 */	mr r31, r3
/* 80569554  4B E5 61 55 */	bl func_803BF6A8
/* 80569558  7F E4 FB 78 */	mr r4, r31
/* 8056955C  4B E5 6A 69 */	bl mMsg_Set_continue_msg_num
/* 80569560  48 00 00 30 */	b lbl_80569590
lbl_80569564:
/* 80569564  7F A3 EB 78 */	mr r3, r29
/* 80569568  7F C4 F3 78 */	mr r4, r30
/* 8056956C  38 A0 00 15 */	li r5, 0x15
/* 80569570  48 00 08 59 */	bl aNPS2_change_talk_proc
/* 80569574  7F A3 EB 78 */	mr r3, r29
/* 80569578  38 80 00 1D */	li r4, 0x1d
/* 8056957C  4B FF DF CD */	bl aNPS2_make_msg
/* 80569580  7C 7F 1B 78 */	mr r31, r3
/* 80569584  4B E5 61 25 */	bl func_803BF6A8
/* 80569588  7F E4 FB 78 */	mr r4, r31
/* 8056958C  4B E5 6A 39 */	bl mMsg_Set_continue_msg_num
lbl_80569590:
/* 80569590  39 61 00 20 */	addi r11, r1, 0x20
/* 80569594  4B B3 19 8D */	bl func_8009AF20
/* 80569598  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8056959C  7C 08 03 A6 */	mtlr r0
/* 805695A0  38 21 00 20 */	addi r1, r1, 0x20
/* 805695A4  4E 80 00 20 */	blr 
