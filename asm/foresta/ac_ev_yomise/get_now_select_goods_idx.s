lbl_80526778:
/* 80526778  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052677C  7C 08 02 A6 */	mflr r0
/* 80526780  90 01 00 14 */	stw r0, 0x14(r1)
/* 80526784  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80526788  7C 9F 23 78 */	mr r31, r4
/* 8052678C  93 C1 00 08 */	stw r30, 8(r1)
/* 80526790  7C 7E 1B 78 */	mr r30, r3
/* 80526794  4B FF FB 95 */	bl func_80526328
/* 80526798  2C 1F 00 03 */	cmpwi r31, 3
/* 8052679C  40 82 00 0C */	bne lbl_805267A8
/* 805267A0  38 60 FF FF */	li r3, -1
/* 805267A4  48 00 00 4C */	b lbl_805267F0
lbl_805267A8:
/* 805267A8  A8 BE 09 A2 */	lha r5, 0x9a2(r30)
/* 805267AC  20 05 00 08 */	subfic r0, r5, 8
/* 805267B0  54 A4 08 3C */	slwi r4, r5, 1
/* 805267B4  7C 09 03 A6 */	mtctr r0
/* 805267B8  2C 05 00 08 */	cmpwi r5, 8
/* 805267BC  40 80 00 30 */	bge lbl_805267EC
lbl_805267C0:
/* 805267C0  7C 03 22 2E */	lhzx r0, r3, r4
/* 805267C4  28 00 00 00 */	cmplwi r0, 0
/* 805267C8  41 82 00 18 */	beq lbl_805267E0
/* 805267CC  2C 1F 00 00 */	cmpwi r31, 0
/* 805267D0  40 82 00 0C */	bne lbl_805267DC
/* 805267D4  7C A3 2B 78 */	mr r3, r5
/* 805267D8  48 00 00 18 */	b lbl_805267F0
lbl_805267DC:
/* 805267DC  3B FF FF FF */	addi r31, r31, -1
lbl_805267E0:
/* 805267E0  38 A5 00 01 */	addi r5, r5, 1
/* 805267E4  38 84 00 02 */	addi r4, r4, 2
/* 805267E8  42 00 FF D8 */	bdnz lbl_805267C0
lbl_805267EC:
/* 805267EC  38 60 FF FF */	li r3, -1
lbl_805267F0:
/* 805267F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805267F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805267F8  83 C1 00 08 */	lwz r30, 8(r1)
/* 805267FC  7C 08 03 A6 */	mtlr r0
/* 80526800  38 21 00 10 */	addi r1, r1, 0x10
/* 80526804  4E 80 00 20 */	blr 