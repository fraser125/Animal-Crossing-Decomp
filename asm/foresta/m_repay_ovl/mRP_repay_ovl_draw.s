lbl_805ECE10:
/* 805ECE10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805ECE14  7C 08 02 A6 */	mflr r0
/* 805ECE18  90 01 00 24 */	stw r0, 0x24(r1)
/* 805ECE1C  39 61 00 20 */	addi r11, r1, 0x20
/* 805ECE20  4B AA E0 B5 */	bl func_8009AED4
/* 805ECE24  7C 7D 1B 78 */	mr r29, r3
/* 805ECE28  7C 9E 23 78 */	mr r30, r4
/* 805ECE2C  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805ECE30  3B E5 02 4C */	addi r31, r5, 0x24c
/* 805ECE34  81 85 02 5C */	lwz r12, 0x25c(r5)
/* 805ECE38  7D 89 03 A6 */	mtctr r12
/* 805ECE3C  4E 80 04 21 */	bctrl 
/* 805ECE40  7F A3 EB 78 */	mr r3, r29
/* 805ECE44  7F C4 F3 78 */	mr r4, r30
/* 805ECE48  7F E5 FB 78 */	mr r5, r31
/* 805ECE4C  4B FF FF 45 */	bl mRP_set_dl
/* 805ECE50  39 61 00 20 */	addi r11, r1, 0x20
/* 805ECE54  4B AA E0 CD */	bl func_8009AF20
/* 805ECE58  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805ECE5C  7C 08 03 A6 */	mtlr r0
/* 805ECE60  38 21 00 20 */	addi r1, r1, 0x20
/* 805ECE64  4E 80 00 20 */	blr 
