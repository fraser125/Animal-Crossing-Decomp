lbl_80519ED8:
/* 80519ED8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80519EDC  7C 08 02 A6 */	mflr r0
/* 80519EE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80519EE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80519EE8  7C 9F 23 78 */	mr r31, r4
/* 80519EEC  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 80519EF0  93 C1 00 08 */	stw r30, 8(r1)
/* 80519EF4  7C 7E 1B 78 */	mr r30, r3
/* 80519EF8  88 83 09 A8 */	lbz r4, 0x9a8(r3)
/* 80519EFC  7C 04 00 40 */	cmplw r4, r0
/* 80519F00  41 82 00 1C */	beq lbl_80519F1C
/* 80519F04  28 00 00 01 */	cmplwi r0, 1
/* 80519F08  40 82 00 0C */	bne lbl_80519F14
/* 80519F0C  4B EC 00 B9 */	bl mPlib_Set_able_force_speak_label
/* 80519F10  48 00 00 08 */	b lbl_80519F18
lbl_80519F14:
/* 80519F14  4B EC 01 05 */	bl mPlib_Reset_able_force_speak_label
lbl_80519F18:
/* 80519F18  9B FE 09 A8 */	stb r31, 0x9a8(r30)
lbl_80519F1C:
/* 80519F1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80519F20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80519F24  83 C1 00 08 */	lwz r30, 8(r1)
/* 80519F28  7C 08 03 A6 */	mtlr r0
/* 80519F2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80519F30  4E 80 00 20 */	blr 
