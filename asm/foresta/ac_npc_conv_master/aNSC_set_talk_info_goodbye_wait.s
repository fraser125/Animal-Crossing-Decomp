lbl_8054A360:
/* 8054A360  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054A364  7C 08 02 A6 */	mflr r0
/* 8054A368  38 60 00 23 */	li r3, 0x23
/* 8054A36C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054A370  4B FF C9 75 */	bl aNSC_get_msg_no
/* 8054A374  4B E4 E1 A1 */	bl mDemo_Set_msg_num
/* 8054A378  38 60 00 01 */	li r3, 1
/* 8054A37C  4B E4 E5 A5 */	bl mDemo_Set_camera
/* 8054A380  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054A384  7C 08 03 A6 */	mtlr r0
/* 8054A388  38 21 00 10 */	addi r1, r1, 0x10
/* 8054A38C  4E 80 00 20 */	blr 
