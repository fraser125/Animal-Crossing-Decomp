lbl_80551C78:
/* 80551C78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80551C7C  7C 08 02 A6 */	mflr r0
/* 80551C80  38 60 00 23 */	li r3, 0x23
/* 80551C84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80551C88  4B FF C9 75 */	bl aNSC_get_msg_no
/* 80551C8C  4B E4 68 89 */	bl mDemo_Set_msg_num
/* 80551C90  38 60 00 01 */	li r3, 1
/* 80551C94  4B E4 6C 8D */	bl mDemo_Set_camera
/* 80551C98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80551C9C  7C 08 03 A6 */	mtlr r0
/* 80551CA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80551CA4  4E 80 00 20 */	blr 
