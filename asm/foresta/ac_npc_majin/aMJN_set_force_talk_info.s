lbl_80556B4C:
/* 80556B4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80556B50  7C 08 02 A6 */	mflr r0
/* 80556B54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80556B58  80 03 09 A0 */	lwz r0, 0x9a0(r3)
/* 80556B5C  3C 60 80 6A */	lis r3, msg_no@ha /* 0x806A6730@ha */
/* 80556B60  38 63 67 30 */	addi r3, r3, msg_no@l /* 0x806A6730@l */
/* 80556B64  54 00 10 3A */	slwi r0, r0, 2
/* 80556B68  7C 63 00 2E */	lwzx r3, r3, r0
/* 80556B6C  4B E4 19 A9 */	bl mDemo_Set_msg_num
/* 80556B70  38 60 00 01 */	li r3, 1
/* 80556B74  4B E4 1C D5 */	bl mDemo_Set_talk_turn
/* 80556B78  38 60 00 01 */	li r3, 1
/* 80556B7C  4B E8 6E A9 */	bl mPlib_Set_able_hand_all_item_in_demo
/* 80556B80  38 60 00 00 */	li r3, 0
/* 80556B84  4B E2 50 01 */	bl mBGMPsComp_make_ps_quiet
/* 80556B88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80556B8C  7C 08 03 A6 */	mtlr r0
/* 80556B90  38 21 00 10 */	addi r1, r1, 0x10
/* 80556B94  4E 80 00 20 */	blr 
