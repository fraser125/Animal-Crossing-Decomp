lbl_80459314:
/* 80459314  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80459318  7C 08 02 A6 */	mflr r0
/* 8045931C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80459320  39 61 00 20 */	addi r11, r1, 0x20
/* 80459324  4B C4 1B B1 */	bl func_8009AED4
/* 80459328  7C 7E 1B 78 */	mr r30, r3
/* 8045932C  3C 60 80 CD */	lis r3, cKF_ba_r_act_mus_kaeru_a1_big@ha /* 0x80CCECE4@ha */
/* 80459330  83 FE 05 90 */	lwz r31, 0x590(r30)
/* 80459334  3B BE 00 38 */	addi r29, r30, 0x38
/* 80459338  38 03 EC E4 */	addi r0, r3, cKF_ba_r_act_mus_kaeru_a1_big@l /* 0x80CCECE4@l */
/* 8045933C  90 1E 05 8C */	stw r0, 0x58c(r30)
/* 80459340  7F A3 EB 78 */	mr r3, r29
/* 80459344  38 DD 04 F0 */	addi r6, r29, 0x4f0
/* 80459348  38 FD 05 14 */	addi r7, r29, 0x514
/* 8045934C  80 9E 05 84 */	lwz r4, 0x584(r30)
/* 80459350  80 BE 05 88 */	lwz r5, 0x588(r30)
/* 80459354  4B F1 77 41 */	bl cKF_SkeletonInfo_R_ct
/* 80459358  3C 80 80 64 */	lis r4, lit_471@ha /* 0x8064425C@ha */
/* 8045935C  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80459360  38 A4 42 5C */	addi r5, r4, lit_471@l /* 0x8064425C@l */
/* 80459364  C0 43 42 48 */	lfs f2, lit_468@l(r3)  /* 0x80644248@l */
/* 80459368  C0 25 00 00 */	lfs f1, 0(r5)
/* 8045936C  7F A3 EB 78 */	mr r3, r29
/* 80459370  80 9D 05 50 */	lwz r4, 0x550(r29)
/* 80459374  38 A0 00 00 */	li r5, 0
/* 80459378  4B F1 84 41 */	bl cKF_SkeletonInfo_R_init_standard_repeat_speedsetandmorph
/* 8045937C  3C 60 80 CE */	lis r3, cKF_bs_r_obj_museum5_hasu@ha /* 0x80CE23C8@ha */
/* 80459380  3C A0 80 CE */	lis r5, cKF_ba_r_obj_museum5_hasu@ha /* 0x80CE1E88@ha */
/* 80459384  38 83 23 C8 */	addi r4, r3, cKF_bs_r_obj_museum5_hasu@l /* 0x80CE23C8@l */
/* 80459388  38 DF 04 F0 */	addi r6, r31, 0x4f0
/* 8045938C  7F E3 FB 78 */	mr r3, r31
/* 80459390  38 A5 1E 88 */	addi r5, r5, cKF_ba_r_obj_museum5_hasu@l /* 0x80CE1E88@l */
/* 80459394  38 FF 05 26 */	addi r7, r31, 0x526
/* 80459398  4B F1 76 FD */	bl cKF_SkeletonInfo_R_ct
/* 8045939C  3C 80 80 64 */	lis r4, lit_471@ha /* 0x8064425C@ha */
/* 804593A0  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 804593A4  C0 43 42 48 */	lfs f2, lit_468@l(r3)  /* 0x80644248@l */
/* 804593A8  3C A0 80 CE */	lis r5, cKF_ba_r_obj_museum5_hasu@ha /* 0x80CE1E88@ha */
/* 804593AC  C0 24 42 5C */	lfs f1, lit_471@l(r4)  /* 0x8064425C@l */
/* 804593B0  38 85 1E 88 */	addi r4, r5, cKF_ba_r_obj_museum5_hasu@l /* 0x80CE1E88@l */
/* 804593B4  7F E3 FB 78 */	mr r3, r31
/* 804593B8  38 A0 00 00 */	li r5, 0
/* 804593BC  4B F1 83 FD */	bl cKF_SkeletonInfo_R_init_standard_repeat_speedsetandmorph
/* 804593C0  3C 60 80 64 */	lis r3, lit_8807@ha /* 0x806444D8@ha */
/* 804593C4  3C 80 80 64 */	lis r4, lit_8808@ha /* 0x806444DC@ha */
/* 804593C8  38 A3 44 D8 */	addi r5, r3, lit_8807@l /* 0x806444D8@l */
/* 804593CC  3C C0 80 66 */	lis r6, data_8065F050@ha /* 0x8065F050@ha */
/* 804593D0  C0 05 00 00 */	lfs f0, 0(r5)
/* 804593D4  38 E4 44 DC */	addi r7, r4, lit_8808@l /* 0x806444DC@l */
/* 804593D8  3C 60 80 64 */	lis r3, lit_8809@ha /* 0x806444E0@ha */
/* 804593DC  39 06 F0 50 */	addi r8, r6, data_8065F050@l /* 0x8065F050@l */
/* 804593E0  D0 1E 05 A0 */	stfs f0, 0x5a0(r30)
/* 804593E4  38 83 44 E0 */	addi r4, r3, lit_8809@l /* 0x806444E0@l */
/* 804593E8  C0 27 00 00 */	lfs f1, 0(r7)
/* 804593EC  3C 60 80 64 */	lis r3, lit_8810@ha /* 0x806444E4@ha */
/* 804593F0  C0 04 00 00 */	lfs f0, 0(r4)
/* 804593F4  38 83 44 E4 */	addi r4, r3, lit_8810@l /* 0x806444E4@l */
/* 804593F8  D0 3E 05 A4 */	stfs f1, 0x5a4(r30)
/* 804593FC  3C 60 80 64 */	lis r3, lit_8811@ha /* 0x806444E8@ha */
/* 80459400  C0 24 00 00 */	lfs f1, 0(r4)
/* 80459404  38 C0 00 00 */	li r6, 0
/* 80459408  D0 1E 05 A8 */	stfs f0, 0x5a8(r30)
/* 8045940C  3C A0 80 66 */	lis r5, ZeroSVec@ha /* 0x8065F05C@ha */
/* 80459410  C0 03 44 E8 */	lfs f0, lit_8811@l(r3)  /* 0x806444E8@l */
/* 80459414  38 00 60 00 */	li r0, 0x6000
/* 80459418  80 E8 00 00 */	lwz r7, 0(r8)
/* 8045941C  80 88 00 04 */	lwz r4, 4(r8)
/* 80459420  90 FE 05 AC */	stw r7, 0x5ac(r30)
/* 80459424  90 9E 05 B0 */	stw r4, 0x5b0(r30)
/* 80459428  80 68 00 08 */	lwz r3, 8(r8)
/* 8045942C  90 7E 05 B4 */	stw r3, 0x5b4(r30)
/* 80459430  B0 DE 06 26 */	sth r6, 0x626(r30)
/* 80459434  B0 DE 06 12 */	sth r6, 0x612(r30)
/* 80459438  B0 DE 06 14 */	sth r6, 0x614(r30)
/* 8045943C  B0 DE 06 16 */	sth r6, 0x616(r30)
/* 80459440  84 65 F0 5C */	lwzu r3, ZeroSVec@l(r5)  /* 0x8065F05C@l */
/* 80459444  90 7E 06 0C */	stw r3, 0x60c(r30)
/* 80459448  A0 65 00 04 */	lhz r3, 4(r5)
/* 8045944C  B0 7E 06 10 */	sth r3, 0x610(r30)
/* 80459450  D0 3E 05 AC */	stfs f1, 0x5ac(r30)
/* 80459454  D0 1E 05 B4 */	stfs f0, 0x5b4(r30)
/* 80459458  B0 1E 06 0E */	sth r0, 0x60e(r30)
/* 8045945C  B0 1E 06 0E */	sth r0, 0x60e(r30)
/* 80459460  B0 DE 06 40 */	sth r6, 0x640(r30)
/* 80459464  4B C0 38 91 */	bl fqrand
/* 80459468  3C 80 80 64 */	lis r4, lit_3708@ha /* 0x806443DC@ha */
/* 8045946C  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 80459470  C0 44 43 DC */	lfs f2, lit_3708@l(r4)  /* 0x806443DC@l */
/* 80459474  38 00 00 04 */	li r0, 4
/* 80459478  C0 03 42 60 */	lfs f0, lit_472@l(r3)  /* 0x80644260@l */
/* 8045947C  39 61 00 20 */	addi r11, r1, 0x20
/* 80459480  EC 22 00 72 */	fmuls f1, f2, f1
/* 80459484  EC 00 08 2A */	fadds f0, f0, f1
/* 80459488  FC 00 00 1E */	fctiwz f0, f0
/* 8045948C  D8 01 00 08 */	stfd f0, 8(r1)
/* 80459490  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80459494  B0 7E 06 3E */	sth r3, 0x63e(r30)
/* 80459498  B0 1E 06 24 */	sth r0, 0x624(r30)
/* 8045949C  4B C4 1A 85 */	bl func_8009AF20
/* 804594A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804594A4  7C 08 03 A6 */	mtlr r0
/* 804594A8  38 21 00 20 */	addi r1, r1, 0x20
/* 804594AC  4E 80 00 20 */	blr 
