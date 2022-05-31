lbl_805C27BC:
/* 805C27BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805C27C0  7C 08 02 A6 */	mflr r0
/* 805C27C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805C27C8  39 61 00 20 */	addi r11, r1, 0x20
/* 805C27CC  4B AD 87 05 */	bl func_8009AED0
/* 805C27D0  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805C27D4  3C 60 80 65 */	lis r3, lit_618@ha /* 0x8064ACF0@ha */
/* 805C27D8  C0 03 AC F0 */	lfs f0, lit_618@l(r3)  /* 0x8064ACF0@l */
/* 805C27DC  83 E4 09 94 */	lwz r31, 0x994(r4)
/* 805C27E0  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 805C27E4  FC 20 0A 10 */	fabs f1, f1
/* 805C27E8  FC 20 08 18 */	frsp f1, f1
/* 805C27EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C27F0  40 80 00 80 */	bge lbl_805C2870
/* 805C27F4  3C 60 80 65 */	lis r3, lit_619@ha /* 0x8064ACF4@ha */
/* 805C27F8  3C 80 80 65 */	lis r4, lit_620@ha /* 0x8064ACFC@ha */
/* 805C27FC  38 A3 AC F4 */	addi r5, r3, lit_619@l /* 0x8064ACF4@l */
/* 805C2800  C8 84 AC FC */	lfd f4, lit_620@l(r4)  /* 0x8064ACFC@l */
/* 805C2804  C8 A5 00 00 */	lfd f5, 0(r5)
/* 805C2808  3C 60 80 65 */	lis r3, lit_621@ha /* 0x8064AD04@ha */
/* 805C280C  C8 63 AD 04 */	lfd f3, lit_621@l(r3)  /* 0x8064AD04@l */
/* 805C2810  FC 40 28 34 */	frsqrte f2, f5
/* 805C2814  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 805C2818  FC 22 00 B2 */	fmul f1, f2, f2
/* 805C281C  FC 44 00 B2 */	fmul f2, f4, f2
/* 805C2820  FC 25 00 72 */	fmul f1, f5, f1
/* 805C2824  FC 23 08 28 */	fsub f1, f3, f1
/* 805C2828  FC 42 00 72 */	fmul f2, f2, f1
/* 805C282C  FC 22 00 B2 */	fmul f1, f2, f2
/* 805C2830  FC 44 00 B2 */	fmul f2, f4, f2
/* 805C2834  FC 25 00 72 */	fmul f1, f5, f1
/* 805C2838  FC 23 08 28 */	fsub f1, f3, f1
/* 805C283C  FC 42 00 72 */	fmul f2, f2, f1
/* 805C2840  FC 22 00 B2 */	fmul f1, f2, f2
/* 805C2844  FC 44 00 B2 */	fmul f2, f4, f2
/* 805C2848  FC 25 00 72 */	fmul f1, f5, f1
/* 805C284C  FC 23 08 28 */	fsub f1, f3, f1
/* 805C2850  FC 22 00 72 */	fmul f1, f2, f1
/* 805C2854  FC 25 00 72 */	fmul f1, f5, f1
/* 805C2858  FC 20 08 18 */	frsp f1, f1
/* 805C285C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 805C2860  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 805C2864  EC 00 00 72 */	fmuls f0, f0, f1
/* 805C2868  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 805C286C  48 00 01 18 */	b lbl_805C2984
lbl_805C2870:
/* 805C2870  3C 60 80 65 */	lis r3, lit_622@ha /* 0x8064AD0C@ha */
/* 805C2874  C0 03 AD 0C */	lfs f0, lit_622@l(r3)  /* 0x8064AD0C@l */
/* 805C2878  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C287C  40 81 01 08 */	ble lbl_805C2984
/* 805C2880  3C 60 80 65 */	lis r3, lit_620@ha /* 0x8064ACFC@ha */
/* 805C2884  3C 80 80 65 */	lis r4, lit_621@ha /* 0x8064AD04@ha */
/* 805C2888  38 A3 AC FC */	addi r5, r3, lit_620@l /* 0x8064ACFC@l */
/* 805C288C  C8 84 AD 04 */	lfd f4, lit_621@l(r4)  /* 0x8064AD04@l */
/* 805C2890  C8 C5 00 00 */	lfd f6, 0(r5)
/* 805C2894  3C 60 80 65 */	lis r3, lit_623@ha /* 0x8064AD10@ha */
/* 805C2898  C8 A5 00 00 */	lfd f5, 0(r5)
/* 805C289C  FC 60 30 34 */	frsqrte f3, f6
/* 805C28A0  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 805C28A4  C0 03 AD 10 */	lfs f0, lit_623@l(r3)  /* 0x8064AD10@l */
/* 805C28A8  FC 43 00 F2 */	fmul f2, f3, f3
/* 805C28AC  FC 65 00 F2 */	fmul f3, f5, f3
/* 805C28B0  FC 46 00 B2 */	fmul f2, f6, f2
/* 805C28B4  FC 44 10 28 */	fsub f2, f4, f2
/* 805C28B8  FC 63 00 B2 */	fmul f3, f3, f2
/* 805C28BC  FC 43 00 F2 */	fmul f2, f3, f3
/* 805C28C0  FC 65 00 F2 */	fmul f3, f5, f3
/* 805C28C4  FC 46 00 B2 */	fmul f2, f6, f2
/* 805C28C8  FC 44 10 28 */	fsub f2, f4, f2
/* 805C28CC  FC 63 00 B2 */	fmul f3, f3, f2
/* 805C28D0  FC 43 00 F2 */	fmul f2, f3, f3
/* 805C28D4  FC 65 00 F2 */	fmul f3, f5, f3
/* 805C28D8  FC 46 00 B2 */	fmul f2, f6, f2
/* 805C28DC  FC 44 10 28 */	fsub f2, f4, f2
/* 805C28E0  FC 43 00 B2 */	fmul f2, f3, f2
/* 805C28E4  FC 46 00 B2 */	fmul f2, f6, f2
/* 805C28E8  FC 40 10 18 */	frsp f2, f2
/* 805C28EC  D0 41 00 08 */	stfs f2, 8(r1)
/* 805C28F0  C0 41 00 08 */	lfs f2, 8(r1)
/* 805C28F4  EC 21 00 B2 */	fmuls f1, f1, f2
/* 805C28F8  D0 3F 00 10 */	stfs f1, 0x10(r31)
/* 805C28FC  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 805C2900  FC 20 0A 10 */	fabs f1, f1
/* 805C2904  FC 20 08 18 */	frsp f1, f1
/* 805C2908  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C290C  40 80 00 78 */	bge lbl_805C2984
/* 805C2910  88 BF 00 03 */	lbz r5, 3(r31)
/* 805C2914  3C 60 80 65 */	lis r3, data_8064ACDC@ha /* 0x8064ACDC@ha */
/* 805C2918  88 9F 00 04 */	lbz r4, 4(r31)
/* 805C291C  38 00 00 04 */	li r0, 4
/* 805C2920  C0 03 AC DC */	lfs f0, data_8064ACDC@l(r3)  /* 0x8064ACDC@l */
/* 805C2924  98 9F 00 03 */	stb r4, 3(r31)
/* 805C2928  98 BF 00 04 */	stb r5, 4(r31)
/* 805C292C  98 1F 00 02 */	stb r0, 2(r31)
/* 805C2930  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 805C2934  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C2938  40 80 00 10 */	bge lbl_805C2948
/* 805C293C  38 00 00 00 */	li r0, 0
/* 805C2940  98 1F 00 05 */	stb r0, 5(r31)
/* 805C2944  48 00 00 18 */	b lbl_805C295C
lbl_805C2948:
/* 805C2948  88 1F 00 03 */	lbz r0, 3(r31)
/* 805C294C  7C 7F 02 14 */	add r3, r31, r0
/* 805C2950  88 63 00 08 */	lbz r3, 8(r3)
/* 805C2954  38 03 FF FF */	addi r0, r3, -1
/* 805C2958  98 1F 00 05 */	stb r0, 5(r31)
lbl_805C295C:
/* 805C295C  88 BF 00 03 */	lbz r5, 3(r31)
/* 805C2960  7F E3 FB 78 */	mr r3, r31
/* 805C2964  38 9F 00 14 */	addi r4, r31, 0x14
/* 805C2968  4B FF F8 01 */	bl mAD_pile_init
/* 805C296C  3C 60 80 65 */	lis r3, lit_624@ha /* 0x8064AD14@ha */
/* 805C2970  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 805C2974  C0 03 AD 14 */	lfs f0, lit_624@l(r3)  /* 0x8064AD14@l */
/* 805C2978  EC 01 00 32 */	fmuls f0, f1, f0
/* 805C297C  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 805C2980  48 00 00 48 */	b lbl_805C29C8
lbl_805C2984:
/* 805C2984  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 805C2988  3C 60 80 65 */	lis r3, lit_625@ha /* 0x8064AD18@ha */
/* 805C298C  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 805C2990  3B A3 AD 18 */	addi r29, r3, lit_625@l /* 0x8064AD18@l */
/* 805C2994  3B 80 00 00 */	li r28, 0
/* 805C2998  3B C0 00 00 */	li r30, 0
/* 805C299C  EC 01 00 2A */	fadds f0, f1, f0
/* 805C29A0  D0 1F 00 0C */	stfs f0, 0xc(r31)
lbl_805C29A4:
/* 805C29A4  7C 7F F2 14 */	add r3, r31, r30
/* 805C29A8  C0 5D 00 00 */	lfs f2, 0(r29)
/* 805C29AC  C0 23 00 20 */	lfs f1, 0x20(r3)
/* 805C29B0  38 63 00 14 */	addi r3, r3, 0x14
/* 805C29B4  4B DF 82 B5 */	bl chase_f
/* 805C29B8  3B 9C 00 01 */	addi r28, r28, 1
/* 805C29BC  3B DE 00 04 */	addi r30, r30, 4
/* 805C29C0  2C 1C 00 03 */	cmpwi r28, 3
/* 805C29C4  41 80 FF E0 */	blt lbl_805C29A4
lbl_805C29C8:
/* 805C29C8  39 61 00 20 */	addi r11, r1, 0x20
/* 805C29CC  4B AD 85 51 */	bl func_8009AF1C
/* 805C29D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805C29D4  7C 08 03 A6 */	mtlr r0
/* 805C29D8  38 21 00 20 */	addi r1, r1, 0x20
/* 805C29DC  4E 80 00 20 */	blr 
