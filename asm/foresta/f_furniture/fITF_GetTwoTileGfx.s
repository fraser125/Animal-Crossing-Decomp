lbl_80640410:
/* 80640410  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80640414  7C 08 02 A6 */	mflr r0
/* 80640418  7C AA 2B 78 */	mr r10, r5
/* 8064041C  7C 65 1B 78 */	mr r5, r3
/* 80640420  90 01 00 24 */	stw r0, 0x24(r1)
/* 80640424  38 00 00 20 */	li r0, 0x20
/* 80640428  39 00 00 40 */	li r8, 0x40
/* 8064042C  39 20 00 01 */	li r9, 1
/* 80640430  90 C1 00 08 */	stw r6, 8(r1)
/* 80640434  7C 86 23 78 */	mr r6, r4
/* 80640438  38 80 00 00 */	li r4, 0
/* 8064043C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80640440  90 01 00 10 */	stw r0, 0x10(r1)
/* 80640444  80 67 00 00 */	lwz r3, 0(r7)
/* 80640448  38 E0 00 20 */	li r7, 0x20
/* 8064044C  4B DA 51 75 */	bl two_tex_scroll_dolphin
/* 80640450  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80640454  7C 08 03 A6 */	mtlr r0
/* 80640458  38 21 00 20 */	addi r1, r1, 0x20
/* 8064045C  4E 80 00 20 */	blr 