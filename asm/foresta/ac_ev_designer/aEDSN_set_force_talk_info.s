lbl_8051D5B0:
/* 8051D5B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8051D5B4  7C 08 02 A6 */	mflr r0
/* 8051D5B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8051D5BC  39 61 00 20 */	addi r11, r1, 0x20
/* 8051D5C0  4B B7 D9 15 */	bl func_8009AED4
/* 8051D5C4  7C 7F 1B 78 */	mr r31, r3
/* 8051D5C8  3C 80 80 6A */	lis r4, dt_tbl_606@ha /* 0x806A0448@ha */
/* 8051D5CC  8B DF 09 96 */	lbz r30, 0x996(r31)
/* 8051D5D0  38 04 04 48 */	addi r0, r4, dt_tbl_606@l /* 0x806A0448@l */
/* 8051D5D4  38 60 00 00 */	li r3, 0
/* 8051D5D8  1C 9E 00 0C */	mulli r4, r30, 0xc
/* 8051D5DC  7F A0 22 14 */	add r29, r0, r4
/* 8051D5E0  4B E7 B1 91 */	bl mDemo_Set_talk_change_player
/* 8051D5E4  80 9D 00 00 */	lwz r4, 0(r29)
/* 8051D5E8  7F E3 FB 78 */	mr r3, r31
/* 8051D5EC  4B FF FA F1 */	bl aEDSN_get_msg_no
/* 8051D5F0  4B E7 AF 25 */	bl mDemo_Set_msg_num
/* 8051D5F4  38 60 00 01 */	li r3, 1
/* 8051D5F8  4B E7 B2 51 */	bl mDemo_Set_talk_turn
/* 8051D5FC  80 1D 00 04 */	lwz r0, 4(r29)
/* 8051D600  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 8051D604  4B E7 B3 1D */	bl mDemo_Set_camera
/* 8051D608  2C 1E 00 00 */	cmpwi r30, 0
/* 8051D60C  40 82 00 14 */	bne lbl_8051D620
/* 8051D610  38 60 00 01 */	li r3, 1
/* 8051D614  4B E7 B1 A5 */	bl mDemo_Set_talk_return_demo_wait
/* 8051D618  38 00 00 01 */	li r0, 1
/* 8051D61C  98 1F 09 A6 */	stb r0, 0x9a6(r31)
lbl_8051D620:
/* 8051D620  80 1D 00 08 */	lwz r0, 8(r29)
/* 8051D624  39 61 00 20 */	addi r11, r1, 0x20
/* 8051D628  90 1F 09 9C */	stw r0, 0x99c(r31)
/* 8051D62C  4B B7 D8 F5 */	bl func_8009AF20
/* 8051D630  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8051D634  7C 08 03 A6 */	mtlr r0
/* 8051D638  38 21 00 20 */	addi r1, r1, 0x20
/* 8051D63C  4E 80 00 20 */	blr 
