lbl_8042E434:
/* 8042E434  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8042E438  7C 08 02 A6 */	mflr r0
/* 8042E43C  7C 66 1B 78 */	mr r6, r3
/* 8042E440  38 A0 00 00 */	li r5, 0
/* 8042E444  90 01 00 24 */	stw r0, 0x24(r1)
/* 8042E448  38 00 00 00 */	li r0, 0
/* 8042E44C  38 E0 00 08 */	li r7, 8
/* 8042E450  39 00 00 20 */	li r8, 0x20
/* 8042E454  90 01 00 08 */	stw r0, 8(r1)
/* 8042E458  39 20 00 01 */	li r9, 1
/* 8042E45C  39 40 00 00 */	li r10, 0
/* 8042E460  90 01 00 0C */	stw r0, 0xc(r1)
/* 8042E464  90 01 00 10 */	stw r0, 0x10(r1)
/* 8042E468  80 64 00 00 */	lwz r3, 0(r4)
/* 8042E46C  38 80 00 00 */	li r4, 0
/* 8042E470  A8 C6 00 24 */	lha r6, 0x24(r6)
/* 8042E474  4B FB 71 4D */	bl two_tex_scroll_dolphin
/* 8042E478  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8042E47C  7C 08 03 A6 */	mtlr r0
/* 8042E480  38 21 00 20 */	addi r1, r1, 0x20
/* 8042E484  4E 80 00 20 */	blr 
