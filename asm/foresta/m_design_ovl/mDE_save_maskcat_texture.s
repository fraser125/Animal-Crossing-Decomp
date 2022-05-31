lbl_805D28B8:
/* 805D28B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805D28BC  7C 08 02 A6 */	mflr r0
/* 805D28C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805D28C4  39 61 00 20 */	addi r11, r1, 0x20
/* 805D28C8  4B AC 86 0D */	bl func_8009AED4
/* 805D28CC  7C 7D 1B 78 */	mr r29, r3
/* 805D28D0  3B E0 00 00 */	li r31, 0
lbl_805D28D4:
/* 805D28D4  3B C0 00 00 */	li r30, 0
lbl_805D28D8:
/* 805D28D8  7F A3 EB 78 */	mr r3, r29
/* 805D28DC  7F E4 FB 78 */	mr r4, r31
/* 805D28E0  7F C5 F3 78 */	mr r5, r30
/* 805D28E4  4B FF F5 BD */	bl mDE_get_pal_on_cursor
/* 805D28E8  2C 03 00 00 */	cmpwi r3, 0
/* 805D28EC  40 82 00 18 */	bne lbl_805D2904
/* 805D28F0  7F A3 EB 78 */	mr r3, r29
/* 805D28F4  7F E4 FB 78 */	mr r4, r31
/* 805D28F8  7F C5 F3 78 */	mr r5, r30
/* 805D28FC  38 C0 00 0F */	li r6, 0xf
/* 805D2900  4B FF F6 21 */	bl mDE_set_pal_on_cursor
lbl_805D2904:
/* 805D2904  3B DE 00 01 */	addi r30, r30, 1
/* 805D2908  2C 1E 00 20 */	cmpwi r30, 0x20
/* 805D290C  41 80 FF CC */	blt lbl_805D28D8
/* 805D2910  3B FF 00 01 */	addi r31, r31, 1
/* 805D2914  2C 1F 00 20 */	cmpwi r31, 0x20
/* 805D2918  41 80 FF BC */	blt lbl_805D28D4
/* 805D291C  39 61 00 20 */	addi r11, r1, 0x20
/* 805D2920  4B AC 86 01 */	bl func_8009AF20
/* 805D2924  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805D2928  7C 08 03 A6 */	mtlr r0
/* 805D292C  38 21 00 20 */	addi r1, r1, 0x20
/* 805D2930  4E 80 00 20 */	blr 
