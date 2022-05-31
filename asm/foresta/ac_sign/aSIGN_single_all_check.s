lbl_804A2690:
/* 804A2690  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 804A2694  7C 08 02 A6 */	mflr r0
/* 804A2698  90 01 00 64 */	stw r0, 0x64(r1)
/* 804A269C  39 61 00 60 */	addi r11, r1, 0x60
/* 804A26A0  4B BF 88 29 */	bl func_8009AEC8
/* 804A26A4  7C 7C 1B 78 */	mr r28, r3
/* 804A26A8  3B A0 00 00 */	li r29, 0
/* 804A26AC  3B 60 00 00 */	li r27, 0
lbl_804A26B0:
/* 804A26B0  7F FC DA 14 */	add r31, r28, r27
/* 804A26B4  80 1F 02 40 */	lwz r0, 0x240(r31)
/* 804A26B8  2C 00 00 00 */	cmpwi r0, 0
/* 804A26BC  41 82 02 74 */	beq lbl_804A2930
/* 804A26C0  2C 00 00 01 */	cmpwi r0, 1
/* 804A26C4  40 82 00 BC */	bne lbl_804A2780
/* 804A26C8  AB DF 02 3C */	lha r30, 0x23c(r31)
/* 804A26CC  3C 00 43 30 */	lis r0, 0x4330
/* 804A26D0  A8 BF 02 3E */	lha r5, 0x23e(r31)
/* 804A26D4  3C 60 80 64 */	lis r3, lit_487@ha /* 0x80645C3C@ha */
/* 804A26D8  3C 80 80 64 */	lis r4, lit_958@ha /* 0x80645C70@ha */
/* 804A26DC  90 01 00 38 */	stw r0, 0x38(r1)
/* 804A26E0  7C BE 2A 14 */	add r5, r30, r5
/* 804A26E4  C8 23 5C 3C */	lfd f1, lit_487@l(r3)  /* 0x80645C3C@l */
/* 804A26E8  B0 BF 02 3C */	sth r5, 0x23c(r31)
/* 804A26EC  C0 44 5C 70 */	lfs f2, lit_958@l(r4)  /* 0x80645C70@l */
/* 804A26F0  AB 5F 02 3C */	lha r26, 0x23c(r31)
/* 804A26F4  6F 40 80 00 */	xoris r0, r26, 0x8000
/* 804A26F8  90 01 00 3C */	stw r0, 0x3c(r1)
/* 804A26FC  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 804A2700  EC 00 08 28 */	fsubs f0, f0, f1
/* 804A2704  EC 22 00 32 */	fmuls f1, f2, f0
/* 804A2708  4B F6 61 75 */	bl sinf_table
/* 804A270C  C0 1F 02 38 */	lfs f0, 0x238(r31)
/* 804A2710  3C 60 80 64 */	lis r3, lit_959@ha /* 0x80645C74@ha */
/* 804A2714  7F C0 07 35 */	extsh. r0, r30
/* 804A2718  EC 00 00 72 */	fmuls f0, f0, f1
/* 804A271C  C0 23 5C 74 */	lfs f1, lit_959@l(r3)  /* 0x80645C74@l */
/* 804A2720  D0 1F 02 30 */	stfs f0, 0x230(r31)
/* 804A2724  C0 1F 02 30 */	lfs f0, 0x230(r31)
/* 804A2728  EC 01 00 28 */	fsubs f0, f1, f0
/* 804A272C  D0 1F 02 2C */	stfs f0, 0x22c(r31)
/* 804A2730  C0 1F 02 30 */	lfs f0, 0x230(r31)
/* 804A2734  EC 00 08 2A */	fadds f0, f0, f1
/* 804A2738  D0 1F 02 30 */	stfs f0, 0x230(r31)
/* 804A273C  C0 1F 02 2C */	lfs f0, 0x22c(r31)
/* 804A2740  D0 1F 02 34 */	stfs f0, 0x234(r31)
/* 804A2744  40 80 00 0C */	bge lbl_804A2750
/* 804A2748  7F 40 07 35 */	extsh. r0, r26
/* 804A274C  40 80 00 14 */	bge lbl_804A2760
lbl_804A2750:
/* 804A2750  2C 1E 80 00 */	cmpwi r30, -32768
/* 804A2754  40 80 00 2C */	bge lbl_804A2780
/* 804A2758  2C 1A 80 00 */	cmpwi r26, -32768
/* 804A275C  41 80 00 24 */	blt lbl_804A2780
lbl_804A2760:
/* 804A2760  3C 60 80 64 */	lis r3, lit_960@ha /* 0x80645C78@ha */
/* 804A2764  C0 3F 02 38 */	lfs f1, 0x238(r31)
/* 804A2768  C0 03 5C 78 */	lfs f0, lit_960@l(r3)  /* 0x80645C78@l */
/* 804A276C  EC 01 00 32 */	fmuls f0, f1, f0
/* 804A2770  D0 1F 02 38 */	stfs f0, 0x238(r31)
/* 804A2774  A8 7F 02 3E */	lha r3, 0x23e(r31)
/* 804A2778  38 03 02 EE */	addi r0, r3, 0x2ee
/* 804A277C  B0 1F 02 3E */	sth r0, 0x23e(r31)
lbl_804A2780:
/* 804A2780  80 1F 02 40 */	lwz r0, 0x240(r31)
/* 804A2784  2C 00 00 02 */	cmpwi r0, 2
/* 804A2788  40 82 00 B0 */	bne lbl_804A2838
/* 804A278C  3C C0 80 64 */	lis r6, lit_484@ha /* 0x80645C34@ha */
/* 804A2790  3C A0 80 64 */	lis r5, lit_961@ha /* 0x80645C7C@ha */
/* 804A2794  3C 80 80 64 */	lis r4, lit_962@ha /* 0x80645C80@ha */
/* 804A2798  3C 60 80 64 */	lis r3, lit_963@ha /* 0x80645C84@ha */
/* 804A279C  38 E6 5C 34 */	addi r7, r6, lit_484@l /* 0x80645C34@l */
/* 804A27A0  38 C5 5C 7C */	addi r6, r5, lit_961@l /* 0x80645C7C@l */
/* 804A27A4  38 A4 5C 80 */	addi r5, r4, lit_962@l /* 0x80645C80@l */
/* 804A27A8  38 83 5C 84 */	addi r4, r3, lit_963@l /* 0x80645C84@l */
/* 804A27AC  3B DF 02 2C */	addi r30, r31, 0x22c
/* 804A27B0  C0 27 00 00 */	lfs f1, 0(r7)
/* 804A27B4  C0 46 00 00 */	lfs f2, 0(r6)
/* 804A27B8  7F C3 F3 78 */	mr r3, r30
/* 804A27BC  C0 65 00 00 */	lfs f3, 0(r5)
/* 804A27C0  C0 84 00 00 */	lfs f4, 0(r4)
/* 804A27C4  4B F1 89 ED */	bl add_calc
/* 804A27C8  3C C0 80 64 */	lis r6, lit_484@ha /* 0x80645C34@ha */
/* 804A27CC  3C A0 80 64 */	lis r5, lit_961@ha /* 0x80645C7C@ha */
/* 804A27D0  3C 80 80 64 */	lis r4, lit_962@ha /* 0x80645C80@ha */
/* 804A27D4  3C 60 80 64 */	lis r3, lit_963@ha /* 0x80645C84@ha */
/* 804A27D8  38 E6 5C 34 */	addi r7, r6, lit_484@l /* 0x80645C34@l */
/* 804A27DC  38 C5 5C 7C */	addi r6, r5, lit_961@l /* 0x80645C7C@l */
/* 804A27E0  38 A4 5C 80 */	addi r5, r4, lit_962@l /* 0x80645C80@l */
/* 804A27E4  38 83 5C 84 */	addi r4, r3, lit_963@l /* 0x80645C84@l */
/* 804A27E8  C0 27 00 00 */	lfs f1, 0(r7)
/* 804A27EC  38 7E 00 04 */	addi r3, r30, 4
/* 804A27F0  C0 46 00 00 */	lfs f2, 0(r6)
/* 804A27F4  C0 65 00 00 */	lfs f3, 0(r5)
/* 804A27F8  C0 84 00 00 */	lfs f4, 0(r4)
/* 804A27FC  4B F1 89 B5 */	bl add_calc
/* 804A2800  3C C0 80 64 */	lis r6, lit_484@ha /* 0x80645C34@ha */
/* 804A2804  3C A0 80 64 */	lis r5, lit_961@ha /* 0x80645C7C@ha */
/* 804A2808  3C 80 80 64 */	lis r4, lit_962@ha /* 0x80645C80@ha */
/* 804A280C  3C 60 80 64 */	lis r3, lit_963@ha /* 0x80645C84@ha */
/* 804A2810  38 E6 5C 34 */	addi r7, r6, lit_484@l /* 0x80645C34@l */
/* 804A2814  38 C5 5C 7C */	addi r6, r5, lit_961@l /* 0x80645C7C@l */
/* 804A2818  38 A4 5C 80 */	addi r5, r4, lit_962@l /* 0x80645C80@l */
/* 804A281C  38 83 5C 84 */	addi r4, r3, lit_963@l /* 0x80645C84@l */
/* 804A2820  C0 27 00 00 */	lfs f1, 0(r7)
/* 804A2824  38 7E 00 08 */	addi r3, r30, 8
/* 804A2828  C0 46 00 00 */	lfs f2, 0(r6)
/* 804A282C  C0 65 00 00 */	lfs f3, 0(r5)
/* 804A2830  C0 84 00 00 */	lfs f4, 0(r4)
/* 804A2834  4B F1 89 7D */	bl add_calc
lbl_804A2838:
/* 804A2838  3C 60 80 64 */	lis r3, lit_484@ha /* 0x80645C34@ha */
/* 804A283C  C0 3F 02 38 */	lfs f1, 0x238(r31)
/* 804A2840  C0 03 5C 34 */	lfs f0, lit_484@l(r3)  /* 0x80645C34@l */
/* 804A2844  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A2848  4C 41 13 82 */	cror 2, 1, 2
/* 804A284C  40 82 00 08 */	bne lbl_804A2854
/* 804A2850  48 00 00 08 */	b lbl_804A2858
lbl_804A2854:
/* 804A2854  FC 20 08 50 */	fneg f1, f1
lbl_804A2858:
/* 804A2858  3C 60 80 64 */	lis r3, lit_964@ha /* 0x80645C88@ha */
/* 804A285C  C0 03 5C 88 */	lfs f0, lit_964@l(r3)  /* 0x80645C88@l */
/* 804A2860  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A2864  40 80 00 58 */	bge lbl_804A28BC
/* 804A2868  80 1F 02 40 */	lwz r0, 0x240(r31)
/* 804A286C  2C 00 00 01 */	cmpwi r0, 1
/* 804A2870  40 82 00 4C */	bne lbl_804A28BC
/* 804A2874  80 9F 02 1C */	lwz r4, 0x21c(r31)
/* 804A2878  38 61 00 2C */	addi r3, r1, 0x2c
/* 804A287C  80 BF 02 18 */	lwz r5, 0x218(r31)
/* 804A2880  80 DF 02 24 */	lwz r6, 0x224(r31)
/* 804A2884  80 FF 02 20 */	lwz r7, 0x220(r31)
/* 804A2888  4B F0 34 6D */	bl mFI_BkandUtNum2CenterWpos
/* 804A288C  80 E1 00 2C */	lwz r7, 0x2c(r1)
/* 804A2890  38 81 00 14 */	addi r4, r1, 0x14
/* 804A2894  80 C1 00 30 */	lwz r6, 0x30(r1)
/* 804A2898  38 60 09 20 */	li r3, 0x920
/* 804A289C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804A28A0  38 A0 00 01 */	li r5, 1
/* 804A28A4  90 E1 00 14 */	stw r7, 0x14(r1)
/* 804A28A8  90 C1 00 18 */	stw r6, 0x18(r1)
/* 804A28AC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804A28B0  4B F0 4F 81 */	bl mFI_SetFG_common
/* 804A28B4  38 00 00 00 */	li r0, 0
/* 804A28B8  90 1F 02 40 */	stw r0, 0x240(r31)
lbl_804A28BC:
/* 804A28BC  3C 60 80 64 */	lis r3, lit_484@ha /* 0x80645C34@ha */
/* 804A28C0  C0 3F 02 2C */	lfs f1, 0x22c(r31)
/* 804A28C4  C0 03 5C 34 */	lfs f0, lit_484@l(r3)  /* 0x80645C34@l */
/* 804A28C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A28CC  4C 40 13 82 */	cror 2, 0, 2
/* 804A28D0  40 82 00 60 */	bne lbl_804A2930
/* 804A28D4  80 1F 02 40 */	lwz r0, 0x240(r31)
/* 804A28D8  2C 00 00 02 */	cmpwi r0, 2
/* 804A28DC  40 82 00 54 */	bne lbl_804A2930
/* 804A28E0  80 9F 02 1C */	lwz r4, 0x21c(r31)
/* 804A28E4  38 61 00 20 */	addi r3, r1, 0x20
/* 804A28E8  80 BF 02 18 */	lwz r5, 0x218(r31)
/* 804A28EC  80 DF 02 24 */	lwz r6, 0x224(r31)
/* 804A28F0  80 FF 02 20 */	lwz r7, 0x220(r31)
/* 804A28F4  4B F0 34 01 */	bl mFI_BkandUtNum2CenterWpos
/* 804A28F8  80 C1 00 20 */	lwz r6, 0x20(r1)
/* 804A28FC  3C 60 80 64 */	lis r3, lit_484@ha /* 0x80645C34@ha */
/* 804A2900  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 804A2904  38 83 5C 34 */	addi r4, r3, lit_484@l /* 0x80645C34@l */
/* 804A2908  80 01 00 28 */	lwz r0, 0x28(r1)
/* 804A290C  38 61 00 08 */	addi r3, r1, 8
/* 804A2910  90 C1 00 08 */	stw r6, 8(r1)
/* 804A2914  C0 24 00 00 */	lfs f1, 0(r4)
/* 804A2918  90 A1 00 0C */	stw r5, 0xc(r1)
/* 804A291C  90 01 00 10 */	stw r0, 0x10(r1)
/* 804A2920  4B EE D0 79 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 804A2924  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 804A2928  38 00 00 00 */	li r0, 0
/* 804A292C  90 1F 02 40 */	stw r0, 0x240(r31)
lbl_804A2930:
/* 804A2930  3B BD 00 01 */	addi r29, r29, 1
/* 804A2934  3B 7B 00 2C */	addi r27, r27, 0x2c
/* 804A2938  2C 1D 00 0A */	cmpwi r29, 0xa
/* 804A293C  41 80 FD 74 */	blt lbl_804A26B0
/* 804A2940  39 61 00 60 */	addi r11, r1, 0x60
/* 804A2944  4B BF 85 D1 */	bl func_8009AF14
/* 804A2948  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804A294C  7C 08 03 A6 */	mtlr r0
/* 804A2950  38 21 00 60 */	addi r1, r1, 0x60
/* 804A2954  4E 80 00 20 */	blr 
