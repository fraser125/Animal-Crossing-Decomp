lbl_805EF380:
/* 805EF380  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805EF384  7C 08 02 A6 */	mflr r0
/* 805EF388  90 01 00 14 */	stw r0, 0x14(r1)
/* 805EF38C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805EF390  93 C1 00 08 */	stw r30, 8(r1)
/* 805EF394  7C 7E 1B 78 */	mr r30, r3
/* 805EF398  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 805EF39C  4B FF FB 21 */	bl mSM_make_trigger_data
/* 805EF3A0  80 7E 00 04 */	lwz r3, 4(r30)
/* 805EF3A4  80 1E 00 08 */	lwz r0, 8(r30)
/* 805EF3A8  7C 03 00 00 */	cmpw r3, r0
/* 805EF3AC  41 82 00 0C */	beq lbl_805EF3B8
/* 805EF3B0  7F C3 F3 78 */	mr r3, r30
/* 805EF3B4  4B FF FC 11 */	bl mSM_set_proc
lbl_805EF3B8:
/* 805EF3B8  7F C3 F3 78 */	mr r3, r30
/* 805EF3BC  4B FF FC 4D */	bl mSM_tex_move
/* 805EF3C0  81 9F 09 0C */	lwz r12, 0x90c(r31)
/* 805EF3C4  7F C3 F3 78 */	mr r3, r30
/* 805EF3C8  7D 89 03 A6 */	mtctr r12
/* 805EF3CC  4E 80 04 21 */	bctrl 
/* 805EF3D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805EF3D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805EF3D8  83 C1 00 08 */	lwz r30, 8(r1)
/* 805EF3DC  7C 08 03 A6 */	mtlr r0
/* 805EF3E0  38 21 00 10 */	addi r1, r1, 0x10
/* 805EF3E4  4E 80 00 20 */	blr 
