lbl_8063C5A8:
/* 8063C5A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8063C5AC  7C 08 02 A6 */	mflr r0
/* 8063C5B0  7C AA 2B 78 */	mr r10, r5
/* 8063C5B4  7C 65 1B 78 */	mr r5, r3
/* 8063C5B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8063C5BC  38 00 00 08 */	li r0, 8
/* 8063C5C0  39 00 00 20 */	li r8, 0x20
/* 8063C5C4  39 20 00 01 */	li r9, 1
/* 8063C5C8  90 C1 00 08 */	stw r6, 8(r1)
/* 8063C5CC  7C 86 23 78 */	mr r6, r4
/* 8063C5D0  38 80 00 00 */	li r4, 0
/* 8063C5D4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8063C5D8  38 00 00 20 */	li r0, 0x20
/* 8063C5DC  90 01 00 10 */	stw r0, 0x10(r1)
/* 8063C5E0  80 67 00 00 */	lwz r3, 0(r7)
/* 8063C5E4  38 E0 00 08 */	li r7, 8
/* 8063C5E8  4B DA 8F D9 */	bl two_tex_scroll_dolphin
/* 8063C5EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8063C5F0  7C 08 03 A6 */	mtlr r0
/* 8063C5F4  38 21 00 20 */	addi r1, r1, 0x20
/* 8063C5F8  4E 80 00 20 */	blr 
