lbl_8051E69C:
/* 8051E69C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051E6A0  7C 08 02 A6 */	mflr r0
/* 8051E6A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051E6A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051E6AC  7C 9F 23 78 */	mr r31, r4
/* 8051E6B0  93 C1 00 08 */	stw r30, 8(r1)
/* 8051E6B4  7C 7E 1B 78 */	mr r30, r3
/* 8051E6B8  7F C4 F3 78 */	mr r4, r30
/* 8051E6BC  38 60 00 07 */	li r3, 7
/* 8051E6C0  4B E7 BB A5 */	bl mDemo_Check
/* 8051E6C4  2C 03 00 00 */	cmpwi r3, 0
/* 8051E6C8  40 82 00 48 */	bne lbl_8051E710
/* 8051E6CC  7F C4 F3 78 */	mr r4, r30
/* 8051E6D0  38 60 00 08 */	li r3, 8
/* 8051E6D4  4B E7 BB 91 */	bl mDemo_Check
/* 8051E6D8  2C 03 00 00 */	cmpwi r3, 0
/* 8051E6DC  40 82 00 34 */	bne lbl_8051E710
/* 8051E6E0  7F E3 FB 78 */	mr r3, r31
/* 8051E6E4  4B EB AF 8D */	bl mPlib_get_player_actor_main_index
/* 8051E6E8  2C 03 00 4A */	cmpwi r3, 0x4a
/* 8051E6EC  41 82 00 18 */	beq lbl_8051E704
/* 8051E6F0  7F E3 FB 78 */	mr r3, r31
/* 8051E6F4  38 80 00 00 */	li r4, 0
/* 8051E6F8  38 A0 00 00 */	li r5, 0
/* 8051E6FC  4B EB C6 89 */	bl mPlib_request_main_demo_wait_type1
/* 8051E700  48 00 00 10 */	b lbl_8051E710
lbl_8051E704:
/* 8051E704  7F C3 F3 78 */	mr r3, r30
/* 8051E708  38 80 00 00 */	li r4, 0
/* 8051E70C  48 00 01 2D */	bl aEDZ_change_talk_proc
lbl_8051E710:
/* 8051E710  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051E714  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051E718  83 C1 00 08 */	lwz r30, 8(r1)
/* 8051E71C  7C 08 03 A6 */	mtlr r0
/* 8051E720  38 21 00 10 */	addi r1, r1, 0x10
/* 8051E724  4E 80 00 20 */	blr 
