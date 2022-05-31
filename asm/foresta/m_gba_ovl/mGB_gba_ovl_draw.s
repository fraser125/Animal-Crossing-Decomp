lbl_805DCDCC:
/* 805DCDCC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805DCDD0  7C 08 02 A6 */	mflr r0
/* 805DCDD4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805DCDD8  39 61 00 20 */	addi r11, r1, 0x20
/* 805DCDDC  4B AB E0 F9 */	bl func_8009AED4
/* 805DCDE0  7C 7D 1B 78 */	mr r29, r3
/* 805DCDE4  7C 9E 23 78 */	mr r30, r4
/* 805DCDE8  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805DCDEC  3B E5 07 A4 */	addi r31, r5, 0x7a4
/* 805DCDF0  81 85 07 B4 */	lwz r12, 0x7b4(r5)
/* 805DCDF4  7D 89 03 A6 */	mtctr r12
/* 805DCDF8  4E 80 04 21 */	bctrl 
/* 805DCDFC  80 1F 00 38 */	lwz r0, 0x38(r31)
/* 805DCE00  2C 00 00 04 */	cmpwi r0, 4
/* 805DCE04  41 82 00 28 */	beq lbl_805DCE2C
/* 805DCE08  40 80 00 34 */	bge lbl_805DCE3C
/* 805DCE0C  2C 00 00 03 */	cmpwi r0, 3
/* 805DCE10  40 80 00 08 */	bge lbl_805DCE18
/* 805DCE14  48 00 00 28 */	b lbl_805DCE3C
lbl_805DCE18:
/* 805DCE18  7F A3 EB 78 */	mr r3, r29
/* 805DCE1C  7F C4 F3 78 */	mr r4, r30
/* 805DCE20  7F E5 FB 78 */	mr r5, r31
/* 805DCE24  4B FF FA C9 */	bl mGB_set_frame_dl
/* 805DCE28  48 00 00 14 */	b lbl_805DCE3C
lbl_805DCE2C:
/* 805DCE2C  7F A3 EB 78 */	mr r3, r29
/* 805DCE30  7F C4 F3 78 */	mr r4, r30
/* 805DCE34  7F E5 FB 78 */	mr r5, r31
/* 805DCE38  4B FF FE 0D */	bl mGB_set_card_frame_dl
lbl_805DCE3C:
/* 805DCE3C  80 DD 00 2C */	lwz r6, 0x2c(r29)
/* 805DCE40  7F A3 EB 78 */	mr r3, r29
/* 805DCE44  7F C4 F3 78 */	mr r4, r30
/* 805DCE48  38 A0 00 1A */	li r5, 0x1a
/* 805DCE4C  81 86 09 20 */	lwz r12, 0x920(r6)
/* 805DCE50  7D 89 03 A6 */	mtctr r12
/* 805DCE54  4E 80 04 21 */	bctrl 
/* 805DCE58  39 61 00 20 */	addi r11, r1, 0x20
/* 805DCE5C  4B AB E0 C5 */	bl func_8009AF20
/* 805DCE60  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805DCE64  7C 08 03 A6 */	mtlr r0
/* 805DCE68  38 21 00 20 */	addi r1, r1, 0x20
/* 805DCE6C  4E 80 00 20 */	blr 
