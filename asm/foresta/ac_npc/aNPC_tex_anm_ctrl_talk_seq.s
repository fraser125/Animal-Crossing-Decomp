lbl_8052D494:
/* 8052D494  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8052D498  7C 08 02 A6 */	mflr r0
/* 8052D49C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8052D4A0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8052D4A4  7C 9F 23 78 */	mr r31, r4
/* 8052D4A8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8052D4AC  7C 7E 1B 78 */	mr r30, r3
/* 8052D4B0  88 A3 00 01 */	lbz r5, 1(r3)
/* 8052D4B4  88 03 00 00 */	lbz r0, 0(r3)
/* 8052D4B8  7C 05 00 40 */	cmplw r5, r0
/* 8052D4BC  41 82 00 48 */	beq lbl_8052D504
/* 8052D4C0  4B B2 F8 35 */	bl fqrand
/* 8052D4C4  3C 80 80 65 */	lis r4, lit_950@ha /* 0x80649294@ha */
/* 8052D4C8  3C 60 80 65 */	lis r3, lit_803@ha /* 0x8064927C@ha */
/* 8052D4CC  38 A4 92 94 */	addi r5, r4, lit_950@l /* 0x80649294@l */
/* 8052D4D0  C0 03 92 7C */	lfs f0, lit_803@l(r3)  /* 0x8064927C@l */
/* 8052D4D4  C0 45 00 00 */	lfs f2, 0(r5)
/* 8052D4D8  7F C3 F3 78 */	mr r3, r30
/* 8052D4DC  88 9E 00 00 */	lbz r4, 0(r30)
/* 8052D4E0  7F E5 FB 78 */	mr r5, r31
/* 8052D4E4  EC 22 00 72 */	fmuls f1, f2, f1
/* 8052D4E8  38 C0 00 00 */	li r6, 0
/* 8052D4EC  EC 00 08 2A */	fadds f0, f0, f1
/* 8052D4F0  FC 00 00 1E */	fctiwz f0, f0
/* 8052D4F4  D8 01 00 08 */	stfd f0, 8(r1)
/* 8052D4F8  80 E1 00 0C */	lwz r7, 0xc(r1)
/* 8052D4FC  4B FF FC A5 */	bl aNPC_set_tex_anime
/* 8052D500  48 00 00 B0 */	b lbl_8052D5B0
lbl_8052D504:
/* 8052D504  3C A0 80 65 */	lis r5, data_80649274@ha /* 0x80649274@ha */
/* 8052D508  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8052D50C  C0 05 92 74 */	lfs f0, data_80649274@l(r5)  /* 0x80649274@l */
/* 8052D510  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052D514  4C 40 13 82 */	cror 2, 0, 2
/* 8052D518  40 82 00 88 */	bne lbl_8052D5A0
/* 8052D51C  88 1E 00 03 */	lbz r0, 3(r30)
/* 8052D520  28 00 00 00 */	cmplwi r0, 0
/* 8052D524  40 82 00 74 */	bne lbl_8052D598
/* 8052D528  88 9E 00 0D */	lbz r4, 0xd(r30)
/* 8052D52C  38 04 FF FF */	addi r0, r4, -1
/* 8052D530  98 1E 00 0D */	stb r0, 0xd(r30)
/* 8052D534  88 FE 00 0D */	lbz r7, 0xd(r30)
/* 8052D538  28 07 00 00 */	cmplwi r7, 0
/* 8052D53C  40 82 00 48 */	bne lbl_8052D584
/* 8052D540  4B B2 F7 B5 */	bl fqrand
/* 8052D544  3C 80 80 65 */	lis r4, lit_950@ha /* 0x80649294@ha */
/* 8052D548  3C 60 80 65 */	lis r3, lit_803@ha /* 0x8064927C@ha */
/* 8052D54C  38 A4 92 94 */	addi r5, r4, lit_950@l /* 0x80649294@l */
/* 8052D550  C0 03 92 7C */	lfs f0, lit_803@l(r3)  /* 0x8064927C@l */
/* 8052D554  C0 45 00 00 */	lfs f2, 0(r5)
/* 8052D558  7F C3 F3 78 */	mr r3, r30
/* 8052D55C  88 9E 00 00 */	lbz r4, 0(r30)
/* 8052D560  7F E5 FB 78 */	mr r5, r31
/* 8052D564  EC 22 00 72 */	fmuls f1, f2, f1
/* 8052D568  38 C0 00 00 */	li r6, 0
/* 8052D56C  EC 00 08 2A */	fadds f0, f0, f1
/* 8052D570  FC 00 00 1E */	fctiwz f0, f0
/* 8052D574  D8 01 00 08 */	stfd f0, 8(r1)
/* 8052D578  80 E1 00 0C */	lwz r7, 0xc(r1)
/* 8052D57C  4B FF FC 25 */	bl aNPC_set_tex_anime
/* 8052D580  48 00 00 30 */	b lbl_8052D5B0
lbl_8052D584:
/* 8052D584  88 9E 00 00 */	lbz r4, 0(r30)
/* 8052D588  7F E5 FB 78 */	mr r5, r31
/* 8052D58C  38 C0 00 00 */	li r6, 0
/* 8052D590  4B FF FC 11 */	bl aNPC_set_tex_anime
/* 8052D594  48 00 00 1C */	b lbl_8052D5B0
lbl_8052D598:
/* 8052D598  4B FF FD 35 */	bl aNPC_tex_anm_ctrl_set_pat
/* 8052D59C  48 00 00 14 */	b lbl_8052D5B0
lbl_8052D5A0:
/* 8052D5A0  3C 60 80 65 */	lis r3, lit_971@ha /* 0x8064929C@ha */
/* 8052D5A4  C0 03 92 9C */	lfs f0, lit_971@l(r3)  /* 0x8064929C@l */
/* 8052D5A8  EC 01 00 28 */	fsubs f0, f1, f0
/* 8052D5AC  D0 1E 00 08 */	stfs f0, 8(r30)
lbl_8052D5B0:
/* 8052D5B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8052D5B4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8052D5B8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8052D5BC  7C 08 03 A6 */	mtlr r0
/* 8052D5C0  38 21 00 20 */	addi r1, r1, 0x20
/* 8052D5C4  4E 80 00 20 */	blr 
