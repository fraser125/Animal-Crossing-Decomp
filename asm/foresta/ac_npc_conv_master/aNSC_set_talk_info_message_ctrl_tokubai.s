lbl_80547054:
/* 80547054  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80547058  7C 08 02 A6 */	mflr r0
/* 8054705C  38 60 00 11 */	li r3, 0x11
/* 80547060  90 01 00 14 */	stw r0, 0x14(r1)
/* 80547064  4B FF FC 81 */	bl aNSC_get_msg_no
/* 80547068  4B E5 14 AD */	bl mDemo_Set_msg_num
/* 8054706C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80547070  7C 08 03 A6 */	mtlr r0
/* 80547074  38 21 00 10 */	addi r1, r1, 0x10
/* 80547078  4E 80 00 20 */	blr 