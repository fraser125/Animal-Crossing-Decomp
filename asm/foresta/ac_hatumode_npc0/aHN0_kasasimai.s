lbl_8052B844:
/* 8052B844  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8052B848  7C 08 02 A6 */	mflr r0
/* 8052B84C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8052B850  39 61 00 20 */	addi r11, r1, 0x20
/* 8052B854  4B B6 F6 81 */	bl func_8009AED4
/* 8052B858  7C 7D 1B 78 */	mr r29, r3
/* 8052B85C  7C 9E 23 78 */	mr r30, r4
/* 8052B860  38 60 00 01 */	li r3, 1
/* 8052B864  38 80 00 07 */	li r4, 7
/* 8052B868  4B E7 25 65 */	bl mEv_get_save_area
/* 8052B86C  7C 7F 1B 78 */	mr r31, r3
/* 8052B870  7F C3 F3 78 */	mr r3, r30
/* 8052B874  4B EA DD FD */	bl mPlib_get_player_actor_main_index
/* 8052B878  2C 03 00 4A */	cmpwi r3, 0x4a
/* 8052B87C  40 82 00 48 */	bne lbl_8052B8C4
/* 8052B880  4B EB 21 69 */	bl mPlib_Check_now_handin_item
/* 8052B884  2C 03 00 00 */	cmpwi r3, 0
/* 8052B888  41 82 00 18 */	beq lbl_8052B8A0
/* 8052B88C  7F C3 F3 78 */	mr r3, r30
/* 8052B890  38 80 00 01 */	li r4, 1
/* 8052B894  38 A0 00 00 */	li r5, 0
/* 8052B898  4B EA F4 ED */	bl mPlib_request_main_demo_wait_type1
/* 8052B89C  48 00 00 28 */	b lbl_8052B8C4
lbl_8052B8A0:
/* 8052B8A0  88 BD 09 A2 */	lbz r5, 0x9a2(r29)
/* 8052B8A4  7F A3 EB 78 */	mr r3, r29
/* 8052B8A8  7F C4 F3 78 */	mr r4, r30
/* 8052B8AC  38 A5 00 01 */	addi r5, r5, 1
/* 8052B8B0  98 BD 09 A2 */	stb r5, 0x9a2(r29)
/* 8052B8B4  48 00 01 95 */	bl aHN0_setup_think_proc
/* 8052B8B8  A0 1F 00 02 */	lhz r0, 2(r31)
/* 8052B8BC  60 00 80 00 */	ori r0, r0, 0x8000
/* 8052B8C0  B0 1F 00 02 */	sth r0, 2(r31)
lbl_8052B8C4:
/* 8052B8C4  39 61 00 20 */	addi r11, r1, 0x20
/* 8052B8C8  4B B6 F6 59 */	bl func_8009AF20
/* 8052B8CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8052B8D0  7C 08 03 A6 */	mtlr r0
/* 8052B8D4  38 21 00 20 */	addi r1, r1, 0x20
/* 8052B8D8  4E 80 00 20 */	blr 
