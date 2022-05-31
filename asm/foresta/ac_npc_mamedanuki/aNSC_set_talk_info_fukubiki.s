lbl_8055B8F4:
/* 8055B8F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055B8F8  7C 08 02 A6 */	mflr r0
/* 8055B8FC  38 60 00 01 */	li r3, 1
/* 8055B900  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055B904  4B E3 D0 1D */	bl mDemo_Set_camera
/* 8055B908  38 60 10 E2 */	li r3, 0x10e2
/* 8055B90C  4B E3 CC 09 */	bl mDemo_Set_msg_num
/* 8055B910  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055B914  7C 08 03 A6 */	mtlr r0
/* 8055B918  38 21 00 10 */	addi r1, r1, 0x10
/* 8055B91C  4E 80 00 20 */	blr 
