lbl_805DC098:
/* 805DC098  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805DC09C  7C 08 02 A6 */	mflr r0
/* 805DC0A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805DC0A4  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805DC0A8  80 63 09 8C */	lwz r3, 0x98c(r3)
/* 805DC0AC  A8 03 00 0C */	lha r0, 0xc(r3)
/* 805DC0B0  2C 00 00 11 */	cmpwi r0, 0x11
/* 805DC0B4  40 81 00 08 */	ble lbl_805DC0BC
/* 805DC0B8  20 00 00 23 */	subfic r0, r0, 0x23
lbl_805DC0BC:
/* 805DC0BC  20 00 00 11 */	subfic r0, r0, 0x11
/* 805DC0C0  3C 60 80 65 */	lis r3, lit_1859@ha /* 0x8064B22C@ha */
/* 805DC0C4  1C A0 00 FF */	mulli r5, r0, 0xff
/* 805DC0C8  C0 63 B2 2C */	lfs f3, lit_1859@l(r3)  /* 0x8064B22C@l */
/* 805DC0CC  38 00 00 11 */	li r0, 0x11
/* 805DC0D0  7C 83 23 78 */	mr r3, r4
/* 805DC0D4  FC 80 18 90 */	fmr f4, f3
/* 805DC0D8  7D 05 03 D6 */	divw r8, r5, r0
/* 805DC0DC  38 80 00 02 */	li r4, 2
/* 805DC0E0  38 A0 00 C3 */	li r5, 0xc3
/* 805DC0E4  38 C0 00 50 */	li r6, 0x50
/* 805DC0E8  38 E0 00 50 */	li r7, 0x50
/* 805DC0EC  39 20 00 00 */	li r9, 0
/* 805DC0F0  39 40 00 00 */	li r10, 0
/* 805DC0F4  4B DD 52 31 */	bl mFont_SetMarkChar
/* 805DC0F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805DC0FC  7C 08 03 A6 */	mtlr r0
/* 805DC100  38 21 00 10 */	addi r1, r1, 0x10
/* 805DC104  4E 80 00 20 */	blr 
