lbl_8037F88C:
/* 8037F88C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8037F890  7C 08 02 A6 */	mflr r0
/* 8037F894  28 04 00 00 */	cmplwi r4, 0
/* 8037F898  90 01 00 24 */	stw r0, 0x24(r1)
/* 8037F89C  40 82 00 0C */	bne lbl_8037F8A8
/* 8037F8A0  28 05 00 00 */	cmplwi r5, 0
/* 8037F8A4  41 82 00 E8 */	beq lbl_8037F98C
lbl_8037F8A8:
/* 8037F8A8  28 04 00 00 */	cmplwi r4, 0
/* 8037F8AC  40 82 00 10 */	bne lbl_8037F8BC
/* 8037F8B0  38 E5 00 48 */	addi r7, r5, 0x48
/* 8037F8B4  7C E8 3B 78 */	mr r8, r7
/* 8037F8B8  48 00 00 20 */	b lbl_8037F8D8
lbl_8037F8BC:
/* 8037F8BC  28 05 00 00 */	cmplwi r5, 0
/* 8037F8C0  40 82 00 10 */	bne lbl_8037F8D0
/* 8037F8C4  39 04 00 48 */	addi r8, r4, 0x48
/* 8037F8C8  7D 07 43 78 */	mr r7, r8
/* 8037F8CC  48 00 00 0C */	b lbl_8037F8D8
lbl_8037F8D0:
/* 8037F8D0  39 05 00 48 */	addi r8, r5, 0x48
/* 8037F8D4  38 E4 00 48 */	addi r7, r4, 0x48
lbl_8037F8D8:
/* 8037F8D8  80 03 1C 18 */	lwz r0, 0x1c18(r3)
/* 8037F8DC  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8037F8E0  41 82 00 08 */	beq lbl_8037F8E8
/* 8037F8E4  39 03 1C 08 */	addi r8, r3, 0x1c08
lbl_8037F8E8:
/* 8037F8E8  FC 40 0A 10 */	fabs f2, f1
/* 8037F8EC  3C 80 80 64 */	lis r4, data_8064134C@ha /* 0x8064134C@ha */
/* 8037F8F0  3C A0 80 64 */	lis r5, lit_1066@ha /* 0x806414C4@ha */
/* 8037F8F4  C0 04 13 4C */	lfs f0, data_8064134C@l(r4)  /* 0x8064134C@l */
/* 8037F8F8  C0 65 14 C4 */	lfs f3, lit_1066@l(r5)  /* 0x806414C4@l */
/* 8037F8FC  FC 40 10 18 */	frsp f2, f2
/* 8037F900  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8037F904  7C 00 00 26 */	mfcr r0
/* 8037F908  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 8037F90C  40 82 00 14 */	bne lbl_8037F920
/* 8037F910  3C 80 80 64 */	lis r4, lit_1067@ha /* 0x806414C8@ha */
/* 8037F914  C0 04 14 C8 */	lfs f0, lit_1067@l(r4)  /* 0x806414C8@l */
/* 8037F918  EC 00 08 24 */	fdivs f0, f0, f1
/* 8037F91C  EC 63 00 28 */	fsubs f3, f3, f0
lbl_8037F920:
/* 8037F920  C0 27 00 00 */	lfs f1, 0(r7)
/* 8037F924  3C 80 80 64 */	lis r4, lit_658@ha /* 0x806413A8@ha */
/* 8037F928  C0 08 00 00 */	lfs f0, 0(r8)
/* 8037F92C  38 A0 00 00 */	li r5, 0
/* 8037F930  C0 44 13 A8 */	lfs f2, lit_658@l(r4)  /* 0x806413A8@l */
/* 8037F934  38 81 00 08 */	addi r4, r1, 8
/* 8037F938  EC 01 00 2A */	fadds f0, f1, f0
/* 8037F93C  EC 02 00 32 */	fmuls f0, f2, f0
/* 8037F940  D0 01 00 08 */	stfs f0, 8(r1)
/* 8037F944  C0 27 00 04 */	lfs f1, 4(r7)
/* 8037F948  C0 08 00 04 */	lfs f0, 4(r8)
/* 8037F94C  80 C1 00 08 */	lwz r6, 8(r1)
/* 8037F950  EC 01 00 2A */	fadds f0, f1, f0
/* 8037F954  EC 02 00 32 */	fmuls f0, f2, f0
/* 8037F958  EC 00 18 28 */	fsubs f0, f0, f3
/* 8037F95C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8037F960  C0 27 00 08 */	lfs f1, 8(r7)
/* 8037F964  C0 08 00 08 */	lfs f0, 8(r8)
/* 8037F968  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8037F96C  EC 01 00 2A */	fadds f0, f1, f0
/* 8037F970  EC 02 00 32 */	fmuls f0, f2, f0
/* 8037F974  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8037F978  90 C3 1C 1C */	stw r6, 0x1c1c(r3)
/* 8037F97C  90 03 1C 20 */	stw r0, 0x1c20(r3)
/* 8037F980  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8037F984  90 03 1C 24 */	stw r0, 0x1c24(r3)
/* 8037F988  4B FF E9 A9 */	bl Camera2_MoveCenterPosAndSpeed_fromEndCenterPos
lbl_8037F98C:
/* 8037F98C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8037F990  7C 08 03 A6 */	mtlr r0
/* 8037F994  38 21 00 20 */	addi r1, r1, 0x20
/* 8037F998  4E 80 00 20 */	blr 
