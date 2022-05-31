lbl_80546FE4:
/* 80546FE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80546FE8  7C 08 02 A6 */	mflr r0
/* 80546FEC  38 60 00 17 */	li r3, 0x17
/* 80546FF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80546FF4  4B FF FC F1 */	bl aNSC_get_msg_no
/* 80546FF8  4B E5 15 1D */	bl mDemo_Set_msg_num
/* 80546FFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80547000  7C 08 03 A6 */	mtlr r0
/* 80547004  38 21 00 10 */	addi r1, r1, 0x10
/* 80547008  4E 80 00 20 */	blr 
