lbl_80552578:
/* 80552578  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055257C  7C 08 02 A6 */	mflr r0
/* 80552580  38 A0 00 20 */	li r5, 0x20
/* 80552584  90 01 00 14 */	stw r0, 0x14(r1)
/* 80552588  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8055258C  7C 9F 23 78 */	mr r31, r4
/* 80552590  38 80 00 10 */	li r4, 0x10
/* 80552594  93 C1 00 08 */	stw r30, 8(r1)
/* 80552598  7C 7E 1B 78 */	mr r30, r3
/* 8055259C  38 7E 09 C8 */	addi r3, r30, 0x9c8
/* 805525A0  4B E6 84 A9 */	bl mem_clear
/* 805525A4  38 7F 1D EC */	addi r3, r31, 0x1dec
/* 805525A8  38 FE 09 C8 */	addi r7, r30, 0x9c8
/* 805525AC  38 80 00 1D */	li r4, 0x1d
/* 805525B0  38 A0 00 00 */	li r5, 0
/* 805525B4  38 C0 00 00 */	li r6, 0
/* 805525B8  4B E9 D1 4D */	bl mSM_open_submenu_new
/* 805525BC  38 00 00 2C */	li r0, 0x2c
/* 805525C0  90 1E 09 98 */	stw r0, 0x998(r30)
/* 805525C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805525C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805525CC  83 C1 00 08 */	lwz r30, 8(r1)
/* 805525D0  7C 08 03 A6 */	mtlr r0
/* 805525D4  38 21 00 10 */	addi r1, r1, 0x10
/* 805525D8  4E 80 00 20 */	blr 
