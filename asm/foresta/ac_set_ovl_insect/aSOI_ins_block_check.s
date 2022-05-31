lbl_8049AB88:
/* 8049AB88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049AB8C  7C 08 02 A6 */	mflr r0
/* 8049AB90  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049AB94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8049AB98  3B E0 00 00 */	li r31, 0
/* 8049AB9C  93 C1 00 08 */	stw r30, 8(r1)
/* 8049ABA0  7C 7E 1B 78 */	mr r30, r3
/* 8049ABA4  4B FF FF 91 */	bl aSOI_ins_chk_live_insect
/* 8049ABA8  2C 03 00 00 */	cmpwi r3, 0
/* 8049ABAC  40 82 00 28 */	bne lbl_8049ABD4
/* 8049ABB0  80 7E 41 80 */	lwz r3, 0x4180(r30)
/* 8049ABB4  80 9E 41 84 */	lwz r4, 0x4184(r30)
/* 8049ABB8  4B F0 B7 31 */	bl mFI_BkNum2BlockKind
/* 8049ABBC  54 63 02 52 */	rlwinm r3, r3, 0, 9, 9
/* 8049ABC0  3C 03 FF C0 */	addis r0, r3, 0xffc0
/* 8049ABC4  28 00 00 00 */	cmplwi r0, 0
/* 8049ABC8  40 82 00 10 */	bne lbl_8049ABD8
/* 8049ABCC  3B E0 00 01 */	li r31, 1
/* 8049ABD0  48 00 00 08 */	b lbl_8049ABD8
lbl_8049ABD4:
/* 8049ABD4  3B E0 00 01 */	li r31, 1
lbl_8049ABD8:
/* 8049ABD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049ABDC  7F E3 FB 78 */	mr r3, r31
/* 8049ABE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8049ABE4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8049ABE8  7C 08 03 A6 */	mtlr r0
/* 8049ABEC  38 21 00 10 */	addi r1, r1, 0x10
/* 8049ABF0  4E 80 00 20 */	blr 
