lbl_8055E370:
/* 8055E370  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055E374  7C 08 02 A6 */	mflr r0
/* 8055E378  38 60 00 23 */	li r3, 0x23
/* 8055E37C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055E380  4B FF D2 5D */	bl aNSC_get_msg_no
/* 8055E384  4B E3 A1 91 */	bl mDemo_Set_msg_num
/* 8055E388  38 60 00 01 */	li r3, 1
/* 8055E38C  4B E3 A5 95 */	bl mDemo_Set_camera
/* 8055E390  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055E394  7C 08 03 A6 */	mtlr r0
/* 8055E398  38 21 00 10 */	addi r1, r1, 0x10
/* 8055E39C  4E 80 00 20 */	blr 
