lbl_805C0C98:
/* 805C0C98  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805C0C9C  7C 08 02 A6 */	mflr r0
/* 805C0CA0  2C 04 00 00 */	cmpwi r4, 0
/* 805C0CA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805C0CA8  38 00 00 06 */	li r0, 6
/* 805C0CAC  80 C3 00 0C */	lwz r6, 0xc(r3)
/* 805C0CB0  7C 04 07 34 */	extsh r4, r0
/* 805C0CB4  80 03 00 10 */	lwz r0, 0x10(r3)
/* 805C0CB8  38 A0 00 64 */	li r5, 0x64
/* 805C0CBC  90 C1 00 08 */	stw r6, 8(r1)
/* 805C0CC0  90 01 00 0C */	stw r0, 0xc(r1)
/* 805C0CC4  80 03 00 14 */	lwz r0, 0x14(r3)
/* 805C0CC8  38 61 00 08 */	addi r3, r1, 8
/* 805C0CCC  90 01 00 10 */	stw r0, 0x10(r1)
/* 805C0CD0  4B DD 0D CD */	bl mCoBG_SetPlussOffset
/* 805C0CD4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805C0CD8  7C 08 03 A6 */	mtlr r0
/* 805C0CDC  38 21 00 20 */	addi r1, r1, 0x20
/* 805C0CE0  4E 80 00 20 */	blr 
