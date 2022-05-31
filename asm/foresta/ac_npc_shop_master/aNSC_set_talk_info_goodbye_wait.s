lbl_8057B8F8:
/* 8057B8F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057B8FC  7C 08 02 A6 */	mflr r0
/* 8057B900  38 60 00 23 */	li r3, 0x23
/* 8057B904  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057B908  4B FF C9 75 */	bl aNSC_get_msg_no
/* 8057B90C  4B E1 CC 09 */	bl mDemo_Set_msg_num
/* 8057B910  38 60 00 01 */	li r3, 1
/* 8057B914  4B E1 D0 0D */	bl mDemo_Set_camera
/* 8057B918  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057B91C  7C 08 03 A6 */	mtlr r0
/* 8057B920  38 21 00 10 */	addi r1, r1, 0x10
/* 8057B924  4E 80 00 20 */	blr 
