lbl_8061BC58:
/* 8061BC58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8061BC5C  7C 08 02 A6 */	mflr r0
/* 8061BC60  38 C0 00 08 */	li r6, 8
/* 8061BC64  7C 6B 1B 78 */	mr r11, r3
/* 8061BC68  90 01 00 24 */	stw r0, 0x24(r1)
/* 8061BC6C  38 00 00 00 */	li r0, 0
/* 8061BC70  38 E0 00 08 */	li r7, 8
/* 8061BC74  39 00 01 00 */	li r8, 0x100
/* 8061BC78  90 01 00 08 */	stw r0, 8(r1)
/* 8061BC7C  38 00 00 20 */	li r0, 0x20
/* 8061BC80  39 20 00 01 */	li r9, 1
/* 8061BC84  39 40 00 00 */	li r10, 0
/* 8061BC88  90 C1 00 0C */	stw r6, 0xc(r1)
/* 8061BC8C  7C 86 23 78 */	mr r6, r4
/* 8061BC90  38 80 00 00 */	li r4, 0
/* 8061BC94  90 01 00 10 */	stw r0, 0x10(r1)
/* 8061BC98  80 65 00 00 */	lwz r3, 0(r5)
/* 8061BC9C  7D 65 5B 78 */	mr r5, r11
/* 8061BCA0  4B DC 99 21 */	bl two_tex_scroll_dolphin
/* 8061BCA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8061BCA8  7C 08 03 A6 */	mtlr r0
/* 8061BCAC  38 21 00 20 */	addi r1, r1, 0x20
/* 8061BCB0  4E 80 00 20 */	blr 
