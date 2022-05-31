lbl_8050B684:
/* 8050B684  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050B688  7C 08 02 A6 */	mflr r0
/* 8050B68C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8050B690  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8050B694  93 C1 00 08 */	stw r30, 8(r1)
/* 8050B698  7C 7E 1B 78 */	mr r30, r3
/* 8050B69C  AB E3 00 36 */	lha r31, 0x36(r3)
/* 8050B6A0  7F E3 FB 78 */	mr r3, r31
/* 8050B6A4  4B EA F4 4D */	bl sin_s
/* 8050B6A8  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 8050B6AC  7F E3 FB 78 */	mr r3, r31
/* 8050B6B0  EC 00 00 72 */	fmuls f0, f0, f1
/* 8050B6B4  D0 1E 00 68 */	stfs f0, 0x68(r30)
/* 8050B6B8  4B EA F3 E5 */	bl cos_s
/* 8050B6BC  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 8050B6C0  7F C3 F3 78 */	mr r3, r30
/* 8050B6C4  EC 00 00 72 */	fmuls f0, f0, f1
/* 8050B6C8  D0 1E 00 70 */	stfs f0, 0x70(r30)
/* 8050B6CC  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 8050B6D0  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 8050B6D4  EC 01 00 2A */	fadds f0, f1, f0
/* 8050B6D8  D0 1E 00 6C */	stfs f0, 0x6c(r30)
/* 8050B6DC  4B E6 8B 2D */	bl Actor_position_move
/* 8050B6E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050B6E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8050B6E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8050B6EC  7C 08 03 A6 */	mtlr r0
/* 8050B6F0  38 21 00 10 */	addi r1, r1, 0x10
/* 8050B6F4  4E 80 00 20 */	blr 
