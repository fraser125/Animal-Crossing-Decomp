lbl_805A5D50:
/* 805A5D50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A5D54  7C 08 02 A6 */	mflr r0
/* 805A5D58  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A5D5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A5D60  7C 7F 1B 78 */	mr r31, r3
/* 805A5D64  93 C1 00 08 */	stw r30, 8(r1)
/* 805A5D68  7C 9E 23 78 */	mr r30, r4
/* 805A5D6C  4B FF FC ED */	bl aGKK_check_wall
/* 805A5D70  2C 03 00 01 */	cmpwi r3, 1
/* 805A5D74  40 82 00 14 */	bne lbl_805A5D88
/* 805A5D78  7F E3 FB 78 */	mr r3, r31
/* 805A5D7C  38 80 00 06 */	li r4, 6
/* 805A5D80  48 00 0D D9 */	bl aGKK_setupAction
/* 805A5D84  48 00 00 50 */	b lbl_805A5DD4
lbl_805A5D88:
/* 805A5D88  3C C0 80 65 */	lis r6, lit_713@ha /* 0x8064A484@ha */
/* 805A5D8C  3C A0 80 65 */	lis r5, lit_702@ha /* 0x8064A480@ha */
/* 805A5D90  3C 80 80 65 */	lis r4, lit_552@ha /* 0x8064A458@ha */
/* 805A5D94  C0 26 A4 84 */	lfs f1, lit_713@l(r6)  /* 0x8064A484@l */
/* 805A5D98  C0 45 A4 80 */	lfs f2, lit_702@l(r5)  /* 0x8064A480@l */
/* 805A5D9C  7F E3 FB 78 */	mr r3, r31
/* 805A5DA0  C0 64 A4 58 */	lfs f3, lit_552@l(r4)  /* 0x8064A458@l */
/* 805A5DA4  4B FF F7 5D */	bl aGKK_swim_speed_check
/* 805A5DA8  2C 03 00 01 */	cmpwi r3, 1
/* 805A5DAC  40 82 00 1C */	bne lbl_805A5DC8
/* 805A5DB0  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 805A5DB4  7F E3 FB 78 */	mr r3, r31
/* 805A5DB8  38 80 00 04 */	li r4, 4
/* 805A5DBC  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 805A5DC0  48 00 0D 99 */	bl aGKK_setupAction
/* 805A5DC4  48 00 00 10 */	b lbl_805A5DD4
lbl_805A5DC8:
/* 805A5DC8  7F E3 FB 78 */	mr r3, r31
/* 805A5DCC  7F C4 F3 78 */	mr r4, r30
/* 805A5DD0  4B FF FE 81 */	bl aGKK_check_uki
lbl_805A5DD4:
/* 805A5DD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A5DD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A5DDC  83 C1 00 08 */	lwz r30, 8(r1)
/* 805A5DE0  7C 08 03 A6 */	mtlr r0
/* 805A5DE4  38 21 00 10 */	addi r1, r1, 0x10
/* 805A5DE8  4E 80 00 20 */	blr 
