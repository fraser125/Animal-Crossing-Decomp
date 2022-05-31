lbl_8057E074:
/* 8057E074  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8057E078  7C 08 02 A6 */	mflr r0
/* 8057E07C  3C 80 80 65 */	lis r4, lit_992@ha /* 0x80649A20@ha */
/* 8057E080  38 A0 00 03 */	li r5, 3
/* 8057E084  90 01 00 24 */	stw r0, 0x24(r1)
/* 8057E088  38 C0 00 03 */	li r6, 3
/* 8057E08C  C0 24 9A 20 */	lfs f1, lit_992@l(r4)  /* 0x80649A20@l */
/* 8057E090  38 80 00 04 */	li r4, 4
/* 8057E094  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 8057E098  38 E0 00 00 */	li r7, 0
/* 8057E09C  C0 43 00 28 */	lfs f2, 0x28(r3)
/* 8057E0A0  EC 01 00 2A */	fadds f0, f1, f0
/* 8057E0A4  FC 40 10 1E */	fctiwz f2, f2
/* 8057E0A8  FC 00 00 1E */	fctiwz f0, f0
/* 8057E0AC  D8 41 00 08 */	stfd f2, 8(r1)
/* 8057E0B0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8057E0B4  81 01 00 0C */	lwz r8, 0xc(r1)
/* 8057E0B8  81 21 00 14 */	lwz r9, 0x14(r1)
/* 8057E0BC  4B FF E8 F1 */	bl aSHM_set_request_act
/* 8057E0C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8057E0C4  7C 08 03 A6 */	mtlr r0
/* 8057E0C8  38 21 00 20 */	addi r1, r1, 0x20
/* 8057E0CC  4E 80 00 20 */	blr 
