lbl_8058BA98:
/* 8058BA98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058BA9C  7C 08 02 A6 */	mflr r0
/* 8058BAA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058BAA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058BAA8  7C 9F 23 78 */	mr r31, r4
/* 8058BAAC  93 C1 00 08 */	stw r30, 8(r1)
/* 8058BAB0  7C 7E 1B 78 */	mr r30, r3
/* 8058BAB4  38 7E 01 A8 */	addi r3, r30, 0x1a8
/* 8058BAB8  4B DE 4A 69 */	bl cKF_FrameControl_stop_proc
/* 8058BABC  2C 03 00 01 */	cmpwi r3, 1
/* 8058BAC0  40 82 00 20 */	bne lbl_8058BAE0
/* 8058BAC4  A8 BE 09 A2 */	lha r5, 0x9a2(r30)
/* 8058BAC8  7F C3 F3 78 */	mr r3, r30
/* 8058BACC  7F E4 FB 78 */	mr r4, r31
/* 8058BAD0  38 05 00 01 */	addi r0, r5, 1
/* 8058BAD4  B0 1E 09 A2 */	sth r0, 0x9a2(r30)
/* 8058BAD8  7C 05 07 34 */	extsh r5, r0
/* 8058BADC  48 00 04 C5 */	bl aTKN0_setup_think_proc
lbl_8058BAE0:
/* 8058BAE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058BAE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058BAE8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8058BAEC  7C 08 03 A6 */	mtlr r0
/* 8058BAF0  38 21 00 10 */	addi r1, r1, 0x10
/* 8058BAF4  4E 80 00 20 */	blr 
