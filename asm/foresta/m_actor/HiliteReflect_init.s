lbl_80375F04:
/* 80375F04  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80375F08  7C 08 02 A6 */	mflr r0
/* 80375F0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80375F10  39 01 00 08 */	addi r8, r1, 8
/* 80375F14  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80375F18  7C DF 33 78 */	mr r31, r6
/* 80375F1C  80 E6 02 D0 */	lwz r7, 0x2d0(r6)
/* 80375F20  4B FF FE 5D */	bl HiliteReflect_new
/* 80375F24  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 80375F28  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80375F2C  80 61 00 08 */	lwz r3, 8(r1)
/* 80375F30  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80375F34  7C 08 03 A6 */	mtlr r0
/* 80375F38  38 21 00 20 */	addi r1, r1, 0x20
/* 80375F3C  4E 80 00 20 */	blr 