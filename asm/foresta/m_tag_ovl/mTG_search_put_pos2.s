lbl_805F2634:
/* 805F2634  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 805F2638  7C 08 02 A6 */	mflr r0
/* 805F263C  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 805F2640  39 61 00 E0 */	addi r11, r1, 0xe0
/* 805F2644  4B AA 88 79 */	bl func_8009AEBC
/* 805F2648  7C 77 1B 78 */	mr r23, r3
/* 805F264C  7C 98 23 78 */	mr r24, r4
/* 805F2650  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 805F2654  7C B9 2B 78 */	mr r25, r5
/* 805F2658  7C DF 33 78 */	mr r31, r6
/* 805F265C  7C FA 3B 78 */	mr r26, r7
/* 805F2660  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 805F2664  7D 1E 43 78 */	mr r30, r8
/* 805F2668  7D 3B 4B 78 */	mr r27, r9
/* 805F266C  7D 5D 53 78 */	mr r29, r10
/* 805F2670  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 805F2674  38 61 00 94 */	addi r3, r1, 0x94
/* 805F2678  80 C1 00 88 */	lwz r6, 0x88(r1)
/* 805F267C  38 81 00 70 */	addi r4, r1, 0x70
/* 805F2680  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 805F2684  3B 80 00 00 */	li r28, 0
/* 805F2688  C0 17 00 2C */	lfs f0, 0x2c(r23)
/* 805F268C  80 01 00 90 */	lwz r0, 0x90(r1)
/* 805F2690  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 805F2694  80 A1 00 8C */	lwz r5, 0x8c(r1)
/* 805F2698  90 C1 00 70 */	stw r6, 0x70(r1)
/* 805F269C  90 A1 00 74 */	stw r5, 0x74(r1)
/* 805F26A0  90 01 00 78 */	stw r0, 0x78(r1)
/* 805F26A4  4B DB 2E 99 */	bl mFI_Wpos2UtCenterWpos
/* 805F26A8  80 A1 00 94 */	lwz r5, 0x94(r1)
/* 805F26AC  38 61 00 64 */	addi r3, r1, 0x64
/* 805F26B0  80 81 00 98 */	lwz r4, 0x98(r1)
/* 805F26B4  80 01 00 9C */	lwz r0, 0x9c(r1)
/* 805F26B8  90 A1 00 64 */	stw r5, 0x64(r1)
/* 805F26BC  90 81 00 68 */	stw r4, 0x68(r1)
/* 805F26C0  90 01 00 6C */	stw r0, 0x6c(r1)
/* 805F26C4  4B D9 D2 15 */	bl mCoBG_Wpos2BgUtCenterHeight_AddColumn
/* 805F26C8  D0 21 00 98 */	stfs f1, 0x98(r1)
/* 805F26CC  38 61 00 58 */	addi r3, r1, 0x58
/* 805F26D0  80 A1 00 94 */	lwz r5, 0x94(r1)
/* 805F26D4  80 81 00 98 */	lwz r4, 0x98(r1)
/* 805F26D8  80 01 00 9C */	lwz r0, 0x9c(r1)
/* 805F26DC  90 A1 00 58 */	stw r5, 0x58(r1)
/* 805F26E0  90 81 00 5C */	stw r4, 0x5c(r1)
/* 805F26E4  90 01 00 60 */	stw r0, 0x60(r1)
/* 805F26E8  4B DB 4D 49 */	bl mFI_GetUnitFG
/* 805F26EC  2C 1E 00 00 */	cmpwi r30, 0
/* 805F26F0  40 82 00 4C */	bne lbl_805F273C
/* 805F26F4  2C 1F 00 00 */	cmpwi r31, 0
/* 805F26F8  40 82 00 44 */	bne lbl_805F273C
/* 805F26FC  28 03 00 00 */	cmplwi r3, 0
/* 805F2700  41 82 00 3C */	beq lbl_805F273C
/* 805F2704  A0 03 00 00 */	lhz r0, 0(r3)
/* 805F2708  28 00 00 00 */	cmplwi r0, 0
/* 805F270C  40 82 00 30 */	bne lbl_805F273C
/* 805F2710  7F 24 CB 78 */	mr r4, r25
/* 805F2714  7F 65 DB 78 */	mr r5, r27
/* 805F2718  38 61 00 94 */	addi r3, r1, 0x94
/* 805F271C  4B FF FC A5 */	bl mTG_put_place_check
/* 805F2720  2C 03 00 00 */	cmpwi r3, 0
/* 805F2724  41 82 00 18 */	beq lbl_805F273C
/* 805F2728  7F 03 C3 78 */	mr r3, r24
/* 805F272C  38 81 00 94 */	addi r4, r1, 0x94
/* 805F2730  4B DC 87 8D */	bl xyz_t_move
/* 805F2734  3B 80 00 01 */	li r28, 1
/* 805F2738  3B 18 00 0C */	addi r24, r24, 0xc
lbl_805F273C:
/* 805F273C  A8 17 00 DE */	lha r0, 0xde(r23)
/* 805F2740  2C 00 70 00 */	cmpwi r0, 0x7000
/* 805F2744  41 81 00 0C */	bgt lbl_805F2750
/* 805F2748  2C 00 90 00 */	cmpwi r0, -28672
/* 805F274C  41 81 00 10 */	bgt lbl_805F275C
lbl_805F2750:
/* 805F2750  38 00 00 04 */	li r0, 4
/* 805F2754  90 01 00 0C */	stw r0, 0xc(r1)
/* 805F2758  48 00 00 84 */	b lbl_805F27DC
lbl_805F275C:
/* 805F275C  2C 00 50 00 */	cmpwi r0, 0x5000
/* 805F2760  40 81 00 10 */	ble lbl_805F2770
/* 805F2764  38 00 00 03 */	li r0, 3
/* 805F2768  90 01 00 0C */	stw r0, 0xc(r1)
/* 805F276C  48 00 00 70 */	b lbl_805F27DC
lbl_805F2770:
/* 805F2770  2C 00 30 00 */	cmpwi r0, 0x3000
/* 805F2774  40 81 00 10 */	ble lbl_805F2784
/* 805F2778  38 00 00 02 */	li r0, 2
/* 805F277C  90 01 00 0C */	stw r0, 0xc(r1)
/* 805F2780  48 00 00 5C */	b lbl_805F27DC
lbl_805F2784:
/* 805F2784  2C 00 10 00 */	cmpwi r0, 0x1000
/* 805F2788  40 81 00 10 */	ble lbl_805F2798
/* 805F278C  38 00 00 01 */	li r0, 1
/* 805F2790  90 01 00 0C */	stw r0, 0xc(r1)
/* 805F2794  48 00 00 48 */	b lbl_805F27DC
lbl_805F2798:
/* 805F2798  2C 00 F0 00 */	cmpwi r0, -4096
/* 805F279C  40 81 00 10 */	ble lbl_805F27AC
/* 805F27A0  38 00 00 00 */	li r0, 0
/* 805F27A4  90 01 00 0C */	stw r0, 0xc(r1)
/* 805F27A8  48 00 00 34 */	b lbl_805F27DC
lbl_805F27AC:
/* 805F27AC  2C 00 D0 00 */	cmpwi r0, -12288
/* 805F27B0  40 81 00 10 */	ble lbl_805F27C0
/* 805F27B4  38 00 00 07 */	li r0, 7
/* 805F27B8  90 01 00 0C */	stw r0, 0xc(r1)
/* 805F27BC  48 00 00 20 */	b lbl_805F27DC
lbl_805F27C0:
/* 805F27C0  2C 00 B0 00 */	cmpwi r0, -20480
/* 805F27C4  40 81 00 10 */	ble lbl_805F27D4
/* 805F27C8  38 00 00 06 */	li r0, 6
/* 805F27CC  90 01 00 0C */	stw r0, 0xc(r1)
/* 805F27D0  48 00 00 0C */	b lbl_805F27DC
lbl_805F27D4:
/* 805F27D4  38 00 00 05 */	li r0, 5
/* 805F27D8  90 01 00 0C */	stw r0, 0xc(r1)
lbl_805F27DC:
/* 805F27DC  2C 1D 00 00 */	cmpwi r29, 0
/* 805F27E0  3B C0 00 08 */	li r30, 8
/* 805F27E4  41 82 00 08 */	beq lbl_805F27EC
/* 805F27E8  3B C0 00 05 */	li r30, 5
lbl_805F27EC:
/* 805F27EC  3C 60 80 6D */	lis r3, offset_pos_1216@ha /* 0x806D0AA0@ha */
/* 805F27F0  3B A0 00 00 */	li r29, 0
/* 805F27F4  3B E3 0A A0 */	addi r31, r3, offset_pos_1216@l /* 0x806D0AA0@l */
/* 805F27F8  48 00 05 C4 */	b lbl_805F2DBC
lbl_805F27FC:
/* 805F27FC  57 A0 07 FF */	clrlwi. r0, r29, 0x1f
/* 805F2800  41 82 00 10 */	beq lbl_805F2810
/* 805F2804  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805F2808  7C 00 EA 14 */	add r0, r0, r29
/* 805F280C  48 00 00 0C */	b lbl_805F2818
lbl_805F2810:
/* 805F2810  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805F2814  7C 1D 00 50 */	subf r0, r29, r0
lbl_805F2818:
/* 805F2818  90 01 00 0C */	stw r0, 0xc(r1)
/* 805F281C  38 61 00 0C */	addi r3, r1, 0xc
/* 805F2820  4B FF FC 51 */	bl mTG_check_direction_put_pos
/* 805F2824  80 81 00 0C */	lwz r4, 0xc(r1)
/* 805F2828  38 61 00 4C */	addi r3, r1, 0x4c
/* 805F282C  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 805F2830  54 84 18 38 */	slwi r4, r4, 3
/* 805F2834  C0 61 00 94 */	lfs f3, 0x94(r1)
/* 805F2838  7C 9F 22 14 */	add r4, r31, r4
/* 805F283C  C0 21 00 9C */	lfs f1, 0x9c(r1)
/* 805F2840  C0 44 00 00 */	lfs f2, 0(r4)
/* 805F2844  C0 04 00 04 */	lfs f0, 4(r4)
/* 805F2848  EC 43 10 2A */	fadds f2, f3, f2
/* 805F284C  90 01 00 50 */	stw r0, 0x50(r1)
/* 805F2850  EC 01 00 2A */	fadds f0, f1, f0
/* 805F2854  D0 41 00 A0 */	stfs f2, 0xa0(r1)
/* 805F2858  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 805F285C  80 81 00 A0 */	lwz r4, 0xa0(r1)
/* 805F2860  80 01 00 A8 */	lwz r0, 0xa8(r1)
/* 805F2864  90 81 00 4C */	stw r4, 0x4c(r1)
/* 805F2868  90 01 00 54 */	stw r0, 0x54(r1)
/* 805F286C  4B D9 D0 6D */	bl mCoBG_Wpos2BgUtCenterHeight_AddColumn
/* 805F2870  D0 21 00 A4 */	stfs f1, 0xa4(r1)
/* 805F2874  38 61 00 40 */	addi r3, r1, 0x40
/* 805F2878  80 A1 00 A0 */	lwz r5, 0xa0(r1)
/* 805F287C  80 81 00 A4 */	lwz r4, 0xa4(r1)
/* 805F2880  80 01 00 A8 */	lwz r0, 0xa8(r1)
/* 805F2884  90 A1 00 40 */	stw r5, 0x40(r1)
/* 805F2888  90 81 00 44 */	stw r4, 0x44(r1)
/* 805F288C  90 01 00 48 */	stw r0, 0x48(r1)
/* 805F2890  4B DB 4B A1 */	bl mFI_GetUnitFG
/* 805F2894  28 03 00 00 */	cmplwi r3, 0
/* 805F2898  41 82 05 20 */	beq lbl_805F2DB8
/* 805F289C  A0 03 00 00 */	lhz r0, 0(r3)
/* 805F28A0  28 00 00 00 */	cmplwi r0, 0
/* 805F28A4  40 82 05 14 */	bne lbl_805F2DB8
/* 805F28A8  7F 24 CB 78 */	mr r4, r25
/* 805F28AC  7F 65 DB 78 */	mr r5, r27
/* 805F28B0  38 61 00 A0 */	addi r3, r1, 0xa0
/* 805F28B4  4B FF FB 0D */	bl mTG_put_place_check
/* 805F28B8  2C 03 00 00 */	cmpwi r3, 0
/* 805F28BC  41 82 04 FC */	beq lbl_805F2DB8
/* 805F28C0  2C 1B 00 00 */	cmpwi r27, 0
/* 805F28C4  41 82 00 18 */	beq lbl_805F28DC
/* 805F28C8  41 82 04 F0 */	beq lbl_805F2DB8
/* 805F28CC  38 61 00 A0 */	addi r3, r1, 0xa0
/* 805F28D0  4B FF FC 75 */	bl mTG_check_pos_slope
/* 805F28D4  2C 03 00 00 */	cmpwi r3, 0
/* 805F28D8  41 82 04 E0 */	beq lbl_805F2DB8
lbl_805F28DC:
/* 805F28DC  80 97 00 28 */	lwz r4, 0x28(r23)
/* 805F28E0  3C 60 80 65 */	lis r3, lit_1528@ha /* 0x8064B8C8@ha */
/* 805F28E4  80 17 00 2C */	lwz r0, 0x2c(r23)
/* 805F28E8  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 805F28EC  90 01 00 80 */	stw r0, 0x80(r1)
/* 805F28F0  C0 03 B8 C8 */	lfs f0, lit_1528@l(r3)  /* 0x8064B8C8@l */
/* 805F28F4  54 A0 07 FF */	clrlwi. r0, r5, 0x1f
/* 805F28F8  C0 21 00 80 */	lfs f1, 0x80(r1)
/* 805F28FC  90 81 00 7C */	stw r4, 0x7c(r1)
/* 805F2900  EC 01 00 28 */	fsubs f0, f1, f0
/* 805F2904  80 17 00 30 */	lwz r0, 0x30(r23)
/* 805F2908  90 01 00 84 */	stw r0, 0x84(r1)
/* 805F290C  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 805F2910  41 82 04 80 */	beq lbl_805F2D90
/* 805F2914  38 05 00 01 */	addi r0, r5, 1
/* 805F2918  38 61 00 08 */	addi r3, r1, 8
/* 805F291C  90 01 00 08 */	stw r0, 8(r1)
/* 805F2920  4B FF FB 51 */	bl mTG_check_direction_put_pos
/* 805F2924  80 81 00 08 */	lwz r4, 8(r1)
/* 805F2928  3C 60 80 6D */	lis r3, offset_pos_1216@ha /* 0x806D0AA0@ha */
/* 805F292C  80 01 00 8C */	lwz r0, 0x8c(r1)
/* 805F2930  38 63 0A A0 */	addi r3, r3, offset_pos_1216@l /* 0x806D0AA0@l */
/* 805F2934  54 84 18 38 */	slwi r4, r4, 3
/* 805F2938  C0 61 00 94 */	lfs f3, 0x94(r1)
/* 805F293C  7C 83 22 14 */	add r4, r3, r4
/* 805F2940  C0 21 00 9C */	lfs f1, 0x9c(r1)
/* 805F2944  C0 44 00 00 */	lfs f2, 0(r4)
/* 805F2948  38 61 00 34 */	addi r3, r1, 0x34
/* 805F294C  C0 04 00 04 */	lfs f0, 4(r4)
/* 805F2950  EC 43 10 2A */	fadds f2, f3, f2
/* 805F2954  90 01 00 38 */	stw r0, 0x38(r1)
/* 805F2958  EC 01 00 2A */	fadds f0, f1, f0
/* 805F295C  D0 41 00 88 */	stfs f2, 0x88(r1)
/* 805F2960  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 805F2964  80 81 00 88 */	lwz r4, 0x88(r1)
/* 805F2968  80 01 00 90 */	lwz r0, 0x90(r1)
/* 805F296C  90 81 00 34 */	stw r4, 0x34(r1)
/* 805F2970  90 01 00 3C */	stw r0, 0x3c(r1)
/* 805F2974  4B D9 CF 65 */	bl mCoBG_Wpos2BgUtCenterHeight_AddColumn
/* 805F2978  D0 21 00 8C */	stfs f1, 0x8c(r1)
/* 805F297C  38 61 00 28 */	addi r3, r1, 0x28
/* 805F2980  80 A1 00 88 */	lwz r5, 0x88(r1)
/* 805F2984  80 81 00 8C */	lwz r4, 0x8c(r1)
/* 805F2988  80 01 00 90 */	lwz r0, 0x90(r1)
/* 805F298C  90 A1 00 28 */	stw r5, 0x28(r1)
/* 805F2990  90 81 00 2C */	stw r4, 0x2c(r1)
/* 805F2994  90 01 00 30 */	stw r0, 0x30(r1)
/* 805F2998  4B DB 4A 99 */	bl mFI_GetUnitFG
/* 805F299C  28 03 00 00 */	cmplwi r3, 0
/* 805F29A0  41 82 01 B0 */	beq lbl_805F2B50
/* 805F29A4  A0 63 00 00 */	lhz r3, 0(r3)
/* 805F29A8  28 03 08 01 */	cmplwi r3, 0x801
/* 805F29AC  41 82 01 A4 */	beq lbl_805F2B50
/* 805F29B0  38 03 F7 FE */	addi r0, r3, -2050
/* 805F29B4  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 805F29B8  28 00 00 02 */	cmplwi r0, 2
/* 805F29BC  40 81 01 94 */	ble lbl_805F2B50
/* 805F29C0  38 03 F7 D2 */	addi r0, r3, -2094
/* 805F29C4  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 805F29C8  28 00 00 03 */	cmplwi r0, 3
/* 805F29CC  40 81 01 84 */	ble lbl_805F2B50
/* 805F29D0  38 03 F7 CD */	addi r0, r3, -2099
/* 805F29D4  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 805F29D8  28 00 00 03 */	cmplwi r0, 3
/* 805F29DC  40 81 01 74 */	ble lbl_805F2B50
/* 805F29E0  38 03 F7 C8 */	addi r0, r3, -2104
/* 805F29E4  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 805F29E8  28 00 00 03 */	cmplwi r0, 3
/* 805F29EC  40 81 01 64 */	ble lbl_805F2B50
/* 805F29F0  38 03 F7 B0 */	addi r0, r3, -2128
/* 805F29F4  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 805F29F8  28 00 00 03 */	cmplwi r0, 3
/* 805F29FC  40 81 01 54 */	ble lbl_805F2B50
/* 805F2A00  38 03 F7 A2 */	addi r0, r3, -2142
/* 805F2A04  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 805F2A08  28 00 00 03 */	cmplwi r0, 3
/* 805F2A0C  40 81 01 44 */	ble lbl_805F2B50
/* 805F2A10  38 03 F7 9C */	addi r0, r3, -2148
/* 805F2A14  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 805F2A18  28 00 00 04 */	cmplwi r0, 4
/* 805F2A1C  40 81 01 34 */	ble lbl_805F2B50
/* 805F2A20  38 03 F7 FA */	addi r0, r3, -2054
/* 805F2A24  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 805F2A28  28 00 00 06 */	cmplwi r0, 6
/* 805F2A2C  40 81 01 24 */	ble lbl_805F2B50
/* 805F2A30  38 03 F7 F2 */	addi r0, r3, -2062
/* 805F2A34  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 805F2A38  28 00 00 06 */	cmplwi r0, 6
/* 805F2A3C  40 81 01 14 */	ble lbl_805F2B50
/* 805F2A40  38 03 F7 EA */	addi r0, r3, -2070
/* 805F2A44  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 805F2A48  28 00 00 06 */	cmplwi r0, 6
/* 805F2A4C  40 81 01 04 */	ble lbl_805F2B50
/* 805F2A50  38 03 F7 E2 */	addi r0, r3, -2078
/* 805F2A54  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 805F2A58  28 00 00 06 */	cmplwi r0, 6
/* 805F2A5C  40 81 00 F4 */	ble lbl_805F2B50
/* 805F2A60  38 03 F7 DA */	addi r0, r3, -2086
/* 805F2A64  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 805F2A68  28 00 00 06 */	cmplwi r0, 6
/* 805F2A6C  40 81 00 E4 */	ble lbl_805F2B50
/* 805F2A70  38 03 F7 AB */	addi r0, r3, -2133
/* 805F2A74  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 805F2A78  28 00 00 06 */	cmplwi r0, 6
/* 805F2A7C  40 81 00 D4 */	ble lbl_805F2B50
/* 805F2A80  38 03 FF A2 */	addi r0, r3, -94
/* 805F2A84  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 805F2A88  28 00 00 03 */	cmplwi r0, 3
/* 805F2A8C  40 81 00 C4 */	ble lbl_805F2B50
/* 805F2A90  28 03 00 69 */	cmplwi r3, 0x69
/* 805F2A94  41 82 00 BC */	beq lbl_805F2B50
/* 805F2A98  38 03 FF 88 */	addi r0, r3, -120
/* 805F2A9C  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 805F2AA0  28 00 00 02 */	cmplwi r0, 2
/* 805F2AA4  40 81 00 AC */	ble lbl_805F2B50
/* 805F2AA8  38 03 FF 81 */	addi r0, r3, -127
/* 805F2AAC  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 805F2AB0  28 00 00 03 */	cmplwi r0, 3
/* 805F2AB4  40 81 00 9C */	ble lbl_805F2B50
/* 805F2AB8  28 03 00 11 */	cmplwi r3, 0x11
/* 805F2ABC  41 80 00 0C */	blt lbl_805F2AC8
/* 805F2AC0  28 03 00 29 */	cmplwi r3, 0x29
/* 805F2AC4  40 81 00 8C */	ble lbl_805F2B50
lbl_805F2AC8:
/* 805F2AC8  28 03 00 5D */	cmplwi r3, 0x5d
/* 805F2ACC  41 82 00 84 */	beq lbl_805F2B50
/* 805F2AD0  28 03 00 01 */	cmplwi r3, 1
/* 805F2AD4  41 80 00 0C */	blt lbl_805F2AE0
/* 805F2AD8  28 03 00 04 */	cmplwi r3, 4
/* 805F2ADC  40 81 00 74 */	ble lbl_805F2B50
lbl_805F2AE0:
/* 805F2AE0  28 03 00 70 */	cmplwi r3, 0x70
/* 805F2AE4  41 80 00 0C */	blt lbl_805F2AF0
/* 805F2AE8  28 03 00 73 */	cmplwi r3, 0x73
/* 805F2AEC  40 81 00 64 */	ble lbl_805F2B50
lbl_805F2AF0:
/* 805F2AF0  28 03 00 74 */	cmplwi r3, 0x74
/* 805F2AF4  41 80 00 0C */	blt lbl_805F2B00
/* 805F2AF8  28 03 00 77 */	cmplwi r3, 0x77
/* 805F2AFC  40 81 00 54 */	ble lbl_805F2B50
lbl_805F2B00:
/* 805F2B00  28 03 00 7B */	cmplwi r3, 0x7b
/* 805F2B04  41 80 00 0C */	blt lbl_805F2B10
/* 805F2B08  28 03 00 7E */	cmplwi r3, 0x7e
/* 805F2B0C  40 81 00 44 */	ble lbl_805F2B50
lbl_805F2B10:
/* 805F2B10  38 61 00 7C */	addi r3, r1, 0x7c
/* 805F2B14  38 81 00 88 */	addi r4, r1, 0x88
/* 805F2B18  4B FF F9 85 */	bl mTG_check_wall_put_pos
/* 805F2B1C  2C 03 00 00 */	cmpwi r3, 0
/* 805F2B20  40 82 00 30 */	bne lbl_805F2B50
/* 805F2B24  38 61 00 88 */	addi r3, r1, 0x88
/* 805F2B28  38 81 00 A0 */	addi r4, r1, 0xa0
/* 805F2B2C  4B FF F9 71 */	bl mTG_check_wall_put_pos
/* 805F2B30  2C 03 00 00 */	cmpwi r3, 0
/* 805F2B34  40 82 00 1C */	bne lbl_805F2B50
/* 805F2B38  7F 03 C3 78 */	mr r3, r24
/* 805F2B3C  38 81 00 A0 */	addi r4, r1, 0xa0
/* 805F2B40  4B DC 83 7D */	bl xyz_t_move
/* 805F2B44  3B 9C 00 01 */	addi r28, r28, 1
/* 805F2B48  3B 18 00 0C */	addi r24, r24, 0xc
/* 805F2B4C  48 00 02 6C */	b lbl_805F2DB8
lbl_805F2B50:
/* 805F2B50  80 81 00 0C */	lwz r4, 0xc(r1)
/* 805F2B54  38 61 00 08 */	addi r3, r1, 8
/* 805F2B58  38 04 FF FF */	addi r0, r4, -1
/* 805F2B5C  90 01 00 08 */	stw r0, 8(r1)
/* 805F2B60  4B FF F9 11 */	bl mTG_check_direction_put_pos
/* 805F2B64  80 81 00 08 */	lwz r4, 8(r1)
/* 805F2B68  3C 60 80 6D */	lis r3, offset_pos_1216@ha /* 0x806D0AA0@ha */
/* 805F2B6C  80 01 00 8C */	lwz r0, 0x8c(r1)
/* 805F2B70  38 63 0A A0 */	addi r3, r3, offset_pos_1216@l /* 0x806D0AA0@l */
/* 805F2B74  54 84 18 38 */	slwi r4, r4, 3
/* 805F2B78  C0 61 00 94 */	lfs f3, 0x94(r1)
/* 805F2B7C  7C 83 22 14 */	add r4, r3, r4
/* 805F2B80  C0 21 00 9C */	lfs f1, 0x9c(r1)
/* 805F2B84  C0 44 00 00 */	lfs f2, 0(r4)
/* 805F2B88  38 61 00 1C */	addi r3, r1, 0x1c
/* 805F2B8C  C0 04 00 04 */	lfs f0, 4(r4)
/* 805F2B90  EC 43 10 2A */	fadds f2, f3, f2
/* 805F2B94  90 01 00 20 */	stw r0, 0x20(r1)
/* 805F2B98  EC 01 00 2A */	fadds f0, f1, f0
/* 805F2B9C  D0 41 00 88 */	stfs f2, 0x88(r1)
/* 805F2BA0  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 805F2BA4  80 81 00 88 */	lwz r4, 0x88(r1)
/* 805F2BA8  80 01 00 90 */	lwz r0, 0x90(r1)
/* 805F2BAC  90 81 00 1C */	stw r4, 0x1c(r1)
/* 805F2BB0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805F2BB4  4B D9 CD 25 */	bl mCoBG_Wpos2BgUtCenterHeight_AddColumn
/* 805F2BB8  D0 21 00 8C */	stfs f1, 0x8c(r1)
/* 805F2BBC  38 61 00 10 */	addi r3, r1, 0x10
/* 805F2BC0  80 A1 00 88 */	lwz r5, 0x88(r1)
/* 805F2BC4  80 81 00 8C */	lwz r4, 0x8c(r1)
/* 805F2BC8  80 01 00 90 */	lwz r0, 0x90(r1)
/* 805F2BCC  90 A1 00 10 */	stw r5, 0x10(r1)
/* 805F2BD0  90 81 00 14 */	stw r4, 0x14(r1)
/* 805F2BD4  90 01 00 18 */	stw r0, 0x18(r1)
/* 805F2BD8  4B DB 48 59 */	bl mFI_GetUnitFG
/* 805F2BDC  28 03 00 00 */	cmplwi r3, 0
/* 805F2BE0  41 82 01 D8 */	beq lbl_805F2DB8
/* 805F2BE4  A0 63 00 00 */	lhz r3, 0(r3)
/* 805F2BE8  28 03 08 01 */	cmplwi r3, 0x801
/* 805F2BEC  41 82 01 CC */	beq lbl_805F2DB8
/* 805F2BF0  38 03 F7 FE */	addi r0, r3, -2050
/* 805F2BF4  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 805F2BF8  28 00 00 02 */	cmplwi r0, 2
/* 805F2BFC  40 81 01 BC */	ble lbl_805F2DB8
/* 805F2C00  38 03 F7 D2 */	addi r0, r3, -2094
/* 805F2C04  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 805F2C08  28 00 00 03 */	cmplwi r0, 3
/* 805F2C0C  40 81 01 AC */	ble lbl_805F2DB8
/* 805F2C10  38 03 F7 CD */	addi r0, r3, -2099
/* 805F2C14  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 805F2C18  28 00 00 03 */	cmplwi r0, 3
/* 805F2C1C  40 81 01 9C */	ble lbl_805F2DB8
/* 805F2C20  38 03 F7 C8 */	addi r0, r3, -2104
/* 805F2C24  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 805F2C28  28 00 00 03 */	cmplwi r0, 3
/* 805F2C2C  40 81 01 8C */	ble lbl_805F2DB8
/* 805F2C30  38 03 F7 B0 */	addi r0, r3, -2128
/* 805F2C34  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 805F2C38  28 00 00 03 */	cmplwi r0, 3
/* 805F2C3C  40 81 01 7C */	ble lbl_805F2DB8
/* 805F2C40  38 03 F7 A2 */	addi r0, r3, -2142
/* 805F2C44  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 805F2C48  28 00 00 03 */	cmplwi r0, 3
/* 805F2C4C  40 81 01 6C */	ble lbl_805F2DB8
/* 805F2C50  38 03 F7 9C */	addi r0, r3, -2148
/* 805F2C54  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 805F2C58  28 00 00 04 */	cmplwi r0, 4
/* 805F2C5C  40 81 01 5C */	ble lbl_805F2DB8
/* 805F2C60  38 03 F7 FA */	addi r0, r3, -2054
/* 805F2C64  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 805F2C68  28 00 00 06 */	cmplwi r0, 6
/* 805F2C6C  40 81 01 4C */	ble lbl_805F2DB8
/* 805F2C70  38 03 F7 F2 */	addi r0, r3, -2062
/* 805F2C74  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 805F2C78  28 00 00 06 */	cmplwi r0, 6
/* 805F2C7C  40 81 01 3C */	ble lbl_805F2DB8
/* 805F2C80  38 03 F7 EA */	addi r0, r3, -2070
/* 805F2C84  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 805F2C88  28 00 00 06 */	cmplwi r0, 6
/* 805F2C8C  40 81 01 2C */	ble lbl_805F2DB8
/* 805F2C90  38 03 F7 E2 */	addi r0, r3, -2078
/* 805F2C94  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 805F2C98  28 00 00 06 */	cmplwi r0, 6
/* 805F2C9C  40 81 01 1C */	ble lbl_805F2DB8
/* 805F2CA0  38 03 F7 DA */	addi r0, r3, -2086
/* 805F2CA4  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 805F2CA8  28 00 00 06 */	cmplwi r0, 6
/* 805F2CAC  40 81 01 0C */	ble lbl_805F2DB8
/* 805F2CB0  38 03 F7 AB */	addi r0, r3, -2133
/* 805F2CB4  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 805F2CB8  28 00 00 06 */	cmplwi r0, 6
/* 805F2CBC  40 81 00 FC */	ble lbl_805F2DB8
/* 805F2CC0  38 03 FF A2 */	addi r0, r3, -94
/* 805F2CC4  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 805F2CC8  28 00 00 03 */	cmplwi r0, 3
/* 805F2CCC  40 81 00 EC */	ble lbl_805F2DB8
/* 805F2CD0  28 03 00 69 */	cmplwi r3, 0x69
/* 805F2CD4  41 82 00 E4 */	beq lbl_805F2DB8
/* 805F2CD8  38 03 FF 88 */	addi r0, r3, -120
/* 805F2CDC  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 805F2CE0  28 00 00 02 */	cmplwi r0, 2
/* 805F2CE4  40 81 00 D4 */	ble lbl_805F2DB8
/* 805F2CE8  38 03 FF 81 */	addi r0, r3, -127
/* 805F2CEC  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 805F2CF0  28 00 00 03 */	cmplwi r0, 3
/* 805F2CF4  40 81 00 C4 */	ble lbl_805F2DB8
/* 805F2CF8  28 03 00 11 */	cmplwi r3, 0x11
/* 805F2CFC  41 80 00 0C */	blt lbl_805F2D08
/* 805F2D00  28 03 00 29 */	cmplwi r3, 0x29
/* 805F2D04  40 81 00 B4 */	ble lbl_805F2DB8
lbl_805F2D08:
/* 805F2D08  28 03 00 5D */	cmplwi r3, 0x5d
/* 805F2D0C  41 82 00 AC */	beq lbl_805F2DB8
/* 805F2D10  28 03 00 01 */	cmplwi r3, 1
/* 805F2D14  41 80 00 0C */	blt lbl_805F2D20
/* 805F2D18  28 03 00 04 */	cmplwi r3, 4
/* 805F2D1C  40 81 00 9C */	ble lbl_805F2DB8
lbl_805F2D20:
/* 805F2D20  28 03 00 70 */	cmplwi r3, 0x70
/* 805F2D24  41 80 00 0C */	blt lbl_805F2D30
/* 805F2D28  28 03 00 73 */	cmplwi r3, 0x73
/* 805F2D2C  40 81 00 8C */	ble lbl_805F2DB8
lbl_805F2D30:
/* 805F2D30  28 03 00 74 */	cmplwi r3, 0x74
/* 805F2D34  41 80 00 0C */	blt lbl_805F2D40
/* 805F2D38  28 03 00 77 */	cmplwi r3, 0x77
/* 805F2D3C  40 81 00 7C */	ble lbl_805F2DB8
lbl_805F2D40:
/* 805F2D40  28 03 00 7B */	cmplwi r3, 0x7b
/* 805F2D44  41 80 00 0C */	blt lbl_805F2D50
/* 805F2D48  28 03 00 7E */	cmplwi r3, 0x7e
/* 805F2D4C  40 81 00 6C */	ble lbl_805F2DB8
lbl_805F2D50:
/* 805F2D50  38 61 00 7C */	addi r3, r1, 0x7c
/* 805F2D54  38 81 00 88 */	addi r4, r1, 0x88
/* 805F2D58  4B FF F7 45 */	bl mTG_check_wall_put_pos
/* 805F2D5C  2C 03 00 00 */	cmpwi r3, 0
/* 805F2D60  40 82 00 58 */	bne lbl_805F2DB8
/* 805F2D64  38 61 00 88 */	addi r3, r1, 0x88
/* 805F2D68  38 81 00 A0 */	addi r4, r1, 0xa0
/* 805F2D6C  4B FF F7 31 */	bl mTG_check_wall_put_pos
/* 805F2D70  2C 03 00 00 */	cmpwi r3, 0
/* 805F2D74  40 82 00 44 */	bne lbl_805F2DB8
/* 805F2D78  7F 03 C3 78 */	mr r3, r24
/* 805F2D7C  38 81 00 A0 */	addi r4, r1, 0xa0
/* 805F2D80  4B DC 81 3D */	bl xyz_t_move
/* 805F2D84  3B 9C 00 01 */	addi r28, r28, 1
/* 805F2D88  3B 18 00 0C */	addi r24, r24, 0xc
/* 805F2D8C  48 00 00 2C */	b lbl_805F2DB8
lbl_805F2D90:
/* 805F2D90  38 61 00 7C */	addi r3, r1, 0x7c
/* 805F2D94  38 81 00 A0 */	addi r4, r1, 0xa0
/* 805F2D98  4B FF F7 05 */	bl mTG_check_wall_put_pos
/* 805F2D9C  2C 03 00 00 */	cmpwi r3, 0
/* 805F2DA0  40 82 00 18 */	bne lbl_805F2DB8
/* 805F2DA4  7F 03 C3 78 */	mr r3, r24
/* 805F2DA8  38 81 00 A0 */	addi r4, r1, 0xa0
/* 805F2DAC  4B DC 81 11 */	bl xyz_t_move
/* 805F2DB0  3B 9C 00 01 */	addi r28, r28, 1
/* 805F2DB4  3B 18 00 0C */	addi r24, r24, 0xc
lbl_805F2DB8:
/* 805F2DB8  3B BD 00 01 */	addi r29, r29, 1
lbl_805F2DBC:
/* 805F2DBC  7C 1D F0 00 */	cmpw r29, r30
/* 805F2DC0  40 80 00 0C */	bge lbl_805F2DCC
/* 805F2DC4  7C 1C D0 00 */	cmpw r28, r26
/* 805F2DC8  41 80 FA 34 */	blt lbl_805F27FC
lbl_805F2DCC:
/* 805F2DCC  7F 83 E3 78 */	mr r3, r28
/* 805F2DD0  39 61 00 E0 */	addi r11, r1, 0xe0
/* 805F2DD4  4B AA 81 35 */	bl func_8009AF08
/* 805F2DD8  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 805F2DDC  7C 08 03 A6 */	mtlr r0
/* 805F2DE0  38 21 00 E0 */	addi r1, r1, 0xe0
/* 805F2DE4  4E 80 00 20 */	blr 
