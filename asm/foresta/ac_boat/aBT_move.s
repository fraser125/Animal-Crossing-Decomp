lbl_805A7E8C:
/* 805A7E8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A7E90  7C 08 02 A6 */	mflr r0
/* 805A7E94  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A7E98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A7E9C  7C 9F 23 78 */	mr r31, r4
/* 805A7EA0  93 C1 00 08 */	stw r30, 8(r1)
/* 805A7EA4  7C 7E 1B 78 */	mr r30, r3
/* 805A7EA8  4B FF F9 F5 */	bl aBT_ctrl_direction
/* 805A7EAC  80 1E 02 C4 */	lwz r0, 0x2c4(r30)
/* 805A7EB0  2C 00 00 00 */	cmpwi r0, 0
/* 805A7EB4  40 82 00 54 */	bne lbl_805A7F08
/* 805A7EB8  80 7E 02 C0 */	lwz r3, 0x2c0(r30)
/* 805A7EBC  2C 03 00 08 */	cmpwi r3, 8
/* 805A7EC0  41 80 00 18 */	blt lbl_805A7ED8
/* 805A7EC4  7F C3 F3 78 */	mr r3, r30
/* 805A7EC8  7F E4 FB 78 */	mr r4, r31
/* 805A7ECC  38 A0 00 0A */	li r5, 0xa
/* 805A7ED0  48 00 04 7D */	bl aBT_setupAction
/* 805A7ED4  48 00 00 80 */	b lbl_805A7F54
lbl_805A7ED8:
/* 805A7ED8  80 1E 02 B4 */	lwz r0, 0x2b4(r30)
/* 805A7EDC  2C 00 00 08 */	cmpwi r0, 8
/* 805A7EE0  40 82 00 1C */	bne lbl_805A7EFC
/* 805A7EE4  2C 03 00 07 */	cmpwi r3, 7
/* 805A7EE8  40 82 00 14 */	bne lbl_805A7EFC
/* 805A7EEC  7F C3 F3 78 */	mr r3, r30
/* 805A7EF0  7F E4 FB 78 */	mr r4, r31
/* 805A7EF4  38 A0 00 09 */	li r5, 9
/* 805A7EF8  48 00 04 55 */	bl aBT_setupAction
lbl_805A7EFC:
/* 805A7EFC  7F C3 F3 78 */	mr r3, r30
/* 805A7F00  4B FF FB 69 */	bl aBT_calc_speed
/* 805A7F04  48 00 00 50 */	b lbl_805A7F54
lbl_805A7F08:
/* 805A7F08  80 7E 02 C0 */	lwz r3, 0x2c0(r30)
/* 805A7F0C  2C 03 FF FF */	cmpwi r3, -1
/* 805A7F10  41 81 00 18 */	bgt lbl_805A7F28
/* 805A7F14  7F C3 F3 78 */	mr r3, r30
/* 805A7F18  7F E4 FB 78 */	mr r4, r31
/* 805A7F1C  38 A0 00 0A */	li r5, 0xa
/* 805A7F20  48 00 04 2D */	bl aBT_setupAction
/* 805A7F24  48 00 00 30 */	b lbl_805A7F54
lbl_805A7F28:
/* 805A7F28  80 1E 02 B4 */	lwz r0, 0x2b4(r30)
/* 805A7F2C  2C 00 00 08 */	cmpwi r0, 8
/* 805A7F30  40 82 00 1C */	bne lbl_805A7F4C
/* 805A7F34  2C 03 00 00 */	cmpwi r3, 0
/* 805A7F38  40 82 00 14 */	bne lbl_805A7F4C
/* 805A7F3C  7F C3 F3 78 */	mr r3, r30
/* 805A7F40  7F E4 FB 78 */	mr r4, r31
/* 805A7F44  38 A0 00 09 */	li r5, 9
/* 805A7F48  48 00 04 05 */	bl aBT_setupAction
lbl_805A7F4C:
/* 805A7F4C  7F C3 F3 78 */	mr r3, r30
/* 805A7F50  4B FF FB 19 */	bl aBT_calc_speed
lbl_805A7F54:
/* 805A7F54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A7F58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A7F5C  83 C1 00 08 */	lwz r30, 8(r1)
/* 805A7F60  7C 08 03 A6 */	mtlr r0
/* 805A7F64  38 21 00 10 */	addi r1, r1, 0x10
/* 805A7F68  4E 80 00 20 */	blr 
