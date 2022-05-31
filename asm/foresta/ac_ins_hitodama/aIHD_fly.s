lbl_8059AF7C:
/* 8059AF7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059AF80  7C 08 02 A6 */	mflr r0
/* 8059AF84  3C A0 80 65 */	lis r5, lit_568@ha /* 0x8064A004@ha */
/* 8059AF88  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059AF8C  38 C5 A0 04 */	addi r6, r5, lit_568@l /* 0x8064A004@l */
/* 8059AF90  C0 46 00 00 */	lfs f2, 0(r6)
/* 8059AF94  3C A0 80 65 */	lis r5, lit_569@ha /* 0x8064A008@ha */
/* 8059AF98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059AF9C  38 C5 A0 08 */	addi r6, r5, lit_569@l /* 0x8064A008@l */
/* 8059AFA0  3C A0 80 65 */	lis r5, lit_563@ha /* 0x8064A000@ha */
/* 8059AFA4  C0 26 00 00 */	lfs f1, 0(r6)
/* 8059AFA8  93 C1 00 08 */	stw r30, 8(r1)
/* 8059AFAC  7C 9E 23 78 */	mr r30, r4
/* 8059AFB0  C0 05 A0 00 */	lfs f0, lit_563@l(r5)  /* 0x8064A000@l */
/* 8059AFB4  7C 7F 1B 78 */	mr r31, r3
/* 8059AFB8  D0 43 00 64 */	stfs f2, 0x64(r3)
/* 8059AFBC  38 80 00 00 */	li r4, 0
/* 8059AFC0  D0 43 00 60 */	stfs f2, 0x60(r3)
/* 8059AFC4  D0 43 00 5C */	stfs f2, 0x5c(r3)
/* 8059AFC8  D0 23 01 EC */	stfs f1, 0x1ec(r3)
/* 8059AFCC  D0 03 01 E8 */	stfs f0, 0x1e8(r3)
/* 8059AFD0  4B FF FA CD */	bl aIHD_fuwafuwa
/* 8059AFD4  7F E3 FB 78 */	mr r3, r31
/* 8059AFD8  7F C4 F3 78 */	mr r4, r30
/* 8059AFDC  4B FF FB D1 */	bl aIHD_calc_move_drt
/* 8059AFE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059AFE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059AFE8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8059AFEC  7C 08 03 A6 */	mtlr r0
/* 8059AFF0  38 21 00 10 */	addi r1, r1, 0x10
/* 8059AFF4  4E 80 00 20 */	blr 
