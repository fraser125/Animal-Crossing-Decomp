lbl_8041586C:
/* 8041586C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80415870  7C 08 02 A6 */	mflr r0
/* 80415874  90 01 00 24 */	stw r0, 0x24(r1)
/* 80415878  39 61 00 20 */	addi r11, r1, 0x20
/* 8041587C  4B C8 56 59 */	bl func_8009AED4
/* 80415880  7C 7D 1B 78 */	mr r29, r3
/* 80415884  3C 60 80 68 */	lis r3, sing_dialogue_msg_base_no@ha /* 0x80681700@ha */
/* 80415888  88 1D 01 B0 */	lbz r0, 0x1b0(r29)
/* 8041588C  38 63 17 00 */	addi r3, r3, sing_dialogue_msg_base_no@l /* 0x80681700@l */
/* 80415890  88 BD 01 B1 */	lbz r5, 0x1b1(r29)
/* 80415894  7C 9E 23 78 */	mr r30, r4
/* 80415898  54 00 10 3A */	slwi r0, r0, 2
/* 8041589C  7C 03 00 2E */	lwzx r0, r3, r0
/* 804158A0  7F E5 02 14 */	add r31, r5, r0
/* 804158A4  4B FA 9E 05 */	bl func_803BF6A8
/* 804158A8  7F E4 FB 78 */	mr r4, r31
/* 804158AC  4B FA A7 19 */	bl mMsg_Set_continue_msg_num
/* 804158B0  93 FD 01 B4 */	stw r31, 0x1b4(r29)
/* 804158B4  4B FA 9D F5 */	bl func_803BF6A8
/* 804158B8  38 80 00 01 */	li r4, 1
/* 804158BC  4B FA CD 71 */	bl mMsg_sound_set_voice_silent
/* 804158C0  7F A3 EB 78 */	mr r3, r29
/* 804158C4  7F C4 F3 78 */	mr r4, r30
/* 804158C8  4B FF F9 01 */	bl aBTD_change_season
/* 804158CC  39 61 00 20 */	addi r11, r1, 0x20
/* 804158D0  4B C8 56 51 */	bl func_8009AF20
/* 804158D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804158D8  7C 08 03 A6 */	mtlr r0
/* 804158DC  38 21 00 20 */	addi r1, r1, 0x20
/* 804158E0  4E 80 00 20 */	blr 
