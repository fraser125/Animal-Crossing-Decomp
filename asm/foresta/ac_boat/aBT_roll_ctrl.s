lbl_805A7290:
/* 805A7290  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805A7294  7C 08 02 A6 */	mflr r0
/* 805A7298  90 01 00 24 */	stw r0, 0x24(r1)
/* 805A729C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805A72A0  7C 7F 1B 78 */	mr r31, r3
/* 805A72A4  80 83 02 BC */	lwz r4, 0x2bc(r3)
/* 805A72A8  38 A4 FF 38 */	addi r5, r4, -200
/* 805A72AC  7C A3 FE 70 */	srawi r3, r5, 0x1f
/* 805A72B0  7C 60 2A 78 */	xor r0, r3, r5
/* 805A72B4  7C 03 00 50 */	subf r0, r3, r0
/* 805A72B8  2C 00 00 02 */	cmpwi r0, 2
/* 805A72BC  40 80 00 0C */	bge lbl_805A72C8
/* 805A72C0  38 00 00 C8 */	li r0, 0xc8
/* 805A72C4  48 00 00 18 */	b lbl_805A72DC
lbl_805A72C8:
/* 805A72C8  2C 05 00 00 */	cmpwi r5, 0
/* 805A72CC  40 80 00 0C */	bge lbl_805A72D8
/* 805A72D0  38 04 00 02 */	addi r0, r4, 2
/* 805A72D4  48 00 00 08 */	b lbl_805A72DC
lbl_805A72D8:
/* 805A72D8  38 04 FF FE */	addi r0, r4, -2
lbl_805A72DC:
/* 805A72DC  90 1F 02 BC */	stw r0, 0x2bc(r31)
/* 805A72E0  80 7F 02 B8 */	lwz r3, 0x2b8(r31)
/* 805A72E4  7C 63 02 14 */	add r3, r3, r0
/* 805A72E8  90 7F 02 B8 */	stw r3, 0x2b8(r31)
/* 805A72EC  7C 63 07 34 */	extsh r3, r3
/* 805A72F0  4B E1 38 01 */	bl sin_s
/* 805A72F4  3C 60 80 65 */	lis r3, lit_515@ha /* 0x8064A4E0@ha */
/* 805A72F8  C0 03 A4 E0 */	lfs f0, lit_515@l(r3)  /* 0x8064A4E0@l */
/* 805A72FC  EC 00 00 72 */	fmuls f0, f0, f1
/* 805A7300  FC 00 00 1E */	fctiwz f0, f0
/* 805A7304  D8 01 00 08 */	stfd f0, 8(r1)
/* 805A7308  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805A730C  B0 1F 00 E0 */	sth r0, 0xe0(r31)
/* 805A7310  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805A7314  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805A7318  7C 08 03 A6 */	mtlr r0
/* 805A731C  38 21 00 20 */	addi r1, r1, 0x20
/* 805A7320  4E 80 00 20 */	blr 
