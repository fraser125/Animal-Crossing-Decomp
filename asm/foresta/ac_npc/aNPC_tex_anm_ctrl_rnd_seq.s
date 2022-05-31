lbl_8052D340:
/* 8052D340  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8052D344  7C 08 02 A6 */	mflr r0
/* 8052D348  90 01 00 34 */	stw r0, 0x34(r1)
/* 8052D34C  39 61 00 30 */	addi r11, r1, 0x30
/* 8052D350  4B B6 DB 85 */	bl func_8009AED4
/* 8052D354  7C 7E 1B 78 */	mr r30, r3
/* 8052D358  7C 9F 23 78 */	mr r31, r4
/* 8052D35C  88 A3 00 01 */	lbz r5, 1(r3)
/* 8052D360  88 03 00 00 */	lbz r0, 0(r3)
/* 8052D364  7C 05 00 40 */	cmplw r5, r0
/* 8052D368  41 82 00 48 */	beq lbl_8052D3B0
/* 8052D36C  4B B2 F9 89 */	bl fqrand
/* 8052D370  3C 80 80 65 */	lis r4, lit_950@ha /* 0x80649294@ha */
/* 8052D374  3C 60 80 65 */	lis r3, lit_803@ha /* 0x8064927C@ha */
/* 8052D378  38 A4 92 94 */	addi r5, r4, lit_950@l /* 0x80649294@l */
/* 8052D37C  C0 03 92 7C */	lfs f0, lit_803@l(r3)  /* 0x8064927C@l */
/* 8052D380  C0 45 00 00 */	lfs f2, 0(r5)
/* 8052D384  7F C3 F3 78 */	mr r3, r30
/* 8052D388  88 9E 00 00 */	lbz r4, 0(r30)
/* 8052D38C  7F E5 FB 78 */	mr r5, r31
/* 8052D390  EC 22 00 72 */	fmuls f1, f2, f1
/* 8052D394  38 C0 FF FF */	li r6, -1
/* 8052D398  EC 00 08 2A */	fadds f0, f0, f1
/* 8052D39C  FC 00 00 1E */	fctiwz f0, f0
/* 8052D3A0  D8 01 00 08 */	stfd f0, 8(r1)
/* 8052D3A4  80 E1 00 0C */	lwz r7, 0xc(r1)
/* 8052D3A8  4B FF FD F9 */	bl aNPC_set_tex_anime
/* 8052D3AC  48 00 00 D0 */	b lbl_8052D47C
lbl_8052D3B0:
/* 8052D3B0  3C A0 80 65 */	lis r5, data_80649274@ha /* 0x80649274@ha */
/* 8052D3B4  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8052D3B8  C0 05 92 74 */	lfs f0, data_80649274@l(r5)  /* 0x80649274@l */
/* 8052D3BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052D3C0  4C 40 13 82 */	cror 2, 0, 2
/* 8052D3C4  40 82 00 A8 */	bne lbl_8052D46C
/* 8052D3C8  88 1E 00 03 */	lbz r0, 3(r30)
/* 8052D3CC  28 00 00 00 */	cmplwi r0, 0
/* 8052D3D0  40 82 00 94 */	bne lbl_8052D464
/* 8052D3D4  88 9E 00 0D */	lbz r4, 0xd(r30)
/* 8052D3D8  38 04 FF FF */	addi r0, r4, -1
/* 8052D3DC  98 1E 00 0D */	stb r0, 0xd(r30)
/* 8052D3E0  88 FE 00 0D */	lbz r7, 0xd(r30)
/* 8052D3E4  28 07 00 00 */	cmplwi r7, 0
/* 8052D3E8  40 82 00 68 */	bne lbl_8052D450
/* 8052D3EC  4B B2 F9 09 */	bl fqrand
/* 8052D3F0  3C 80 80 65 */	lis r4, lit_950@ha /* 0x80649294@ha */
/* 8052D3F4  3C 60 80 65 */	lis r3, lit_803@ha /* 0x8064927C@ha */
/* 8052D3F8  C0 44 92 94 */	lfs f2, lit_950@l(r4)  /* 0x80649294@l */
/* 8052D3FC  C0 03 92 7C */	lfs f0, lit_803@l(r3)  /* 0x8064927C@l */
/* 8052D400  EC 22 00 72 */	fmuls f1, f2, f1
/* 8052D404  EC 00 08 2A */	fadds f0, f0, f1
/* 8052D408  FC 00 00 1E */	fctiwz f0, f0
/* 8052D40C  D8 01 00 08 */	stfd f0, 8(r1)
/* 8052D410  83 A1 00 0C */	lwz r29, 0xc(r1)
/* 8052D414  4B B2 F8 E1 */	bl fqrand
/* 8052D418  3C 60 80 65 */	lis r3, lit_951@ha /* 0x80649298@ha */
/* 8052D41C  88 9E 00 00 */	lbz r4, 0(r30)
/* 8052D420  38 A3 92 98 */	addi r5, r3, lit_951@l /* 0x80649298@l */
/* 8052D424  7F C3 F3 78 */	mr r3, r30
/* 8052D428  C0 05 00 00 */	lfs f0, 0(r5)
/* 8052D42C  7F E5 FB 78 */	mr r5, r31
/* 8052D430  7F A7 EB 78 */	mr r7, r29
/* 8052D434  EC 00 00 72 */	fmuls f0, f0, f1
/* 8052D438  FC 00 00 1E */	fctiwz f0, f0
/* 8052D43C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8052D440  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 8052D444  38 C6 00 20 */	addi r6, r6, 0x20
/* 8052D448  4B FF FD 59 */	bl aNPC_set_tex_anime
/* 8052D44C  48 00 00 30 */	b lbl_8052D47C
lbl_8052D450:
/* 8052D450  88 9E 00 00 */	lbz r4, 0(r30)
/* 8052D454  7F E5 FB 78 */	mr r5, r31
/* 8052D458  38 C0 FF FF */	li r6, -1
/* 8052D45C  4B FF FD 45 */	bl aNPC_set_tex_anime
/* 8052D460  48 00 00 1C */	b lbl_8052D47C
lbl_8052D464:
/* 8052D464  4B FF FE 69 */	bl aNPC_tex_anm_ctrl_set_pat
/* 8052D468  48 00 00 14 */	b lbl_8052D47C
lbl_8052D46C:
/* 8052D46C  3C 60 80 65 */	lis r3, lit_802@ha /* 0x80649278@ha */
/* 8052D470  C0 03 92 78 */	lfs f0, lit_802@l(r3)  /* 0x80649278@l */
/* 8052D474  EC 01 00 28 */	fsubs f0, f1, f0
/* 8052D478  D0 1E 00 08 */	stfs f0, 8(r30)
lbl_8052D47C:
/* 8052D47C  39 61 00 30 */	addi r11, r1, 0x30
/* 8052D480  4B B6 DA A1 */	bl func_8009AF20
/* 8052D484  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8052D488  7C 08 03 A6 */	mtlr r0
/* 8052D48C  38 21 00 30 */	addi r1, r1, 0x30
/* 8052D490  4E 80 00 20 */	blr 
