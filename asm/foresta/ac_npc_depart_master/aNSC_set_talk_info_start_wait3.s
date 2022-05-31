lbl_8054F4E0:
/* 8054F4E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054F4E4  7C 08 02 A6 */	mflr r0
/* 8054F4E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054F4EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054F4F0  7C 7F 1B 78 */	mr r31, r3
/* 8054F4F4  4B FF FC 91 */	bl aNSC_get_start_call_msg_no
/* 8054F4F8  4B FF F1 05 */	bl aNSC_get_msg_no
/* 8054F4FC  4B E4 90 19 */	bl mDemo_Set_msg_num
/* 8054F500  38 00 00 01 */	li r0, 1
/* 8054F504  90 1F 09 98 */	stw r0, 0x998(r31)
/* 8054F508  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054F50C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054F510  7C 08 03 A6 */	mtlr r0
/* 8054F514  38 21 00 10 */	addi r1, r1, 0x10
/* 8054F518  4E 80 00 20 */	blr 
