lbl_805ACB60:
/* 805ACB60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805ACB64  7C 08 02 A6 */	mflr r0
/* 805ACB68  90 01 00 14 */	stw r0, 0x14(r1)
/* 805ACB6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805ACB70  7C 7F 1B 78 */	mr r31, r3
/* 805ACB74  7C 83 23 78 */	mr r3, r4
/* 805ACB78  4B E2 CA C9 */	bl get_player_actor_withoutCheck
/* 805ACB7C  28 03 00 00 */	cmplwi r3, 0
/* 805ACB80  38 C0 00 00 */	li r6, 0
/* 805ACB84  40 82 00 0C */	bne lbl_805ACB90
/* 805ACB88  38 60 00 00 */	li r3, 0
/* 805ACB8C  48 00 00 88 */	b lbl_805ACC14
lbl_805ACB90:
/* 805ACB90  3C A0 80 65 */	lis r5, lit_515@ha /* 0x8064A6AC@ha */
/* 805ACB94  3C 80 80 65 */	lis r4, lit_516@ha /* 0x8064A6B0@ha */
/* 805ACB98  C0 7F 00 28 */	lfs f3, 0x28(r31)
/* 805ACB9C  C0 45 A6 AC */	lfs f2, lit_515@l(r5)  /* 0x8064A6AC@l */
/* 805ACBA0  C0 24 A6 B0 */	lfs f1, lit_516@l(r4)  /* 0x8064A6B0@l */
/* 805ACBA4  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 805ACBA8  EC 43 10 28 */	fsubs f2, f3, f2
/* 805ACBAC  C0 63 00 28 */	lfs f3, 0x28(r3)
/* 805ACBB0  EC 01 00 2A */	fadds f0, f1, f0
/* 805ACBB4  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 805ACBB8  EC 43 10 28 */	fsubs f2, f3, f2
/* 805ACBBC  A8 03 00 DE */	lha r0, 0xde(r3)
/* 805ACBC0  EC 01 00 28 */	fsubs f0, f1, f0
/* 805ACBC4  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 805ACBC8  EC 22 00 B2 */	fmuls f1, f2, f2
/* 805ACBCC  28 00 40 00 */	cmplwi r0, 0x4000
/* 805ACBD0  EC 00 00 32 */	fmuls f0, f0, f0
/* 805ACBD4  EC 21 00 2A */	fadds f1, f1, f0
/* 805ACBD8  40 81 00 24 */	ble lbl_805ACBFC
/* 805ACBDC  28 00 80 00 */	cmplwi r0, 0x8000
/* 805ACBE0  40 80 00 1C */	bge lbl_805ACBFC
/* 805ACBE4  3C 60 80 65 */	lis r3, lit_517@ha /* 0x8064A6B4@ha */
/* 805ACBE8  C0 03 A6 B4 */	lfs f0, lit_517@l(r3)  /* 0x8064A6B4@l */
/* 805ACBEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805ACBF0  40 80 00 0C */	bge lbl_805ACBFC
/* 805ACBF4  38 C0 00 02 */	li r6, 2
/* 805ACBF8  48 00 00 18 */	b lbl_805ACC10
lbl_805ACBFC:
/* 805ACBFC  3C 60 80 65 */	lis r3, lit_518@ha /* 0x8064A6B8@ha */
/* 805ACC00  C0 03 A6 B8 */	lfs f0, lit_518@l(r3)  /* 0x8064A6B8@l */
/* 805ACC04  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805ACC08  40 80 00 08 */	bge lbl_805ACC10
/* 805ACC0C  38 C0 00 01 */	li r6, 1
lbl_805ACC10:
/* 805ACC10  7C C3 33 78 */	mr r3, r6
lbl_805ACC14:
/* 805ACC14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805ACC18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805ACC1C  7C 08 03 A6 */	mtlr r0
/* 805ACC20  38 21 00 10 */	addi r1, r1, 0x10
/* 805ACC24  4E 80 00 20 */	blr 
