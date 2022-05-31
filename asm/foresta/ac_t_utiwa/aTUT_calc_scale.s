lbl_804AA404:
/* 804AA404  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804AA408  7C 08 02 A6 */	mflr r0
/* 804AA40C  3C C0 80 69 */	lis r6, aim@ha /* 0x8068F234@ha */
/* 804AA410  90 01 00 24 */	stw r0, 0x24(r1)
/* 804AA414  54 80 10 3A */	slwi r0, r4, 2
/* 804AA418  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804AA41C  7C 7F 1B 78 */	mr r31, r3
/* 804AA420  C0 03 00 5C */	lfs f0, 0x5c(r3)
/* 804AA424  3C 60 80 64 */	lis r3, data_80645E44@ha /* 0x80645E44@ha */
/* 804AA428  38 A3 5E 44 */	addi r5, r3, data_80645E44@l /* 0x80645E44@l */
/* 804AA42C  38 66 F2 34 */	addi r3, r6, aim@l /* 0x8068F234@l */
/* 804AA430  D0 01 00 08 */	stfs f0, 8(r1)
/* 804AA434  7C 23 04 2E */	lfsx f1, r3, r0
/* 804AA438  38 61 00 08 */	addi r3, r1, 8
/* 804AA43C  C0 45 00 00 */	lfs f2, 0(r5)
/* 804AA440  4B F1 08 29 */	bl chase_f
/* 804AA444  C0 01 00 08 */	lfs f0, 8(r1)
/* 804AA448  D0 1F 00 5C */	stfs f0, 0x5c(r31)
/* 804AA44C  C0 01 00 08 */	lfs f0, 8(r1)
/* 804AA450  D0 1F 00 60 */	stfs f0, 0x60(r31)
/* 804AA454  C0 01 00 08 */	lfs f0, 8(r1)
/* 804AA458  D0 1F 00 64 */	stfs f0, 0x64(r31)
/* 804AA45C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804AA460  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804AA464  7C 08 03 A6 */	mtlr r0
/* 804AA468  38 21 00 20 */	addi r1, r1, 0x20
/* 804AA46C  4E 80 00 20 */	blr 
