lbl_80547BC8:
/* 80547BC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80547BCC  7C 08 02 A6 */	mflr r0
/* 80547BD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80547BD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80547BD8  7C 7F 1B 78 */	mr r31, r3
/* 80547BDC  4B FF FC 91 */	bl aNSC_get_start_call_msg_no
/* 80547BE0  4B FF F1 05 */	bl aNSC_get_msg_no
/* 80547BE4  4B E5 09 31 */	bl mDemo_Set_msg_num
/* 80547BE8  38 00 00 01 */	li r0, 1
/* 80547BEC  90 1F 09 98 */	stw r0, 0x998(r31)
/* 80547BF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80547BF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80547BF8  7C 08 03 A6 */	mtlr r0
/* 80547BFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80547C00  4E 80 00 20 */	blr 
