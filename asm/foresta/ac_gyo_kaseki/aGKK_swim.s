lbl_805A5CBC:
/* 805A5CBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A5CC0  7C 08 02 A6 */	mflr r0
/* 805A5CC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A5CC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A5CCC  7C 7F 1B 78 */	mr r31, r3
/* 805A5CD0  93 C1 00 08 */	stw r30, 8(r1)
/* 805A5CD4  7C 9E 23 78 */	mr r30, r4
/* 805A5CD8  4B FF FD 81 */	bl aGKK_check_wall
/* 805A5CDC  2C 03 00 01 */	cmpwi r3, 1
/* 805A5CE0  40 82 00 14 */	bne lbl_805A5CF4
/* 805A5CE4  7F E3 FB 78 */	mr r3, r31
/* 805A5CE8  38 80 00 06 */	li r4, 6
/* 805A5CEC  48 00 0E 6D */	bl aGKK_setupAction
/* 805A5CF0  48 00 00 48 */	b lbl_805A5D38
lbl_805A5CF4:
/* 805A5CF4  3C C0 80 65 */	lis r6, lit_701@ha /* 0x8064A47C@ha */
/* 805A5CF8  3C A0 80 65 */	lis r5, lit_702@ha /* 0x8064A480@ha */
/* 805A5CFC  3C 80 80 65 */	lis r4, lit_552@ha /* 0x8064A458@ha */
/* 805A5D00  C0 26 A4 7C */	lfs f1, lit_701@l(r6)  /* 0x8064A47C@l */
/* 805A5D04  C0 45 A4 80 */	lfs f2, lit_702@l(r5)  /* 0x8064A480@l */
/* 805A5D08  7F E3 FB 78 */	mr r3, r31
/* 805A5D0C  C0 64 A4 58 */	lfs f3, lit_552@l(r4)  /* 0x8064A458@l */
/* 805A5D10  4B FF F7 F1 */	bl aGKK_swim_speed_check
/* 805A5D14  2C 03 00 01 */	cmpwi r3, 1
/* 805A5D18  40 82 00 14 */	bne lbl_805A5D2C
/* 805A5D1C  7F E3 FB 78 */	mr r3, r31
/* 805A5D20  38 80 00 04 */	li r4, 4
/* 805A5D24  48 00 0E 35 */	bl aGKK_setupAction
/* 805A5D28  48 00 00 10 */	b lbl_805A5D38
lbl_805A5D2C:
/* 805A5D2C  7F E3 FB 78 */	mr r3, r31
/* 805A5D30  7F C4 F3 78 */	mr r4, r30
/* 805A5D34  4B FF FF 1D */	bl aGKK_check_uki
lbl_805A5D38:
/* 805A5D38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A5D3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A5D40  83 C1 00 08 */	lwz r30, 8(r1)
/* 805A5D44  7C 08 03 A6 */	mtlr r0
/* 805A5D48  38 21 00 10 */	addi r1, r1, 0x10
/* 805A5D4C  4E 80 00 20 */	blr 
