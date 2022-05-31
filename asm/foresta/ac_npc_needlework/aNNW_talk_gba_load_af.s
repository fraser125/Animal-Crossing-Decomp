lbl_80563578:
/* 80563578  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8056357C  7C 08 02 A6 */	mflr r0
/* 80563580  90 01 00 24 */	stw r0, 0x24(r1)
/* 80563584  39 61 00 20 */	addi r11, r1, 0x20
/* 80563588  4B B3 79 4D */	bl func_8009AED4
/* 8056358C  7C 7D 1B 78 */	mr r29, r3
/* 80563590  7C 9E 23 78 */	mr r30, r4
/* 80563594  4B E5 C1 15 */	bl func_803BF6A8
/* 80563598  7C 60 1B 78 */	mr r0, r3
/* 8056359C  38 7D 09 BC */	addi r3, r29, 0x9bc
/* 805635A0  7C 1F 03 78 */	mr r31, r0
/* 805635A4  4B FF DF 19 */	bl aNNW_RecvData
/* 805635A8  2C 03 00 00 */	cmpwi r3, 0
/* 805635AC  41 82 00 7C */	beq lbl_80563628
/* 805635B0  40 80 00 10 */	bge lbl_805635C0
/* 805635B4  2C 03 FF FF */	cmpwi r3, -1
/* 805635B8  40 80 00 44 */	bge lbl_805635FC
/* 805635BC  48 00 00 6C */	b lbl_80563628
lbl_805635C0:
/* 805635C0  2C 03 00 02 */	cmpwi r3, 2
/* 805635C4  40 80 00 64 */	bge lbl_80563628
/* 805635C8  38 7E 1D EC */	addi r3, r30, 0x1dec
/* 805635CC  4B FF DC 91 */	bl aNNW_gba_trance_data_end
/* 805635D0  38 60 00 47 */	li r3, 0x47
/* 805635D4  48 0C A9 51 */	bl sAdo_SysLevStop
/* 805635D8  4B E5 C0 D1 */	bl func_803BF6A8
/* 805635DC  4B E5 D7 71 */	bl mMsg_Unset_LockContinue
/* 805635E0  4B E5 C0 C9 */	bl func_803BF6A8
/* 805635E4  4B E5 C4 61 */	bl mMsg_request_main_disappear_wait_type1
/* 805635E8  7F A3 EB 78 */	mr r3, r29
/* 805635EC  38 80 00 3A */	li r4, 0x3a
/* 805635F0  48 00 0E 99 */	bl aNNW_change_talk_proc
/* 805635F4  4B AE 61 F9 */	bl mGcgba_EndComm
/* 805635F8  48 00 00 30 */	b lbl_80563628
lbl_805635FC:
/* 805635FC  38 60 00 47 */	li r3, 0x47
/* 80563600  48 0C A9 25 */	bl sAdo_SysLevStop
/* 80563604  4B E5 C0 A5 */	bl func_803BF6A8
/* 80563608  4B E5 D7 45 */	bl mMsg_Unset_LockContinue
/* 8056360C  7F E3 FB 78 */	mr r3, r31
/* 80563610  38 80 30 0E */	li r4, 0x300e
/* 80563614  4B E5 C9 B1 */	bl mMsg_Set_continue_msg_num
/* 80563618  7F A3 EB 78 */	mr r3, r29
/* 8056361C  38 80 00 01 */	li r4, 1
/* 80563620  48 00 0E 69 */	bl aNNW_change_talk_proc
/* 80563624  4B AE 61 C9 */	bl mGcgba_EndComm
lbl_80563628:
/* 80563628  39 61 00 20 */	addi r11, r1, 0x20
/* 8056362C  4B B3 78 F5 */	bl func_8009AF20
/* 80563630  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80563634  7C 08 03 A6 */	mtlr r0
/* 80563638  38 21 00 20 */	addi r1, r1, 0x20
/* 8056363C  4E 80 00 20 */	blr 
