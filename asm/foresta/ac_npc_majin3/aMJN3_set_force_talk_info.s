lbl_805583DC:
/* 805583DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805583E0  7C 08 02 A6 */	mflr r0
/* 805583E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805583E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805583EC  93 C1 00 08 */	stw r30, 8(r1)
/* 805583F0  7C 7E 1B 78 */	mr r30, r3
/* 805583F4  3C 60 80 6A */	lis r3, dt_tbl_565@ha /* 0x806A6A2C@ha */
/* 805583F8  80 9E 09 A0 */	lwz r4, 0x9a0(r30)
/* 805583FC  38 03 6A 2C */	addi r0, r3, dt_tbl_565@l /* 0x806A6A2C@l */
/* 80558400  54 83 18 38 */	slwi r3, r4, 3
/* 80558404  7F E0 1A 14 */	add r31, r0, r3
/* 80558408  80 7F 00 00 */	lwz r3, 0(r31)
/* 8055840C  4B E4 01 09 */	bl mDemo_Set_msg_num
/* 80558410  38 60 00 01 */	li r3, 1
/* 80558414  4B E4 04 35 */	bl mDemo_Set_talk_turn
/* 80558418  80 1F 00 04 */	lwz r0, 4(r31)
/* 8055841C  38 60 00 01 */	li r3, 1
/* 80558420  90 1E 09 A4 */	stw r0, 0x9a4(r30)
/* 80558424  4B E8 56 01 */	bl mPlib_Set_able_hand_all_item_in_demo
/* 80558428  38 60 00 00 */	li r3, 0
/* 8055842C  4B E2 37 59 */	bl mBGMPsComp_make_ps_quiet
/* 80558430  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80558434  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80558438  83 C1 00 08 */	lwz r30, 8(r1)
/* 8055843C  7C 08 03 A6 */	mtlr r0
/* 80558440  38 21 00 10 */	addi r1, r1, 0x10
/* 80558444  4E 80 00 20 */	blr 
