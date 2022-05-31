lbl_805E2780:
/* 805E2780  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805E2784  7C 08 02 A6 */	mflr r0
/* 805E2788  90 01 00 44 */	stw r0, 0x44(r1)
/* 805E278C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 805E2790  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 805E2794  39 61 00 30 */	addi r11, r1, 0x30
/* 805E2798  4B AB 87 3D */	bl func_8009AED4
/* 805E279C  7C 7D 1B 78 */	mr r29, r3
/* 805E27A0  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805E27A4  A8 03 00 04 */	lha r0, 4(r3)
/* 805E27A8  2C 00 00 03 */	cmpwi r0, 3
/* 805E27AC  40 82 02 6C */	bne lbl_805E2A18
/* 805E27B0  80 A3 09 88 */	lwz r5, 0x988(r3)
/* 805E27B4  3C 60 80 65 */	lis r3, lit_1140@ha /* 0x8064B44C@ha */
/* 805E27B8  C0 63 B4 4C */	lfs f3, lit_1140@l(r3)  /* 0x8064B44C@l */
/* 805E27BC  C0 05 00 10 */	lfs f0, 0x10(r5)
/* 805E27C0  83 E4 00 00 */	lwz r31, 0(r4)
/* 805E27C4  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 805E27C8  8B C5 03 E2 */	lbz r30, 0x3e2(r5)
/* 805E27CC  41 80 02 4C */	blt lbl_805E2A18
/* 805E27D0  3C 60 80 65 */	lis r3, lit_1141@ha /* 0x8064B450@ha */
/* 805E27D4  C0 23 B4 50 */	lfs f1, lit_1141@l(r3)  /* 0x8064B450@l */
/* 805E27D8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 805E27DC  4C 41 13 82 */	cror 2, 1, 2
/* 805E27E0  40 82 00 08 */	bne lbl_805E27E8
/* 805E27E4  48 00 02 34 */	b lbl_805E2A18
lbl_805E27E8:
/* 805E27E8  3C 60 80 65 */	lis r3, lit_1142@ha /* 0x8064B454@ha */
/* 805E27EC  C0 23 B4 54 */	lfs f1, lit_1142@l(r3)  /* 0x8064B454@l */
/* 805E27F0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 805E27F4  40 80 00 6C */	bge lbl_805E2860
/* 805E27F8  3C 80 80 65 */	lis r4, lit_1143@ha /* 0x8064B458@ha */
/* 805E27FC  EC 20 18 28 */	fsubs f1, f0, f3
/* 805E2800  C0 44 B4 58 */	lfs f2, lit_1143@l(r4)  /* 0x8064B458@l */
/* 805E2804  3C A0 80 65 */	lis r5, lit_1145@ha /* 0x8064B460@ha */
/* 805E2808  3C 60 80 65 */	lis r3, lit_1146@ha /* 0x8064B464@ha */
/* 805E280C  3C 80 80 65 */	lis r4, lit_775@ha /* 0x8064B420@ha */
/* 805E2810  EC C2 00 72 */	fmuls f6, f2, f1
/* 805E2814  C0 43 B4 64 */	lfs f2, lit_1146@l(r3)  /* 0x8064B464@l */
/* 805E2818  3C 60 80 65 */	lis r3, lit_803@ha /* 0x8064B430@ha */
/* 805E281C  C0 23 B4 30 */	lfs f1, lit_803@l(r3)  /* 0x8064B430@l */
/* 805E2820  3C 60 80 65 */	lis r3, lit_1144@ha /* 0x8064B45C@ha */
/* 805E2824  EC 82 01 B2 */	fmuls f4, f2, f6
/* 805E2828  EC 43 01 B2 */	fmuls f2, f3, f6
/* 805E282C  C0 A5 B4 60 */	lfs f5, lit_1145@l(r5)  /* 0x8064B460@l */
/* 805E2830  C0 64 B4 20 */	lfs f3, lit_775@l(r4)  /* 0x8064B420@l */
/* 805E2834  EC 21 01 B2 */	fmuls f1, f1, f6
/* 805E2838  EC 85 20 2A */	fadds f4, f5, f4
/* 805E283C  C0 A3 B4 5C */	lfs f5, lit_1144@l(r3)  /* 0x8064B45C@l */
/* 805E2840  EC 43 10 2A */	fadds f2, f3, f2
/* 805E2844  EC 65 01 32 */	fmuls f3, f5, f4
/* 805E2848  EC 25 00 72 */	fmuls f1, f5, f1
/* 805E284C  EC 45 00 B2 */	fmuls f2, f5, f2
/* 805E2850  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 805E2854  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 805E2858  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 805E285C  48 00 00 7C */	b lbl_805E28D8
lbl_805E2860:
/* 805E2860  3C 60 80 65 */	lis r3, lit_1147@ha /* 0x8064B468@ha */
/* 805E2864  EC 20 08 28 */	fsubs f1, f0, f1
/* 805E2868  C0 43 B4 68 */	lfs f2, lit_1147@l(r3)  /* 0x8064B468@l */
/* 805E286C  3C A0 80 65 */	lis r5, lit_802@ha /* 0x8064B42C@ha */
/* 805E2870  C0 65 B4 2C */	lfs f3, lit_802@l(r5)  /* 0x8064B42C@l */
/* 805E2874  3C A0 80 65 */	lis r5, lit_1148@ha /* 0x8064B46C@ha */
/* 805E2878  EC E2 00 72 */	fmuls f7, f2, f1
/* 805E287C  3C 80 80 65 */	lis r4, lit_1150@ha /* 0x8064B474@ha */
/* 805E2880  3C 60 80 65 */	lis r3, lit_801@ha /* 0x8064B428@ha */
/* 805E2884  C0 23 B4 28 */	lfs f1, lit_801@l(r3)  /* 0x8064B428@l */
/* 805E2888  3C 60 80 65 */	lis r3, lit_803@ha /* 0x8064B430@ha */
/* 805E288C  C0 44 B4 74 */	lfs f2, lit_1150@l(r4)  /* 0x8064B474@l */
/* 805E2890  3C 80 80 65 */	lis r4, lit_1149@ha /* 0x8064B470@ha */
/* 805E2894  EC A3 01 F2 */	fmuls f5, f3, f7
/* 805E2898  EC 62 01 F2 */	fmuls f3, f2, f7
/* 805E289C  C0 C5 B4 6C */	lfs f6, lit_1148@l(r5)  /* 0x8064B46C@l */
/* 805E28A0  C0 84 B4 70 */	lfs f4, lit_1149@l(r4)  /* 0x8064B470@l */
/* 805E28A4  EC 21 01 F2 */	fmuls f1, f1, f7
/* 805E28A8  C0 43 B4 30 */	lfs f2, lit_803@l(r3)  /* 0x8064B430@l */
/* 805E28AC  3C C0 80 65 */	lis r6, lit_1144@ha /* 0x8064B45C@ha */
/* 805E28B0  EC A6 28 2A */	fadds f5, f6, f5
/* 805E28B4  C0 C6 B4 5C */	lfs f6, lit_1144@l(r6)  /* 0x8064B45C@l */
/* 805E28B8  EC 64 18 2A */	fadds f3, f4, f3
/* 805E28BC  EC 22 08 2A */	fadds f1, f2, f1
/* 805E28C0  EC 86 01 72 */	fmuls f4, f6, f5
/* 805E28C4  EC 46 00 F2 */	fmuls f2, f6, f3
/* 805E28C8  EC 26 00 72 */	fmuls f1, f6, f1
/* 805E28CC  D0 81 00 14 */	stfs f4, 0x14(r1)
/* 805E28D0  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 805E28D4  D0 21 00 1C */	stfs f1, 0x1c(r1)
lbl_805E28D8:
/* 805E28D8  3C 60 80 65 */	lis r3, lit_1152@ha /* 0x8064B47C@ha */
/* 805E28DC  C0 23 B4 7C */	lfs f1, lit_1152@l(r3)  /* 0x8064B47C@l */
/* 805E28E0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 805E28E4  40 80 00 10 */	bge lbl_805E28F4
/* 805E28E8  3C 60 80 65 */	lis r3, lit_741@ha /* 0x8064B3F4@ha */
/* 805E28EC  C3 E3 B3 F4 */	lfs f31, lit_741@l(r3)  /* 0x8064B3F4@l */
/* 805E28F0  48 00 00 20 */	b lbl_805E2910
lbl_805E28F4:
/* 805E28F4  3C 60 80 65 */	lis r3, lit_1151@ha /* 0x8064B478@ha */
/* 805E28F8  EC 00 08 28 */	fsubs f0, f0, f1
/* 805E28FC  C0 23 B4 78 */	lfs f1, lit_1151@l(r3)  /* 0x8064B478@l */
/* 805E2900  3C 80 80 65 */	lis r4, lit_741@ha /* 0x8064B3F4@ha */
/* 805E2904  C0 44 B3 F4 */	lfs f2, lit_741@l(r4)  /* 0x8064B3F4@l */
/* 805E2908  EC 01 00 32 */	fmuls f0, f1, f0
/* 805E290C  EF E2 00 28 */	fsubs f31, f2, f0
lbl_805E2910:
/* 805E2910  3C 80 80 65 */	lis r4, lit_1153@ha /* 0x8064B480@ha */
/* 805E2914  7F E3 FB 78 */	mr r3, r31
/* 805E2918  C0 04 B4 80 */	lfs f0, lit_1153@l(r4)  /* 0x8064B480@l */
/* 805E291C  EF FF 00 32 */	fmuls f31, f31, f0
/* 805E2920  4B E0 27 E9 */	bl _texture_z_light_fog_prim
/* 805E2924  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 805E2928  80 63 09 88 */	lwz r3, 0x988(r3)
/* 805E292C  38 63 03 34 */	addi r3, r3, 0x334
/* 805E2930  4B E2 99 29 */	bl Matrix_put
/* 805E2934  38 61 00 14 */	addi r3, r1, 0x14
/* 805E2938  38 81 00 08 */	addi r4, r1, 8
/* 805E293C  4B E2 AA C9 */	bl Matrix_Position
/* 805E2940  4B E2 99 49 */	bl get_Matrix_now
/* 805E2944  D3 E3 00 00 */	stfs f31, 0(r3)
/* 805E2948  3C 80 80 65 */	lis r4, lit_744@ha /* 0x8064B400@ha */
/* 805E294C  38 A4 B4 00 */	addi r5, r4, lit_744@l /* 0x8064B400@l */
/* 805E2950  D3 E3 00 14 */	stfs f31, 0x14(r3)
/* 805E2954  3C 80 80 65 */	lis r4, lit_1154@ha /* 0x8064B484@ha */
/* 805E2958  C0 04 B4 84 */	lfs f0, lit_1154@l(r4)  /* 0x8064B484@l */
/* 805E295C  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 805E2960  D3 E3 00 28 */	stfs f31, 0x28(r3)
/* 805E2964  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 805E2968  C0 25 00 00 */	lfs f1, 0(r5)
/* 805E296C  EC 00 07 F2 */	fmuls f0, f0, f31
/* 805E2970  D0 23 00 04 */	stfs f1, 4(r3)
/* 805E2974  D0 23 00 08 */	stfs f1, 8(r3)
/* 805E2978  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 805E297C  D0 23 00 18 */	stfs f1, 0x18(r3)
/* 805E2980  D0 23 00 20 */	stfs f1, 0x20(r3)
/* 805E2984  D0 23 00 24 */	stfs f1, 0x24(r3)
/* 805E2988  C0 21 00 08 */	lfs f1, 8(r1)
/* 805E298C  D0 23 00 30 */	stfs f1, 0x30(r3)
/* 805E2990  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 805E2994  EC 01 00 28 */	fsubs f0, f1, f0
/* 805E2998  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 805E299C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 805E29A0  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 805E29A4  7F E3 FB 78 */	mr r3, r31
/* 805E29A8  83 BF 02 D0 */	lwz r29, 0x2d0(r31)
/* 805E29AC  38 9D 00 08 */	addi r4, r29, 8
/* 805E29B0  90 9F 02 D0 */	stw r4, 0x2d0(r31)
/* 805E29B4  90 1D 00 00 */	stw r0, 0(r29)
/* 805E29B8  4B E2 AA 1D */	bl _Matrix_to_Mtx_new
/* 805E29BC  3C 80 80 6D */	lis r4, food_mode@ha /* 0x806CD518@ha */
/* 805E29C0  90 7D 00 04 */	stw r3, 4(r29)
/* 805E29C4  57 C6 10 3A */	slwi r6, r30, 2
/* 805E29C8  38 A4 D5 18 */	addi r5, r4, food_mode@l /* 0x806CD518@l */
/* 805E29CC  7C 05 30 2E */	lwzx r0, r5, r6
/* 805E29D0  28 00 00 00 */	cmplwi r0, 0
/* 805E29D4  41 82 00 20 */	beq lbl_805E29F4
/* 805E29D8  80 9F 02 D0 */	lwz r4, 0x2d0(r31)
/* 805E29DC  3C 00 DE 00 */	lis r0, 0xde00
/* 805E29E0  38 64 00 08 */	addi r3, r4, 8
/* 805E29E4  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 805E29E8  90 04 00 00 */	stw r0, 0(r4)
/* 805E29EC  7C 05 30 2E */	lwzx r0, r5, r6
/* 805E29F0  90 04 00 04 */	stw r0, 4(r4)
lbl_805E29F4:
/* 805E29F4  80 BF 02 D0 */	lwz r5, 0x2d0(r31)
/* 805E29F8  3C 60 80 6D */	lis r3, food_model@ha /* 0x806CD53C@ha */
/* 805E29FC  3C 00 DE 00 */	lis r0, 0xde00
/* 805E2A00  38 85 00 08 */	addi r4, r5, 8
/* 805E2A04  38 63 D5 3C */	addi r3, r3, food_model@l /* 0x806CD53C@l */
/* 805E2A08  90 9F 02 D0 */	stw r4, 0x2d0(r31)
/* 805E2A0C  90 05 00 00 */	stw r0, 0(r5)
/* 805E2A10  7C 03 30 2E */	lwzx r0, r3, r6
/* 805E2A14  90 05 00 04 */	stw r0, 4(r5)
lbl_805E2A18:
/* 805E2A18  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 805E2A1C  39 61 00 30 */	addi r11, r1, 0x30
/* 805E2A20  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 805E2A24  4B AB 84 FD */	bl func_8009AF20
/* 805E2A28  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805E2A2C  7C 08 03 A6 */	mtlr r0
/* 805E2A30  38 21 00 40 */	addi r1, r1, 0x40
/* 805E2A34  4E 80 00 20 */	blr 
