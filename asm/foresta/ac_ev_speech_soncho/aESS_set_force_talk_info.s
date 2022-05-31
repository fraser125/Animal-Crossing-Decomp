lbl_80525EC0:
/* 80525EC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80525EC4  7C 08 02 A6 */	mflr r0
/* 80525EC8  38 60 3D B5 */	li r3, 0x3db5
/* 80525ECC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80525ED0  4B E7 26 45 */	bl mDemo_Set_msg_num
/* 80525ED4  38 60 00 0D */	li r3, 0xd
/* 80525ED8  4B E7 2A 49 */	bl mDemo_Set_camera
/* 80525EDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80525EE0  7C 08 03 A6 */	mtlr r0
/* 80525EE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80525EE8  4E 80 00 20 */	blr 
