lbl_8052EA38:
/* 8052EA38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052EA3C  7C 08 02 A6 */	mflr r0
/* 8052EA40  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052EA44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8052EA48  7C 7F 1B 78 */	mr r31, r3
/* 8052EA4C  80 63 07 CC */	lwz r3, 0x7cc(r3)
/* 8052EA50  4B E6 9A C5 */	bl mDemo_Set_msg_num
/* 8052EA54  88 7F 07 D0 */	lbz r3, 0x7d0(r31)
/* 8052EA58  4B E6 9E C9 */	bl mDemo_Set_camera
/* 8052EA5C  38 00 FF FF */	li r0, -1
/* 8052EA60  38 60 00 01 */	li r3, 1
/* 8052EA64  90 1F 07 CC */	stw r0, 0x7cc(r31)
/* 8052EA68  38 00 00 02 */	li r0, 2
/* 8052EA6C  98 7F 07 D0 */	stb r3, 0x7d0(r31)
/* 8052EA70  98 1F 07 C9 */	stb r0, 0x7c9(r31)
/* 8052EA74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8052EA78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052EA7C  7C 08 03 A6 */	mtlr r0
/* 8052EA80  38 21 00 10 */	addi r1, r1, 0x10
/* 8052EA84  4E 80 00 20 */	blr 
