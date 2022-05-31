lbl_805A8C90:
/* 805A8C90  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805A8C94  7C 08 02 A6 */	mflr r0
/* 805A8C98  90 01 00 34 */	stw r0, 0x34(r1)
/* 805A8C9C  39 61 00 30 */	addi r11, r1, 0x30
/* 805A8CA0  4B AF 22 35 */	bl func_8009AED4
/* 805A8CA4  3C A0 81 1C */	lis r5, data_811C52F0@ha /* 0x811C52F0@ha */
/* 805A8CA8  7C 7D 1B 78 */	mr r29, r3
/* 805A8CAC  83 E5 52 F0 */	lwz r31, data_811C52F0@l(r5)  /* 0x811C52F0@l */
/* 805A8CB0  7C 9E 23 78 */	mr r30, r4
/* 805A8CB4  7F E3 FB 78 */	mr r3, r31
/* 805A8CB8  4B E3 09 89 */	bl get_player_actor_withoutCheck
/* 805A8CBC  81 83 13 00 */	lwz r12, 0x1300(r3)
/* 805A8CC0  7F E3 FB 78 */	mr r3, r31
/* 805A8CC4  7D 89 03 A6 */	mtctr r12
/* 805A8CC8  4E 80 04 21 */	bctrl 
/* 805A8CCC  7C 1D 18 40 */	cmplw r29, r3
/* 805A8CD0  40 82 00 28 */	bne lbl_805A8CF8
/* 805A8CD4  7F A3 EB 78 */	mr r3, r29
/* 805A8CD8  7F C4 F3 78 */	mr r4, r30
/* 805A8CDC  4B FF FC CD */	bl aBRS_rewrite_out_data
/* 805A8CE0  3C 80 80 6C */	lis r4, aBRS_br_shop_door_data@ha /* 0x806C44A8@ha */
/* 805A8CE4  7F C3 F3 78 */	mr r3, r30
/* 805A8CE8  38 84 44 A8 */	addi r4, r4, aBRS_br_shop_door_data@l /* 0x806C44A8@l */
/* 805A8CEC  38 A0 00 01 */	li r5, 1
/* 805A8CF0  4B E4 84 B9 */	bl goto_other_scene
/* 805A8CF4  48 00 00 90 */	b lbl_805A8D84
lbl_805A8CF8:
/* 805A8CF8  7F C3 F3 78 */	mr r3, r30
/* 805A8CFC  4B E3 56 85 */	bl mPlib_check_player_actor_main_index_OutDoorMove
/* 805A8D00  2C 03 00 00 */	cmpwi r3, 0
/* 805A8D04  40 82 00 80 */	bne lbl_805A8D84
/* 805A8D08  7F A3 EB 78 */	mr r3, r29
/* 805A8D0C  7F C4 F3 78 */	mr r4, r30
/* 805A8D10  4B FF FD 49 */	bl aBRS_check_player
/* 805A8D14  2C 03 00 00 */	cmpwi r3, 0
/* 805A8D18  40 82 00 24 */	bne lbl_805A8D3C
/* 805A8D1C  7F A3 EB 78 */	mr r3, r29
/* 805A8D20  4B FF FD DD */	bl aBRS_open_check
/* 805A8D24  2C 03 00 02 */	cmpwi r3, 2
/* 805A8D28  41 82 00 5C */	beq lbl_805A8D84
/* 805A8D2C  7F A3 EB 78 */	mr r3, r29
/* 805A8D30  38 80 00 02 */	li r4, 2
/* 805A8D34  48 00 00 C9 */	bl aBRS_setup_action
/* 805A8D38  48 00 00 4C */	b lbl_805A8D84
lbl_805A8D3C:
/* 805A8D3C  C0 1D 00 28 */	lfs f0, 0x28(r29)
/* 805A8D40  7F C3 F3 78 */	mr r3, r30
/* 805A8D44  D0 01 00 08 */	stfs f0, 8(r1)
/* 805A8D48  4B E3 08 F9 */	bl get_player_actor_withoutCheck
/* 805A8D4C  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 805A8D50  3C 60 80 65 */	lis r3, lit_625@ha /* 0x8064A55C@ha */
/* 805A8D54  38 83 A5 5C */	addi r4, r3, lit_625@l /* 0x8064A55C@l */
/* 805A8D58  7F C3 F3 78 */	mr r3, r30
/* 805A8D5C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805A8D60  7F A7 EB 78 */	mr r7, r29
/* 805A8D64  C0 24 00 00 */	lfs f1, 0(r4)
/* 805A8D68  38 81 00 08 */	addi r4, r1, 8
/* 805A8D6C  C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 805A8D70  38 A0 80 00 */	li r5, -32768
/* 805A8D74  38 C0 00 01 */	li r6, 1
/* 805A8D78  EC 01 00 2A */	fadds f0, f1, f0
/* 805A8D7C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805A8D80  4B E3 19 09 */	bl mPlib_request_main_door_type1
lbl_805A8D84:
/* 805A8D84  39 61 00 30 */	addi r11, r1, 0x30
/* 805A8D88  4B AF 21 99 */	bl func_8009AF20
/* 805A8D8C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805A8D90  7C 08 03 A6 */	mtlr r0
/* 805A8D94  38 21 00 30 */	addi r1, r1, 0x30
/* 805A8D98  4E 80 00 20 */	blr 
