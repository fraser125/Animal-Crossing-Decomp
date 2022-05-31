lbl_8047C378:
/* 8047C378  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8047C37C  7C 08 02 A6 */	mflr r0
/* 8047C380  90 01 00 24 */	stw r0, 0x24(r1)
/* 8047C384  39 61 00 20 */	addi r11, r1, 0x20
/* 8047C388  4B C1 EB 4D */	bl func_8009AED4
/* 8047C38C  3C E0 80 64 */	lis r7, lit_5378@ha /* 0x80644B14@ha */
/* 8047C390  3C C0 80 64 */	lis r6, lit_4140@ha /* 0x80644A90@ha */
/* 8047C394  C0 23 00 34 */	lfs f1, 0x34(r3)
/* 8047C398  7C 7D 1B 78 */	mr r29, r3
/* 8047C39C  C0 43 00 38 */	lfs f2, 0x38(r3)
/* 8047C3A0  7C 9E 23 78 */	mr r30, r4
/* 8047C3A4  C0 67 4B 14 */	lfs f3, lit_5378@l(r7)  /* 0x80644B14@l */
/* 8047C3A8  7C BF 2B 78 */	mr r31, r5
/* 8047C3AC  C0 86 4A 90 */	lfs f4, lit_4140@l(r6)  /* 0x80644A90@l */
/* 8047C3B0  4B FF FE BD */	bl aMR_GetEllipseSpeed
/* 8047C3B4  C0 5D 00 34 */	lfs f2, 0x34(r29)
/* 8047C3B8  3C 60 80 64 */	lis r3, lit_886@ha /* 0x806449F8@ha */
/* 8047C3BC  C0 7D 00 38 */	lfs f3, 0x38(r29)
/* 8047C3C0  C0 03 49 F8 */	lfs f0, lit_886@l(r3)  /* 0x806449F8@l */
/* 8047C3C4  EC 42 18 28 */	fsubs f2, f2, f3
/* 8047C3C8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8047C3CC  4C 41 13 82 */	cror 2, 1, 2
/* 8047C3D0  40 82 00 08 */	bne lbl_8047C3D8
/* 8047C3D4  48 00 00 08 */	b lbl_8047C3DC
lbl_8047C3D8:
/* 8047C3D8  FC 40 10 50 */	fneg f2, f2
lbl_8047C3DC:
/* 8047C3DC  3C 60 80 64 */	lis r3, lit_621@ha /* 0x806449EC@ha */
/* 8047C3E0  C0 03 49 EC */	lfs f0, lit_621@l(r3)  /* 0x806449EC@l */
/* 8047C3E4  EC 00 08 2A */	fadds f0, f0, f1
/* 8047C3E8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8047C3EC  4C 40 13 82 */	cror 2, 0, 2
/* 8047C3F0  40 82 00 60 */	bne lbl_8047C450
/* 8047C3F4  D0 7D 00 34 */	stfs f3, 0x34(r29)
/* 8047C3F8  38 00 00 00 */	li r0, 0
/* 8047C3FC  B0 1D 00 3C */	sth r0, 0x3c(r29)
/* 8047C400  A8 1F 01 74 */	lha r0, 0x174(r31)
/* 8047C404  2C 00 00 04 */	cmpwi r0, 4
/* 8047C408  40 82 00 0C */	bne lbl_8047C414
/* 8047C40C  38 00 00 06 */	li r0, 6
/* 8047C410  B0 1F 01 74 */	sth r0, 0x174(r31)
lbl_8047C414:
/* 8047C414  3C 60 80 64 */	lis r3, lit_1234@ha /* 0x80644A18@ha */
/* 8047C418  3C 80 80 64 */	lis r4, lit_1233@ha /* 0x80644A14@ha */
/* 8047C41C  C0 23 4A 18 */	lfs f1, lit_1234@l(r3)  /* 0x80644A18@l */
/* 8047C420  7F E3 FB 78 */	mr r3, r31
/* 8047C424  C0 1D 00 34 */	lfs f0, 0x34(r29)
/* 8047C428  C0 44 4A 14 */	lfs f2, lit_1233@l(r4)  /* 0x80644A14@l */
/* 8047C42C  7F A4 EB 78 */	mr r4, r29
/* 8047C430  EC 01 00 32 */	fmuls f0, f1, f0
/* 8047C434  EC 02 00 32 */	fmuls f0, f2, f0
/* 8047C438  FC 00 00 1E */	fctiwz f0, f0
/* 8047C43C  D8 01 00 08 */	stfd f0, 8(r1)
/* 8047C440  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8047C444  B0 1D 01 24 */	sth r0, 0x124(r29)
/* 8047C448  4B FF B8 FD */	bl aMR_RequestItemToUnFitFurniture
/* 8047C44C  48 00 00 34 */	b lbl_8047C480
lbl_8047C450:
/* 8047C450  A8 1D 00 3C */	lha r0, 0x3c(r29)
/* 8047C454  2C 00 00 09 */	cmpwi r0, 9
/* 8047C458  40 82 00 14 */	bne lbl_8047C46C
/* 8047C45C  C0 1D 00 34 */	lfs f0, 0x34(r29)
/* 8047C460  EC 00 08 2A */	fadds f0, f0, f1
/* 8047C464  D0 1D 00 34 */	stfs f0, 0x34(r29)
/* 8047C468  48 00 00 18 */	b lbl_8047C480
lbl_8047C46C:
/* 8047C46C  2C 00 00 0B */	cmpwi r0, 0xb
/* 8047C470  40 82 00 10 */	bne lbl_8047C480
/* 8047C474  C0 1D 00 34 */	lfs f0, 0x34(r29)
/* 8047C478  EC 00 08 28 */	fsubs f0, f0, f1
/* 8047C47C  D0 1D 00 34 */	stfs f0, 0x34(r29)
lbl_8047C480:
/* 8047C480  7F E3 FB 78 */	mr r3, r31
/* 8047C484  7F A4 EB 78 */	mr r4, r29
/* 8047C488  7F C5 F3 78 */	mr r5, r30
/* 8047C48C  4B FF B2 49 */	bl aMR_CheckFtrAndGoki
/* 8047C490  39 61 00 20 */	addi r11, r1, 0x20
/* 8047C494  4B C1 EA 8D */	bl func_8009AF20
/* 8047C498  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8047C49C  7C 08 03 A6 */	mtlr r0
/* 8047C4A0  38 21 00 20 */	addi r1, r1, 0x20
/* 8047C4A4  4E 80 00 20 */	blr 
