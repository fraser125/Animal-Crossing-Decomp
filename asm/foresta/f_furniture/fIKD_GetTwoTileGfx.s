lbl_80630998:
/* 80630998  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8063099C  7C 08 02 A6 */	mflr r0
/* 806309A0  7C AA 2B 78 */	mr r10, r5
/* 806309A4  7C 65 1B 78 */	mr r5, r3
/* 806309A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 806309AC  38 00 00 20 */	li r0, 0x20
/* 806309B0  39 00 00 20 */	li r8, 0x20
/* 806309B4  39 20 00 01 */	li r9, 1
/* 806309B8  90 C1 00 08 */	stw r6, 8(r1)
/* 806309BC  7C 86 23 78 */	mr r6, r4
/* 806309C0  38 80 00 00 */	li r4, 0
/* 806309C4  90 01 00 0C */	stw r0, 0xc(r1)
/* 806309C8  38 00 00 40 */	li r0, 0x40
/* 806309CC  90 01 00 10 */	stw r0, 0x10(r1)
/* 806309D0  80 67 00 00 */	lwz r3, 0(r7)
/* 806309D4  38 E0 00 20 */	li r7, 0x20
/* 806309D8  4B DB 4B E9 */	bl two_tex_scroll_dolphin
/* 806309DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806309E0  7C 08 03 A6 */	mtlr r0
/* 806309E4  38 21 00 20 */	addi r1, r1, 0x20
/* 806309E8  4E 80 00 20 */	blr 