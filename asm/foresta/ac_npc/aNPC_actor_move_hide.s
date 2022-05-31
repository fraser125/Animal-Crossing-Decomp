lbl_8052FDC4:
/* 8052FDC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052FDC8  7C 08 02 A6 */	mflr r0
/* 8052FDCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052FDD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8052FDD4  7C 7F 1B 78 */	mr r31, r3
/* 8052FDD8  93 C1 00 08 */	stw r30, 8(r1)
/* 8052FDDC  7C 9E 23 78 */	mr r30, r4
/* 8052FDE0  48 00 83 31 */	bl aNPC_schedule_proc
/* 8052FDE4  7F E3 FB 78 */	mr r3, r31
/* 8052FDE8  7F C4 F3 78 */	mr r4, r30
/* 8052FDEC  48 00 18 6D */	bl aNPC_action_proc
/* 8052FDF0  7F E3 FB 78 */	mr r3, r31
/* 8052FDF4  4B FF FA 99 */	bl aNPC_check_feel_tim
/* 8052FDF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052FDFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8052FE00  83 C1 00 08 */	lwz r30, 8(r1)
/* 8052FE04  7C 08 03 A6 */	mtlr r0
/* 8052FE08  38 21 00 10 */	addi r1, r1, 0x10
/* 8052FE0C  4E 80 00 20 */	blr 
