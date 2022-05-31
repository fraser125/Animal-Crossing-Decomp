lbl_805AA160:
/* 805AA160  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805AA164  7C 08 02 A6 */	mflr r0
/* 805AA168  90 01 00 14 */	stw r0, 0x14(r1)
/* 805AA16C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805AA170  7C 7F 1B 78 */	mr r31, r3
/* 805AA174  7C 83 23 78 */	mr r3, r4
/* 805AA178  4B E2 F4 C9 */	bl get_player_actor_withoutCheck
/* 805AA17C  28 03 00 00 */	cmplwi r3, 0
/* 805AA180  38 A0 00 00 */	li r5, 0
/* 805AA184  40 82 00 0C */	bne lbl_805AA190
/* 805AA188  38 60 00 00 */	li r3, 0
/* 805AA18C  48 00 00 7C */	b lbl_805AA208
lbl_805AA190:
/* 805AA190  3C 80 80 65 */	lis r4, lit_585@ha /* 0x8064A5F4@ha */
/* 805AA194  A8 03 00 DE */	lha r0, 0xde(r3)
/* 805AA198  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 805AA19C  C0 24 A5 F4 */	lfs f1, lit_585@l(r4)  /* 0x8064A5F4@l */
/* 805AA1A0  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 805AA1A4  C0 63 00 28 */	lfs f3, 0x28(r3)
/* 805AA1A8  28 00 60 00 */	cmplwi r0, 0x6000
/* 805AA1AC  EC 01 00 2A */	fadds f0, f1, f0
/* 805AA1B0  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 805AA1B4  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 805AA1B8  EC 43 10 28 */	fsubs f2, f3, f2
/* 805AA1BC  EC 01 00 28 */	fsubs f0, f1, f0
/* 805AA1C0  EC 22 00 B2 */	fmuls f1, f2, f2
/* 805AA1C4  EC 00 00 32 */	fmuls f0, f0, f0
/* 805AA1C8  EC 21 00 2A */	fadds f1, f1, f0
/* 805AA1CC  40 81 00 24 */	ble lbl_805AA1F0
/* 805AA1D0  28 00 A0 00 */	cmplwi r0, 0xa000
/* 805AA1D4  40 80 00 1C */	bge lbl_805AA1F0
/* 805AA1D8  3C 60 80 65 */	lis r3, lit_586@ha /* 0x8064A5F8@ha */
/* 805AA1DC  C0 03 A5 F8 */	lfs f0, lit_586@l(r3)  /* 0x8064A5F8@l */
/* 805AA1E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805AA1E4  40 80 00 0C */	bge lbl_805AA1F0
/* 805AA1E8  38 A0 00 02 */	li r5, 2
/* 805AA1EC  48 00 00 18 */	b lbl_805AA204
lbl_805AA1F0:
/* 805AA1F0  3C 60 80 65 */	lis r3, lit_587@ha /* 0x8064A5FC@ha */
/* 805AA1F4  C0 03 A5 FC */	lfs f0, lit_587@l(r3)  /* 0x8064A5FC@l */
/* 805AA1F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805AA1FC  40 80 00 08 */	bge lbl_805AA204
/* 805AA200  38 A0 00 01 */	li r5, 1
lbl_805AA204:
/* 805AA204  7C A3 2B 78 */	mr r3, r5
lbl_805AA208:
/* 805AA208  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805AA20C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805AA210  7C 08 03 A6 */	mtlr r0
/* 805AA214  38 21 00 10 */	addi r1, r1, 0x10
/* 805AA218  4E 80 00 20 */	blr 
