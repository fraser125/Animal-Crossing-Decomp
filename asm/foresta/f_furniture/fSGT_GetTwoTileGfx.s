lbl_8063EE2C:
/* 8063EE2C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8063EE30  7C 08 02 A6 */	mflr r0
/* 8063EE34  7C AA 2B 78 */	mr r10, r5
/* 8063EE38  7C 65 1B 78 */	mr r5, r3
/* 8063EE3C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8063EE40  38 00 00 20 */	li r0, 0x20
/* 8063EE44  39 00 00 20 */	li r8, 0x20
/* 8063EE48  39 20 00 01 */	li r9, 1
/* 8063EE4C  90 C1 00 08 */	stw r6, 8(r1)
/* 8063EE50  7C 86 23 78 */	mr r6, r4
/* 8063EE54  38 80 00 00 */	li r4, 0
/* 8063EE58  90 01 00 0C */	stw r0, 0xc(r1)
/* 8063EE5C  38 00 00 40 */	li r0, 0x40
/* 8063EE60  90 01 00 10 */	stw r0, 0x10(r1)
/* 8063EE64  80 67 00 00 */	lwz r3, 0(r7)
/* 8063EE68  38 E0 00 20 */	li r7, 0x20
/* 8063EE6C  4B DA 67 55 */	bl two_tex_scroll_dolphin
/* 8063EE70  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8063EE74  7C 08 03 A6 */	mtlr r0
/* 8063EE78  38 21 00 20 */	addi r1, r1, 0x20
/* 8063EE7C  4E 80 00 20 */	blr 
