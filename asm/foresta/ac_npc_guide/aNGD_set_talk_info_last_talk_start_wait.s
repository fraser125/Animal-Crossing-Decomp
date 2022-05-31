lbl_80554184:
/* 80554184  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80554188  7C 08 02 A6 */	mflr r0
/* 8055418C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80554190  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80554194  7C 7F 1B 78 */	mr r31, r3
/* 80554198  38 60 2A D1 */	li r3, 0x2ad1
/* 8055419C  4B E4 43 79 */	bl mDemo_Set_msg_num
/* 805541A0  4B FF F2 F1 */	bl aNGD_set_default_talk_info
/* 805541A4  38 00 00 01 */	li r0, 1
/* 805541A8  90 1F 09 C4 */	stw r0, 0x9c4(r31)
/* 805541AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805541B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805541B4  7C 08 03 A6 */	mtlr r0
/* 805541B8  38 21 00 10 */	addi r1, r1, 0x10
/* 805541BC  4E 80 00 20 */	blr 
