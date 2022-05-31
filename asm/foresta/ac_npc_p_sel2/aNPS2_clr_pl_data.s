lbl_805691BC:
/* 805691BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805691C0  7C 08 02 A6 */	mflr r0
/* 805691C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805691C8  39 61 00 20 */	addi r11, r1, 0x20
/* 805691CC  4B B3 1D 09 */	bl func_8009AED4
/* 805691D0  7C 7D 1B 78 */	mr r29, r3
/* 805691D4  7C 9E 23 78 */	mr r30, r4
/* 805691D8  38 60 00 04 */	li r3, 4
/* 805691DC  38 80 00 09 */	li r4, 9
/* 805691E0  4B E2 F2 9D */	bl mDemo_Get_OrderValue
/* 805691E4  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 805691E8  2C 00 00 01 */	cmpwi r0, 1
/* 805691EC  41 82 00 18 */	beq lbl_80569204
/* 805691F0  40 80 00 08 */	bge lbl_805691F8
/* 805691F4  48 00 01 30 */	b lbl_80569324
lbl_805691F8:
/* 805691F8  2C 00 00 03 */	cmpwi r0, 3
/* 805691FC  40 80 01 28 */	bge lbl_80569324
/* 80569200  48 00 00 20 */	b lbl_80569220
lbl_80569204:
/* 80569204  38 60 00 04 */	li r3, 4
/* 80569208  38 80 00 09 */	li r4, 9
/* 8056920C  38 A0 00 02 */	li r5, 2
/* 80569210  4B E2 F2 29 */	bl mDemo_Set_OrderValue
/* 80569214  4B E5 64 95 */	bl func_803BF6A8
/* 80569218  4B E5 7B 29 */	bl mMsg_Set_LockContinue
/* 8056921C  48 00 01 08 */	b lbl_80569324
lbl_80569220:
/* 80569220  38 61 00 08 */	addi r3, r1, 8
/* 80569224  4B E9 6E 99 */	bl mCD_SaveErasePlayer_bg
/* 80569228  28 03 00 19 */	cmplwi r3, 0x19
/* 8056922C  41 81 00 F8 */	bgt lbl_80569324
/* 80569230  3C 80 80 6C */	lis r4, lit_1082@ha /* 0x806BE568@ha */
/* 80569234  54 60 10 3A */	slwi r0, r3, 2
/* 80569238  38 64 E5 68 */	addi r3, r4, lit_1082@l /* 0x806BE568@l */
/* 8056923C  7C 03 00 2E */	lwzx r0, r3, r0
/* 80569240  7C 09 03 A6 */	mtctr r0
/* 80569244  4E 80 04 20 */	bctr 
lbl_80569248:
/* 80569248  80 DD 09 A0 */	lwz r6, 0x9a0(r29)
/* 8056924C  38 60 00 04 */	li r3, 4
/* 80569250  38 80 00 09 */	li r4, 9
/* 80569254  38 A0 00 00 */	li r5, 0
/* 80569258  38 06 FF FF */	addi r0, r6, -1
/* 8056925C  90 1D 09 A0 */	stw r0, 0x9a0(r29)
/* 80569260  4B E2 F1 D9 */	bl mDemo_Set_OrderValue
/* 80569264  4B E5 64 45 */	bl func_803BF6A8
/* 80569268  4B E5 7A E5 */	bl mMsg_Unset_LockContinue
/* 8056926C  7F A3 EB 78 */	mr r3, r29
/* 80569270  7F C4 F3 78 */	mr r4, r30
/* 80569274  38 A0 00 04 */	li r5, 4
/* 80569278  48 00 0B 51 */	bl aNPS2_change_talk_proc
/* 8056927C  48 00 00 A8 */	b lbl_80569324
lbl_80569280:
/* 80569280  80 61 00 08 */	lwz r3, 8(r1)
/* 80569284  38 80 00 04 */	li r4, 4
/* 80569288  4B FF E1 89 */	bl aNPS2_set_slot_name
/* 8056928C  38 60 00 04 */	li r3, 4
/* 80569290  38 80 00 09 */	li r4, 9
/* 80569294  38 A0 00 00 */	li r5, 0
/* 80569298  4B E2 F1 A1 */	bl mDemo_Set_OrderValue
/* 8056929C  7F A3 EB 78 */	mr r3, r29
/* 805692A0  38 80 00 26 */	li r4, 0x26
/* 805692A4  4B FF E2 A5 */	bl aNPS2_make_msg
/* 805692A8  7C 7F 1B 78 */	mr r31, r3
/* 805692AC  4B E5 63 FD */	bl func_803BF6A8
/* 805692B0  7F E4 FB 78 */	mr r4, r31
/* 805692B4  4B E5 6D 11 */	bl mMsg_Set_continue_msg_num
/* 805692B8  4B E5 63 F1 */	bl func_803BF6A8
/* 805692BC  4B E5 7A 91 */	bl mMsg_Unset_LockContinue
/* 805692C0  7F A3 EB 78 */	mr r3, r29
/* 805692C4  7F C4 F3 78 */	mr r4, r30
/* 805692C8  38 A0 00 1B */	li r5, 0x1b
/* 805692CC  48 00 0A FD */	bl aNPS2_change_talk_proc
/* 805692D0  48 00 00 54 */	b lbl_80569324
lbl_805692D4:
/* 805692D4  80 61 00 08 */	lwz r3, 8(r1)
/* 805692D8  38 80 00 04 */	li r4, 4
/* 805692DC  4B FF E1 35 */	bl aNPS2_set_slot_name
/* 805692E0  38 60 00 04 */	li r3, 4
/* 805692E4  38 80 00 09 */	li r4, 9
/* 805692E8  38 A0 00 00 */	li r5, 0
/* 805692EC  4B E2 F1 4D */	bl mDemo_Set_OrderValue
/* 805692F0  7F A3 EB 78 */	mr r3, r29
/* 805692F4  38 80 00 21 */	li r4, 0x21
/* 805692F8  4B FF E2 51 */	bl aNPS2_make_msg
/* 805692FC  7C 7F 1B 78 */	mr r31, r3
/* 80569300  4B E5 63 A9 */	bl func_803BF6A8
/* 80569304  7F E4 FB 78 */	mr r4, r31
/* 80569308  4B E5 6C BD */	bl mMsg_Set_continue_msg_num
/* 8056930C  4B E5 63 9D */	bl func_803BF6A8
/* 80569310  4B E5 7A 3D */	bl mMsg_Unset_LockContinue
/* 80569314  7F A3 EB 78 */	mr r3, r29
/* 80569318  7F C4 F3 78 */	mr r4, r30
/* 8056931C  38 A0 00 1B */	li r5, 0x1b
/* 80569320  48 00 0A A9 */	bl aNPS2_change_talk_proc
lbl_80569324:
/* 80569324  39 61 00 20 */	addi r11, r1, 0x20
/* 80569328  4B B3 1B F9 */	bl func_8009AF20
/* 8056932C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80569330  7C 08 03 A6 */	mtlr r0
/* 80569334  38 21 00 20 */	addi r1, r1, 0x20
/* 80569338  4E 80 00 20 */	blr 
