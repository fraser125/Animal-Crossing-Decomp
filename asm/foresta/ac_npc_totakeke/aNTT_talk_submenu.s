lbl_8058693C:
/* 8058693C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80586940  7C 08 02 A6 */	mflr r0
/* 80586944  90 01 00 24 */	stw r0, 0x24(r1)
/* 80586948  39 61 00 20 */	addi r11, r1, 0x20
/* 8058694C  4B B1 45 89 */	bl func_8009AED4
/* 80586950  7C 7D 1B 78 */	mr r29, r3
/* 80586954  3B C4 1D EC */	addi r30, r4, 0x1dec
/* 80586958  38 60 00 47 */	li r3, 0x47
/* 8058695C  38 80 00 0A */	li r4, 0xa
/* 80586960  4B E1 74 6D */	bl mEv_get_save_area
/* 80586964  7C 7F 1B 78 */	mr r31, r3
/* 80586968  4B E3 8D 41 */	bl func_803BF6A8
/* 8058696C  4B E3 8D D5 */	bl mMsg_Check_main_wait
/* 80586970  2C 03 00 01 */	cmpwi r3, 1
/* 80586974  40 82 00 30 */	bne lbl_805869A4
/* 80586978  7F A3 EB 78 */	mr r3, r29
/* 8058697C  38 80 00 05 */	li r4, 5
/* 80586980  48 00 01 E5 */	bl aNTT_change_talk_proc
/* 80586984  7F C3 F3 78 */	mr r3, r30
/* 80586988  38 FF 00 04 */	addi r7, r31, 4
/* 8058698C  38 80 00 04 */	li r4, 4
/* 80586990  38 A0 00 04 */	li r5, 4
/* 80586994  38 C0 00 00 */	li r6, 0
/* 80586998  4B E6 8D 6D */	bl mSM_open_submenu_new
/* 8058699C  4B E3 8D 0D */	bl func_803BF6A8
/* 805869A0  4B E3 91 E9 */	bl mMsg_request_main_appear_wait_type1
lbl_805869A4:
/* 805869A4  39 61 00 20 */	addi r11, r1, 0x20
/* 805869A8  4B B1 45 79 */	bl func_8009AF20
/* 805869AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805869B0  7C 08 03 A6 */	mtlr r0
/* 805869B4  38 21 00 20 */	addi r1, r1, 0x20
/* 805869B8  4E 80 00 20 */	blr 
