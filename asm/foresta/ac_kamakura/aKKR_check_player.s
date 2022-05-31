lbl_805B211C:
/* 805B211C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B2120  7C 08 02 A6 */	mflr r0
/* 805B2124  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B2128  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B212C  7C 7F 1B 78 */	mr r31, r3
/* 805B2130  7C 83 23 78 */	mr r3, r4
/* 805B2134  4B E2 75 0D */	bl get_player_actor_withoutCheck
/* 805B2138  28 03 00 00 */	cmplwi r3, 0
/* 805B213C  38 A0 00 00 */	li r5, 0
/* 805B2140  40 82 00 0C */	bne lbl_805B214C
/* 805B2144  38 60 00 00 */	li r3, 0
/* 805B2148  48 00 00 64 */	b lbl_805B21AC
lbl_805B214C:
/* 805B214C  3C 80 80 65 */	lis r4, lit_543@ha /* 0x8064A86C@ha */
/* 805B2150  A8 03 00 DE */	lha r0, 0xde(r3)
/* 805B2154  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 805B2158  C0 24 A8 6C */	lfs f1, lit_543@l(r4)  /* 0x8064A86C@l */
/* 805B215C  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 805B2160  C0 63 00 28 */	lfs f3, 0x28(r3)
/* 805B2164  28 00 60 00 */	cmplwi r0, 0x6000
/* 805B2168  EC 01 00 2A */	fadds f0, f1, f0
/* 805B216C  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 805B2170  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 805B2174  EC 43 10 28 */	fsubs f2, f3, f2
/* 805B2178  EC 01 00 28 */	fsubs f0, f1, f0
/* 805B217C  EC 22 00 B2 */	fmuls f1, f2, f2
/* 805B2180  EC 00 00 32 */	fmuls f0, f0, f0
/* 805B2184  EC 21 00 2A */	fadds f1, f1, f0
/* 805B2188  40 81 00 20 */	ble lbl_805B21A8
/* 805B218C  28 00 A0 00 */	cmplwi r0, 0xa000
/* 805B2190  40 80 00 18 */	bge lbl_805B21A8
/* 805B2194  3C 60 80 65 */	lis r3, lit_544@ha /* 0x8064A870@ha */
/* 805B2198  C0 03 A8 70 */	lfs f0, lit_544@l(r3)  /* 0x8064A870@l */
/* 805B219C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805B21A0  40 80 00 08 */	bge lbl_805B21A8
/* 805B21A4  38 A0 00 01 */	li r5, 1
lbl_805B21A8:
/* 805B21A8  7C A3 2B 78 */	mr r3, r5
lbl_805B21AC:
/* 805B21AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B21B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B21B4  7C 08 03 A6 */	mtlr r0
/* 805B21B8  38 21 00 10 */	addi r1, r1, 0x10
/* 805B21BC  4E 80 00 20 */	blr 
