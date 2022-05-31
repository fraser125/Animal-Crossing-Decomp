lbl_8051B92C:
/* 8051B92C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051B930  7C 08 02 A6 */	mflr r0
/* 8051B934  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051B938  88 03 09 A6 */	lbz r0, 0x9a6(r3)
/* 8051B93C  20 00 00 01 */	subfic r0, r0, 1
/* 8051B940  7C 00 00 34 */	cntlzw r0, r0
/* 8051B944  54 03 D9 7E */	srwi r3, r0, 5
/* 8051B948  38 63 07 91 */	addi r3, r3, 0x791
/* 8051B94C  4B E7 CB C9 */	bl mDemo_Set_msg_num
/* 8051B950  38 60 00 01 */	li r3, 1
/* 8051B954  4B E7 CF CD */	bl mDemo_Set_camera
/* 8051B958  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051B95C  7C 08 03 A6 */	mtlr r0
/* 8051B960  38 21 00 10 */	addi r1, r1, 0x10
/* 8051B964  4E 80 00 20 */	blr 
