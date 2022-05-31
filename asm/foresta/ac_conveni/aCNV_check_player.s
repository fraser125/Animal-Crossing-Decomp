lbl_805AAD84:
/* 805AAD84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805AAD88  7C 08 02 A6 */	mflr r0
/* 805AAD8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805AAD90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805AAD94  7C 7F 1B 78 */	mr r31, r3
/* 805AAD98  7C 83 23 78 */	mr r3, r4
/* 805AAD9C  4B E2 E8 A5 */	bl get_player_actor_withoutCheck
/* 805AADA0  28 03 00 00 */	cmplwi r3, 0
/* 805AADA4  38 C0 00 00 */	li r6, 0
/* 805AADA8  40 82 00 0C */	bne lbl_805AADB4
/* 805AADAC  38 60 00 00 */	li r3, 0
/* 805AADB0  48 00 00 88 */	b lbl_805AAE38
lbl_805AADB4:
/* 805AADB4  3C A0 80 65 */	lis r5, lit_515@ha /* 0x8064A634@ha */
/* 805AADB8  3C 80 80 65 */	lis r4, lit_516@ha /* 0x8064A638@ha */
/* 805AADBC  C0 7F 00 28 */	lfs f3, 0x28(r31)
/* 805AADC0  C0 45 A6 34 */	lfs f2, lit_515@l(r5)  /* 0x8064A634@l */
/* 805AADC4  C0 24 A6 38 */	lfs f1, lit_516@l(r4)  /* 0x8064A638@l */
/* 805AADC8  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 805AADCC  EC 43 10 28 */	fsubs f2, f3, f2
/* 805AADD0  C0 63 00 28 */	lfs f3, 0x28(r3)
/* 805AADD4  EC 01 00 2A */	fadds f0, f1, f0
/* 805AADD8  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 805AADDC  EC 43 10 28 */	fsubs f2, f3, f2
/* 805AADE0  A8 03 00 DE */	lha r0, 0xde(r3)
/* 805AADE4  EC 01 00 28 */	fsubs f0, f1, f0
/* 805AADE8  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 805AADEC  EC 22 00 B2 */	fmuls f1, f2, f2
/* 805AADF0  28 00 40 00 */	cmplwi r0, 0x4000
/* 805AADF4  EC 00 00 32 */	fmuls f0, f0, f0
/* 805AADF8  EC 21 00 2A */	fadds f1, f1, f0
/* 805AADFC  40 81 00 24 */	ble lbl_805AAE20
/* 805AAE00  28 00 80 00 */	cmplwi r0, 0x8000
/* 805AAE04  40 80 00 1C */	bge lbl_805AAE20
/* 805AAE08  3C 60 80 65 */	lis r3, lit_517@ha /* 0x8064A63C@ha */
/* 805AAE0C  C0 03 A6 3C */	lfs f0, lit_517@l(r3)  /* 0x8064A63C@l */
/* 805AAE10  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805AAE14  40 80 00 0C */	bge lbl_805AAE20
/* 805AAE18  38 C0 00 02 */	li r6, 2
/* 805AAE1C  48 00 00 18 */	b lbl_805AAE34
lbl_805AAE20:
/* 805AAE20  3C 60 80 65 */	lis r3, lit_518@ha /* 0x8064A640@ha */
/* 805AAE24  C0 03 A6 40 */	lfs f0, lit_518@l(r3)  /* 0x8064A640@l */
/* 805AAE28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805AAE2C  40 80 00 08 */	bge lbl_805AAE34
/* 805AAE30  38 C0 00 01 */	li r6, 1
lbl_805AAE34:
/* 805AAE34  7C C3 33 78 */	mr r3, r6
lbl_805AAE38:
/* 805AAE38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805AAE3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805AAE40  7C 08 03 A6 */	mtlr r0
/* 805AAE44  38 21 00 10 */	addi r1, r1, 0x10
/* 805AAE48  4E 80 00 20 */	blr 
