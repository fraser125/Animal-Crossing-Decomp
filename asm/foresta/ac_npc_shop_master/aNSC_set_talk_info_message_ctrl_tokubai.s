lbl_805785EC:
/* 805785EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805785F0  7C 08 02 A6 */	mflr r0
/* 805785F4  38 60 00 11 */	li r3, 0x11
/* 805785F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805785FC  4B FF FC 81 */	bl aNSC_get_msg_no
/* 80578600  4B E1 FF 15 */	bl mDemo_Set_msg_num
/* 80578604  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80578608  7C 08 03 A6 */	mtlr r0
/* 8057860C  38 21 00 10 */	addi r1, r1, 0x10
/* 80578610  4E 80 00 20 */	blr 
