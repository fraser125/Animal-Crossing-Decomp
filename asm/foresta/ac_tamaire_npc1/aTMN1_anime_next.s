lbl_8058AB88:
/* 8058AB88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058AB8C  7C 08 02 A6 */	mflr r0
/* 8058AB90  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058AB94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058AB98  7C 9F 23 78 */	mr r31, r4
/* 8058AB9C  93 C1 00 08 */	stw r30, 8(r1)
/* 8058ABA0  7C 7E 1B 78 */	mr r30, r3
/* 8058ABA4  38 7E 01 A8 */	addi r3, r30, 0x1a8
/* 8058ABA8  4B DE 59 79 */	bl cKF_FrameControl_stop_proc
/* 8058ABAC  2C 03 00 01 */	cmpwi r3, 1
/* 8058ABB0  40 82 00 1C */	bne lbl_8058ABCC
/* 8058ABB4  88 BE 09 AA */	lbz r5, 0x9aa(r30)
/* 8058ABB8  7F C3 F3 78 */	mr r3, r30
/* 8058ABBC  7F E4 FB 78 */	mr r4, r31
/* 8058ABC0  38 A5 00 01 */	addi r5, r5, 1
/* 8058ABC4  98 BE 09 AA */	stb r5, 0x9aa(r30)
/* 8058ABC8  48 00 06 85 */	bl aTMN1_setup_think_proc
lbl_8058ABCC:
/* 8058ABCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058ABD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058ABD4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8058ABD8  7C 08 03 A6 */	mtlr r0
/* 8058ABDC  38 21 00 10 */	addi r1, r1, 0x10
/* 8058ABE0  4E 80 00 20 */	blr 
