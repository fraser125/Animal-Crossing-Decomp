lbl_8057919C:
/* 8057919C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805791A0  7C 08 02 A6 */	mflr r0
/* 805791A4  38 60 FF FF */	li r3, -1
/* 805791A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805791AC  4B FF F0 D1 */	bl aNSC_get_msg_no
/* 805791B0  4B E1 F3 65 */	bl mDemo_Set_msg_num
/* 805791B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805791B8  7C 08 03 A6 */	mtlr r0
/* 805791BC  38 21 00 10 */	addi r1, r1, 0x10
/* 805791C0  4E 80 00 20 */	blr 
