lbl_8056A8A4:
/* 8056A8A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056A8A8  7C 08 02 A6 */	mflr r0
/* 8056A8AC  38 60 07 71 */	li r3, 0x771
/* 8056A8B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056A8B4  4B E2 DC 61 */	bl mDemo_Set_msg_num
/* 8056A8B8  38 60 00 00 */	li r3, 0
/* 8056A8BC  4B E2 DF 8D */	bl mDemo_Set_talk_turn
/* 8056A8C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056A8C4  7C 08 03 A6 */	mtlr r0
/* 8056A8C8  38 21 00 10 */	addi r1, r1, 0x10
/* 8056A8CC  4E 80 00 20 */	blr 
