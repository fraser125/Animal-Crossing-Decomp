lbl_80553F38:
/* 80553F38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80553F3C  7C 08 02 A6 */	mflr r0
/* 80553F40  38 60 2A D0 */	li r3, 0x2ad0
/* 80553F44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80553F48  4B E4 45 CD */	bl mDemo_Set_msg_num
/* 80553F4C  4B FF F5 45 */	bl aNGD_set_default_talk_info
/* 80553F50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80553F54  7C 08 03 A6 */	mtlr r0
/* 80553F58  38 21 00 10 */	addi r1, r1, 0x10
/* 80553F5C  4E 80 00 20 */	blr 
