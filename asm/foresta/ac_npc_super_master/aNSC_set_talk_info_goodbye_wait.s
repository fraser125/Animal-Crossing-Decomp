lbl_80585404:
/* 80585404  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80585408  7C 08 02 A6 */	mflr r0
/* 8058540C  38 60 00 23 */	li r3, 0x23
/* 80585410  90 01 00 14 */	stw r0, 0x14(r1)
/* 80585414  4B FF C9 75 */	bl aNSC_get_msg_no
/* 80585418  4B E1 30 FD */	bl mDemo_Set_msg_num
/* 8058541C  38 60 00 01 */	li r3, 1
/* 80585420  4B E1 35 01 */	bl mDemo_Set_camera
/* 80585424  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80585428  7C 08 03 A6 */	mtlr r0
/* 8058542C  38 21 00 10 */	addi r1, r1, 0x10
/* 80585430  4E 80 00 20 */	blr 
