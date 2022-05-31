lbl_8053D5C8:
/* 8053D5C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053D5CC  7C 08 02 A6 */	mflr r0
/* 8053D5D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053D5D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053D5D8  7C 7F 1B 78 */	mr r31, r3
/* 8053D5DC  80 63 07 CC */	lwz r3, 0x7cc(r3)
/* 8053D5E0  4B E5 AF 35 */	bl mDemo_Set_msg_num
/* 8053D5E4  88 7F 07 D0 */	lbz r3, 0x7d0(r31)
/* 8053D5E8  4B E5 B3 39 */	bl mDemo_Set_camera
/* 8053D5EC  38 00 FF FF */	li r0, -1
/* 8053D5F0  38 60 00 01 */	li r3, 1
/* 8053D5F4  90 1F 07 CC */	stw r0, 0x7cc(r31)
/* 8053D5F8  38 00 00 02 */	li r0, 2
/* 8053D5FC  98 7F 07 D0 */	stb r3, 0x7d0(r31)
/* 8053D600  98 1F 07 C9 */	stb r0, 0x7c9(r31)
/* 8053D604  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053D608  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053D60C  7C 08 03 A6 */	mtlr r0
/* 8053D610  38 21 00 10 */	addi r1, r1, 0x10
/* 8053D614  4E 80 00 20 */	blr 
