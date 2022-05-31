lbl_805FBDA0:
/* 805FBDA0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805FBDA4  7C 08 02 A6 */	mflr r0
/* 805FBDA8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805FBDAC  39 61 00 20 */	addi r11, r1, 0x20
/* 805FBDB0  4B A9 F1 25 */	bl func_8009AED4
/* 805FBDB4  7C 7D 1B 78 */	mr r29, r3
/* 805FBDB8  7C 9E 23 78 */	mr r30, r4
/* 805FBDBC  80 C3 00 2C */	lwz r6, 0x2c(r3)
/* 805FBDC0  38 80 00 00 */	li r4, 0
/* 805FBDC4  38 A0 00 00 */	li r5, 0
/* 805FBDC8  80 E6 09 7C */	lwz r7, 0x97c(r6)
/* 805FBDCC  80 07 00 00 */	lwz r0, 0(r7)
/* 805FBDD0  1C C0 00 B4 */	mulli r6, r0, 0xb4
/* 805FBDD4  3B E6 00 08 */	addi r31, r6, 8
/* 805FBDD8  7F E7 FA 14 */	add r31, r7, r31
/* 805FBDDC  4B FF 39 D9 */	bl mTG_return_tag_init
/* 805FBDE0  7F A3 EB 78 */	mr r3, r29
/* 805FBDE4  7F C4 F3 78 */	mr r4, r30
/* 805FBDE8  7F E5 FB 78 */	mr r5, r31
/* 805FBDEC  4B FF FD 19 */	bl mTG_drop_item
/* 805FBDF0  39 61 00 20 */	addi r11, r1, 0x20
/* 805FBDF4  4B A9 F1 2D */	bl func_8009AF20
/* 805FBDF8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805FBDFC  7C 08 03 A6 */	mtlr r0
/* 805FBE00  38 21 00 20 */	addi r1, r1, 0x20
/* 805FBE04  4E 80 00 20 */	blr 
