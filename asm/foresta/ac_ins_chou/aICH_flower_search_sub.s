lbl_8059863C:
/* 8059863C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80598640  7C 08 02 A6 */	mflr r0
/* 80598644  90 01 00 54 */	stw r0, 0x54(r1)
/* 80598648  39 61 00 50 */	addi r11, r1, 0x50
/* 8059864C  4B B0 28 7D */	bl func_8009AEC8
/* 80598650  7C 7A 1B 78 */	mr r26, r3
/* 80598654  7C 9B 23 78 */	mr r27, r4
/* 80598658  88 63 00 08 */	lbz r3, 8(r3)
/* 8059865C  3B 80 00 00 */	li r28, 0
/* 80598660  88 9A 00 09 */	lbz r4, 9(r26)
/* 80598664  83 DA 02 38 */	lwz r30, 0x238(r26)
/* 80598668  7C 63 07 74 */	extsb r3, r3
/* 8059866C  83 BA 02 3C */	lwz r29, 0x23c(r26)
/* 80598670  7C 84 07 74 */	extsb r4, r4
/* 80598674  4B E0 EA E1 */	bl mFI_BkNumtoUtFGTop
/* 80598678  2C 1B 00 02 */	cmpwi r27, 2
/* 8059867C  7C 7F 1B 78 */	mr r31, r3
/* 80598680  40 82 00 68 */	bne lbl_805986E8
/* 80598684  4B AC 46 71 */	bl fqrand
/* 80598688  3C 80 80 65 */	lis r4, lit_475@ha /* 0x80649ED4@ha */
/* 8059868C  3C 60 80 6C */	lis r3, add_table2@ha /* 0x806C3224@ha */
/* 80598690  C0 04 9E D4 */	lfs f0, lit_475@l(r4)  /* 0x80649ED4@l */
/* 80598694  38 63 32 24 */	addi r3, r3, add_table2@l /* 0x806C3224@l */
/* 80598698  EC 00 00 72 */	fmuls f0, f0, f1
/* 8059869C  FC 00 00 1E */	fctiwz f0, f0
/* 805986A0  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 805986A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805986A8  54 00 10 3A */	slwi r0, r0, 2
/* 805986AC  7C 03 00 2E */	lwzx r0, r3, r0
/* 805986B0  7F DE 02 14 */	add r30, r30, r0
/* 805986B4  4B AC 46 41 */	bl fqrand
/* 805986B8  3C 80 80 65 */	lis r4, lit_475@ha /* 0x80649ED4@ha */
/* 805986BC  3C 60 80 6C */	lis r3, add_table2@ha /* 0x806C3224@ha */
/* 805986C0  C0 04 9E D4 */	lfs f0, lit_475@l(r4)  /* 0x80649ED4@l */
/* 805986C4  38 63 32 24 */	addi r3, r3, add_table2@l /* 0x806C3224@l */
/* 805986C8  EC 00 00 72 */	fmuls f0, f0, f1
/* 805986CC  FC 00 00 1E */	fctiwz f0, f0
/* 805986D0  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 805986D4  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 805986D8  54 00 10 3A */	slwi r0, r0, 2
/* 805986DC  7C 03 00 2E */	lwzx r0, r3, r0
/* 805986E0  7F BD 02 14 */	add r29, r29, r0
/* 805986E4  48 00 00 64 */	b lbl_80598748
lbl_805986E8:
/* 805986E8  4B AC 46 0D */	bl fqrand
/* 805986EC  3C 80 80 65 */	lis r4, lit_475@ha /* 0x80649ED4@ha */
/* 805986F0  3C 60 80 6C */	lis r3, add_table@ha /* 0x806C3218@ha */
/* 805986F4  C0 04 9E D4 */	lfs f0, lit_475@l(r4)  /* 0x80649ED4@l */
/* 805986F8  38 63 32 18 */	addi r3, r3, add_table@l /* 0x806C3218@l */
/* 805986FC  EC 00 00 72 */	fmuls f0, f0, f1
/* 80598700  FC 00 00 1E */	fctiwz f0, f0
/* 80598704  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80598708  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8059870C  54 00 10 3A */	slwi r0, r0, 2
/* 80598710  7C 03 00 2E */	lwzx r0, r3, r0
/* 80598714  7F DE 02 14 */	add r30, r30, r0
/* 80598718  4B AC 45 DD */	bl fqrand
/* 8059871C  3C 80 80 65 */	lis r4, lit_475@ha /* 0x80649ED4@ha */
/* 80598720  3C 60 80 6C */	lis r3, add_table@ha /* 0x806C3218@ha */
/* 80598724  C0 04 9E D4 */	lfs f0, lit_475@l(r4)  /* 0x80649ED4@l */
/* 80598728  38 63 32 18 */	addi r3, r3, add_table@l /* 0x806C3218@l */
/* 8059872C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80598730  FC 00 00 1E */	fctiwz f0, f0
/* 80598734  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80598738  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8059873C  54 00 10 3A */	slwi r0, r0, 2
/* 80598740  7C 03 00 2E */	lwzx r0, r3, r0
/* 80598744  7F BD 02 14 */	add r29, r29, r0
lbl_80598748:
/* 80598748  2C 1E 00 01 */	cmpwi r30, 1
/* 8059874C  41 80 00 0C */	blt lbl_80598758
/* 80598750  2C 1E 00 0E */	cmpwi r30, 0xe
/* 80598754  40 81 00 08 */	ble lbl_8059875C
lbl_80598758:
/* 80598758  83 DA 02 38 */	lwz r30, 0x238(r26)
lbl_8059875C:
/* 8059875C  2C 1D 00 01 */	cmpwi r29, 1
/* 80598760  41 80 00 0C */	blt lbl_8059876C
/* 80598764  2C 1D 00 0E */	cmpwi r29, 0xe
/* 80598768  40 81 00 08 */	ble lbl_80598770
lbl_8059876C:
/* 8059876C  83 BA 02 3C */	lwz r29, 0x23c(r26)
lbl_80598770:
/* 80598770  2C 1B 00 00 */	cmpwi r27, 0
/* 80598774  41 82 00 20 */	beq lbl_80598794
/* 80598778  57 C3 08 3C */	slwi r3, r30, 1
/* 8059877C  57 A0 28 34 */	slwi r0, r29, 5
/* 80598780  7C 03 02 14 */	add r0, r3, r0
/* 80598784  7C 7F 02 2E */	lhzx r3, r31, r0
/* 80598788  4B E1 17 C1 */	bl mFI_CheckFGNpcOn
/* 8059878C  2C 03 00 01 */	cmpwi r3, 1
/* 80598790  40 82 00 A0 */	bne lbl_80598830
lbl_80598794:
/* 80598794  88 9A 00 08 */	lbz r4, 8(r26)
/* 80598798  7F C6 F3 78 */	mr r6, r30
/* 8059879C  88 BA 00 09 */	lbz r5, 9(r26)
/* 805987A0  7F A7 EB 78 */	mr r7, r29
/* 805987A4  38 61 00 14 */	addi r3, r1, 0x14
/* 805987A8  7C 84 07 74 */	extsb r4, r4
/* 805987AC  7C A5 07 74 */	extsb r5, r5
/* 805987B0  4B E0 D5 45 */	bl mFI_BkandUtNum2CenterWpos
/* 805987B4  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 805987B8  3C 60 80 65 */	lis r3, lit_447@ha /* 0x80649ECC@ha */
/* 805987BC  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 805987C0  38 83 9E CC */	addi r4, r3, lit_447@l /* 0x80649ECC@l */
/* 805987C4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 805987C8  38 61 00 08 */	addi r3, r1, 8
/* 805987CC  90 C1 00 08 */	stw r6, 8(r1)
/* 805987D0  C0 24 00 00 */	lfs f1, 0(r4)
/* 805987D4  90 A1 00 0C */	stw r5, 0xc(r1)
/* 805987D8  90 01 00 10 */	stw r0, 0x10(r1)
/* 805987DC  4B DF 70 45 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos
/* 805987E0  C0 1A 00 2C */	lfs f0, 0x2c(r26)
/* 805987E4  3C 60 80 65 */	lis r3, lit_476@ha /* 0x80649ED8@ha */
/* 805987E8  EC 21 00 28 */	fsubs f1, f1, f0
/* 805987EC  C0 03 9E D8 */	lfs f0, lit_476@l(r3)  /* 0x80649ED8@l */
/* 805987F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805987F4  40 80 00 24 */	bge lbl_80598818
/* 805987F8  93 DA 02 38 */	stw r30, 0x238(r26)
/* 805987FC  3B 80 00 01 */	li r28, 1
/* 80598800  93 BA 02 3C */	stw r29, 0x23c(r26)
/* 80598804  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80598808  D0 1A 02 44 */	stfs f0, 0x244(r26)
/* 8059880C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80598810  D0 1A 02 48 */	stfs f0, 0x248(r26)
/* 80598814  48 00 00 1C */	b lbl_80598830
lbl_80598818:
/* 80598818  2C 1B 00 02 */	cmpwi r27, 2
/* 8059881C  41 82 00 14 */	beq lbl_80598830
/* 80598820  7F 43 D3 78 */	mr r3, r26
/* 80598824  38 80 00 02 */	li r4, 2
/* 80598828  4B FF FE 15 */	bl aICH_flower_search_sub
/* 8059882C  7C 7C 1B 78 */	mr r28, r3
lbl_80598830:
/* 80598830  7F 83 E3 78 */	mr r3, r28
/* 80598834  39 61 00 50 */	addi r11, r1, 0x50
/* 80598838  4B B0 26 DD */	bl func_8009AF14
/* 8059883C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80598840  7C 08 03 A6 */	mtlr r0
/* 80598844  38 21 00 50 */	addi r1, r1, 0x50
/* 80598848  4E 80 00 20 */	blr 