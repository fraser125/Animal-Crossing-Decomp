lbl_805AD310:
/* 805AD310  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805AD314  7C 08 02 A6 */	mflr r0
/* 805AD318  2C 05 00 05 */	cmpwi r5, 5
/* 805AD31C  90 01 00 34 */	stw r0, 0x34(r1)
/* 805AD320  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 805AD324  7C 7F 1B 78 */	mr r31, r3
/* 805AD328  80 E3 00 00 */	lwz r7, 0(r3)
/* 805AD32C  40 82 00 58 */	bne lbl_805AD384
/* 805AD330  3C 60 80 65 */	lis r3, lit_690@ha /* 0x8064A6D0@ha */
/* 805AD334  C0 08 02 C8 */	lfs f0, 0x2c8(r8)
/* 805AD338  C0 23 A6 D0 */	lfs f1, lit_690@l(r3)  /* 0x8064A6D0@l */
/* 805AD33C  3C 80 80 65 */	lis r4, lit_689@ha /* 0x8064A6CC@ha */
/* 805AD340  38 64 A6 CC */	addi r3, r4, lit_689@l /* 0x8064A6CC@l */
/* 805AD344  80 A7 02 D0 */	lwz r5, 0x2d0(r7)
/* 805AD348  EC 01 00 32 */	fmuls f0, f1, f0
/* 805AD34C  C0 43 00 00 */	lfs f2, 0(r3)
/* 805AD350  7C A4 2B 78 */	mr r4, r5
/* 805AD354  38 00 DC 00 */	li r0, -9216
/* 805AD358  38 A5 00 08 */	addi r5, r5, 8
/* 805AD35C  EC 02 00 2A */	fadds f0, f2, f0
/* 805AD360  FC 00 00 1E */	fctiwz f0, f0
/* 805AD364  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 805AD368  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 805AD36C  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 805AD370  64 63 FA 00 */	oris r3, r3, 0xfa00
/* 805AD374  90 64 00 00 */	stw r3, 0(r4)
/* 805AD378  90 04 00 04 */	stw r0, 4(r4)
/* 805AD37C  90 A7 02 D0 */	stw r5, 0x2d0(r7)
/* 805AD380  48 00 00 34 */	b lbl_805AD3B4
lbl_805AD384:
/* 805AD384  2C 05 00 08 */	cmpwi r5, 8
/* 805AD388  40 82 00 10 */	bne lbl_805AD398
/* 805AD38C  38 00 00 00 */	li r0, 0
/* 805AD390  90 06 00 00 */	stw r0, 0(r6)
/* 805AD394  48 00 00 20 */	b lbl_805AD3B4
lbl_805AD398:
/* 805AD398  2C 05 00 01 */	cmpwi r5, 1
/* 805AD39C  40 82 00 18 */	bne lbl_805AD3B4
/* 805AD3A0  38 61 00 08 */	addi r3, r1, 8
/* 805AD3A4  4B E6 01 19 */	bl Matrix_Position_Zero
/* 805AD3A8  7F E4 FB 78 */	mr r4, r31
/* 805AD3AC  38 61 00 08 */	addi r3, r1, 8
/* 805AD3B0  4B DC 8C 69 */	bl Setpos_HiliteReflect_xlu_init
lbl_805AD3B4:
/* 805AD3B4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805AD3B8  38 60 00 01 */	li r3, 1
/* 805AD3BC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 805AD3C0  7C 08 03 A6 */	mtlr r0
/* 805AD3C4  38 21 00 30 */	addi r1, r1, 0x30
/* 805AD3C8  4E 80 00 20 */	blr 
