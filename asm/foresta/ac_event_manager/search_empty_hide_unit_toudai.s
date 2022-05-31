lbl_8041BA7C:
/* 8041BA7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8041BA80  7C 08 02 A6 */	mflr r0
/* 8041BA84  90 01 00 24 */	stw r0, 0x24(r1)
/* 8041BA88  39 61 00 20 */	addi r11, r1, 0x20
/* 8041BA8C  4B C7 F4 45 */	bl func_8009AED0
/* 8041BA90  7C 7C 1B 78 */	mr r28, r3
/* 8041BA94  7C 9D 23 78 */	mr r29, r4
/* 8041BA98  7C BE 2B 78 */	mr r30, r5
/* 8041BA9C  7C DF 33 78 */	mr r31, r6
/* 8041BAA0  38 61 00 0C */	addi r3, r1, 0xc
/* 8041BAA4  38 81 00 08 */	addi r4, r1, 8
/* 8041BAA8  38 A0 08 80 */	li r5, 0x880
/* 8041BAAC  4B F8 A9 55 */	bl mFI_BlockKind2BkNum
/* 8041BAB0  2C 03 00 01 */	cmpwi r3, 1
/* 8041BAB4  40 82 00 24 */	bne lbl_8041BAD8
/* 8041BAB8  80 E1 00 0C */	lwz r7, 0xc(r1)
/* 8041BABC  7F 83 E3 78 */	mr r3, r28
/* 8041BAC0  81 01 00 08 */	lwz r8, 8(r1)
/* 8041BAC4  7F A4 EB 78 */	mr r4, r29
/* 8041BAC8  7F C5 F3 78 */	mr r5, r30
/* 8041BACC  7F E6 FB 78 */	mr r6, r31
/* 8041BAD0  4B FF FD D1 */	bl search_empty_hide_unit_sub
/* 8041BAD4  48 00 00 08 */	b lbl_8041BADC
lbl_8041BAD8:
/* 8041BAD8  38 60 00 00 */	li r3, 0
lbl_8041BADC:
/* 8041BADC  39 61 00 20 */	addi r11, r1, 0x20
/* 8041BAE0  4B C7 F4 3D */	bl func_8009AF1C
/* 8041BAE4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8041BAE8  7C 08 03 A6 */	mtlr r0
/* 8041BAEC  38 21 00 20 */	addi r1, r1, 0x20
/* 8041BAF0  4E 80 00 20 */	blr 
