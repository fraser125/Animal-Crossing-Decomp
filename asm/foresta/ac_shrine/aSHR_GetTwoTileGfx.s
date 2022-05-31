lbl_805BB2E8:
/* 805BB2E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805BB2EC  7C 08 02 A6 */	mflr r0
/* 805BB2F0  7C AA 2B 78 */	mr r10, r5
/* 805BB2F4  7C 65 1B 78 */	mr r5, r3
/* 805BB2F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805BB2FC  38 00 00 20 */	li r0, 0x20
/* 805BB300  39 00 00 10 */	li r8, 0x10
/* 805BB304  39 20 00 01 */	li r9, 1
/* 805BB308  90 C1 00 08 */	stw r6, 8(r1)
/* 805BB30C  7C 86 23 78 */	mr r6, r4
/* 805BB310  38 80 00 00 */	li r4, 0
/* 805BB314  90 01 00 0C */	stw r0, 0xc(r1)
/* 805BB318  38 00 00 10 */	li r0, 0x10
/* 805BB31C  90 01 00 10 */	stw r0, 0x10(r1)
/* 805BB320  80 67 00 00 */	lwz r3, 0(r7)
/* 805BB324  38 E0 00 20 */	li r7, 0x20
/* 805BB328  4B E2 A2 99 */	bl two_tex_scroll_dolphin
/* 805BB32C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805BB330  7C 08 03 A6 */	mtlr r0
/* 805BB334  38 21 00 20 */	addi r1, r1, 0x20
/* 805BB338  4E 80 00 20 */	blr 
