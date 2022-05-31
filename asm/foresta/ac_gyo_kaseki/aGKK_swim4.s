lbl_805A5E80:
/* 805A5E80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A5E84  7C 08 02 A6 */	mflr r0
/* 805A5E88  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A5E8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A5E90  7C 7F 1B 78 */	mr r31, r3
/* 805A5E94  93 C1 00 08 */	stw r30, 8(r1)
/* 805A5E98  7C 9E 23 78 */	mr r30, r4
/* 805A5E9C  4B FF FB BD */	bl aGKK_check_wall
/* 805A5EA0  2C 03 00 01 */	cmpwi r3, 1
/* 805A5EA4  40 82 00 14 */	bne lbl_805A5EB8
/* 805A5EA8  7F E3 FB 78 */	mr r3, r31
/* 805A5EAC  38 80 00 06 */	li r4, 6
/* 805A5EB0  48 00 0C A9 */	bl aGKK_setupAction
/* 805A5EB4  48 00 00 6C */	b lbl_805A5F20
lbl_805A5EB8:
/* 805A5EB8  A8 FF 00 DE */	lha r7, 0xde(r31)
/* 805A5EBC  3C A0 80 65 */	lis r5, lit_713@ha /* 0x8064A484@ha */
/* 805A5EC0  A8 1F 02 30 */	lha r0, 0x230(r31)
/* 805A5EC4  3C 80 80 65 */	lis r4, lit_702@ha /* 0x8064A480@ha */
/* 805A5EC8  3C 60 80 65 */	lis r3, lit_532@ha /* 0x8064A454@ha */
/* 805A5ECC  38 C5 A4 84 */	addi r6, r5, lit_713@l /* 0x8064A484@l */
/* 805A5ED0  7C 07 02 14 */	add r0, r7, r0
/* 805A5ED4  38 A4 A4 80 */	addi r5, r4, lit_702@l /* 0x8064A480@l */
/* 805A5ED8  38 83 A4 54 */	addi r4, r3, lit_532@l /* 0x8064A454@l */
/* 805A5EDC  B0 1F 00 DE */	sth r0, 0xde(r31)
/* 805A5EE0  C0 26 00 00 */	lfs f1, 0(r6)
/* 805A5EE4  7F E3 FB 78 */	mr r3, r31
/* 805A5EE8  C0 45 00 00 */	lfs f2, 0(r5)
/* 805A5EEC  C0 64 00 00 */	lfs f3, 0(r4)
/* 805A5EF0  4B FF F6 11 */	bl aGKK_swim_speed_check
/* 805A5EF4  2C 03 00 01 */	cmpwi r3, 1
/* 805A5EF8  40 82 00 1C */	bne lbl_805A5F14
/* 805A5EFC  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 805A5F00  7F E3 FB 78 */	mr r3, r31
/* 805A5F04  38 80 00 04 */	li r4, 4
/* 805A5F08  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 805A5F0C  48 00 0C 4D */	bl aGKK_setupAction
/* 805A5F10  48 00 00 10 */	b lbl_805A5F20
lbl_805A5F14:
/* 805A5F14  7F E3 FB 78 */	mr r3, r31
/* 805A5F18  7F C4 F3 78 */	mr r4, r30
/* 805A5F1C  4B FF FD 35 */	bl aGKK_check_uki
lbl_805A5F20:
/* 805A5F20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A5F24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A5F28  83 C1 00 08 */	lwz r30, 8(r1)
/* 805A5F2C  7C 08 03 A6 */	mtlr r0
/* 805A5F30  38 21 00 10 */	addi r1, r1, 0x10
/* 805A5F34  4E 80 00 20 */	blr 
