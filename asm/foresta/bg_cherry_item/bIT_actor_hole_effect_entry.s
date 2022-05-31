lbl_804B277C:
/* 804B277C  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 804B2780  7C 08 02 A6 */	mflr r0
/* 804B2784  90 01 00 94 */	stw r0, 0x94(r1)
/* 804B2788  39 61 00 90 */	addi r11, r1, 0x90
/* 804B278C  4B BE 87 2D */	bl func_8009AEB8
/* 804B2790  7D 19 43 78 */	mr r25, r8
/* 804B2794  7C 76 1B 78 */	mr r22, r3
/* 804B2798  7F 3E 07 34 */	extsh r30, r25
/* 804B279C  7C 97 23 78 */	mr r23, r4
/* 804B27A0  2C 1E 00 02 */	cmpwi r30, 2
/* 804B27A4  7C BF 2B 78 */	mr r31, r5
/* 804B27A8  7C D8 33 78 */	mr r24, r6
/* 804B27AC  7C FD 3B 78 */	mr r29, r7
/* 804B27B0  7D 3A 4B 78 */	mr r26, r9
/* 804B27B4  3B 60 00 00 */	li r27, 0
/* 804B27B8  3B 80 FF FF */	li r28, -1
/* 804B27BC  41 82 00 58 */	beq lbl_804B2814
/* 804B27C0  40 80 00 AC */	bge lbl_804B286C
/* 804B27C4  2C 1E 00 01 */	cmpwi r30, 1
/* 804B27C8  40 80 00 08 */	bge lbl_804B27D0
/* 804B27CC  48 00 00 A0 */	b lbl_804B286C
lbl_804B27D0:
/* 804B27D0  56 E0 04 3E */	clrlwi r0, r23, 0x10
/* 804B27D4  28 00 00 5C */	cmplwi r0, 0x5c
/* 804B27D8  40 82 00 0C */	bne lbl_804B27E4
/* 804B27DC  3B 80 00 5D */	li r28, 0x5d
/* 804B27E0  48 00 00 8C */	b lbl_804B286C
lbl_804B27E4:
/* 804B27E4  80 9F 00 00 */	lwz r4, 0(r31)
/* 804B27E8  38 61 00 44 */	addi r3, r1, 0x44
/* 804B27EC  80 1F 00 04 */	lwz r0, 4(r31)
/* 804B27F0  90 81 00 44 */	stw r4, 0x44(r1)
/* 804B27F4  90 01 00 48 */	stw r0, 0x48(r1)
/* 804B27F8  80 1F 00 08 */	lwz r0, 8(r31)
/* 804B27FC  90 01 00 4C */	stw r0, 0x4c(r1)
/* 804B2800  4B ED DB 95 */	bl mCoBG_GetHoleNumber
/* 804B2804  2C 03 00 00 */	cmpwi r3, 0
/* 804B2808  41 80 00 64 */	blt lbl_804B286C
/* 804B280C  3B 83 00 11 */	addi r28, r3, 0x11
/* 804B2810  48 00 00 5C */	b lbl_804B286C
lbl_804B2814:
/* 804B2814  80 9F 00 00 */	lwz r4, 0(r31)
/* 804B2818  38 61 00 38 */	addi r3, r1, 0x38
/* 804B281C  80 1F 00 04 */	lwz r0, 4(r31)
/* 804B2820  90 81 00 38 */	stw r4, 0x38(r1)
/* 804B2824  90 01 00 3C */	stw r0, 0x3c(r1)
/* 804B2828  80 1F 00 08 */	lwz r0, 8(r31)
/* 804B282C  90 01 00 40 */	stw r0, 0x40(r1)
/* 804B2830  4B EF 4C 01 */	bl mFI_GetUnitFG
/* 804B2834  28 03 00 00 */	cmplwi r3, 0
/* 804B2838  41 82 00 34 */	beq lbl_804B286C
/* 804B283C  A3 83 00 00 */	lhz r28, 0(r3)
/* 804B2840  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 804B2844  80 DF 00 00 */	lwz r6, 0(r31)
/* 804B2848  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
/* 804B284C  80 1F 00 04 */	lwz r0, 4(r31)
/* 804B2850  38 81 00 2C */	addi r4, r1, 0x2c
/* 804B2854  38 A0 00 01 */	li r5, 1
/* 804B2858  90 C1 00 2C */	stw r6, 0x2c(r1)
/* 804B285C  90 01 00 30 */	stw r0, 0x30(r1)
/* 804B2860  80 1F 00 08 */	lwz r0, 8(r31)
/* 804B2864  90 01 00 34 */	stw r0, 0x34(r1)
/* 804B2868  4B EF 4F C9 */	bl mFI_SetFG_common
lbl_804B286C:
/* 804B286C  2C 1C 00 00 */	cmpwi r28, 0
/* 804B2870  41 80 01 3C */	blt lbl_804B29AC
/* 804B2874  80 BF 00 00 */	lwz r5, 0(r31)
/* 804B2878  38 61 00 50 */	addi r3, r1, 0x50
/* 804B287C  80 1F 00 04 */	lwz r0, 4(r31)
/* 804B2880  38 81 00 20 */	addi r4, r1, 0x20
/* 804B2884  90 A1 00 20 */	stw r5, 0x20(r1)
/* 804B2888  90 01 00 24 */	stw r0, 0x24(r1)
/* 804B288C  80 1F 00 08 */	lwz r0, 8(r31)
/* 804B2890  90 01 00 28 */	stw r0, 0x28(r1)
/* 804B2894  4B EF 2C A9 */	bl mFI_Wpos2UtCenterWpos
/* 804B2898  80 9F 00 00 */	lwz r4, 0(r31)
/* 804B289C  3C 60 80 64 */	lis r3, lit_664@ha /* 0x80645FF4@ha */
/* 804B28A0  80 1F 00 04 */	lwz r0, 4(r31)
/* 804B28A4  C0 23 5F F4 */	lfs f1, lit_664@l(r3)  /* 0x80645FF4@l */
/* 804B28A8  38 61 00 14 */	addi r3, r1, 0x14
/* 804B28AC  90 81 00 14 */	stw r4, 0x14(r1)
/* 804B28B0  90 01 00 18 */	stw r0, 0x18(r1)
/* 804B28B4  80 1F 00 08 */	lwz r0, 8(r31)
/* 804B28B8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804B28BC  4B ED D0 DD */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 804B28C0  57 A3 04 3E */	clrlwi r3, r29, 0x10
/* 804B28C4  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 804B28C8  3B E3 00 01 */	addi r31, r3, 1
/* 804B28CC  3B A0 00 00 */	li r29, 0
/* 804B28D0  48 00 00 CC */	b lbl_804B299C
lbl_804B28D4:
/* 804B28D4  A8 16 00 16 */	lha r0, 0x16(r22)
/* 804B28D8  2C 00 00 00 */	cmpwi r0, 0
/* 804B28DC  40 82 00 B8 */	bne lbl_804B2994
/* 804B28E0  2C 1E 00 02 */	cmpwi r30, 2
/* 804B28E4  41 82 00 30 */	beq lbl_804B2914
/* 804B28E8  40 80 00 80 */	bge lbl_804B2968
/* 804B28EC  2C 1E 00 01 */	cmpwi r30, 1
/* 804B28F0  40 80 00 08 */	bge lbl_804B28F8
/* 804B28F4  48 00 00 74 */	b lbl_804B2968
lbl_804B28F8:
/* 804B28F8  B2 F6 00 1A */	sth r23, 0x1a(r22)
/* 804B28FC  3C 60 80 64 */	lis r3, data_80645FEC@ha /* 0x80645FEC@ha */
/* 804B2900  C0 03 5F EC */	lfs f0, data_80645FEC@l(r3)  /* 0x80645FEC@l */
/* 804B2904  3B 60 00 01 */	li r27, 1
/* 804B2908  B3 96 00 18 */	sth r28, 0x18(r22)
/* 804B290C  D0 16 00 0C */	stfs f0, 0xc(r22)
/* 804B2910  48 00 00 58 */	b lbl_804B2968
lbl_804B2914:
/* 804B2914  B2 F6 00 1A */	sth r23, 0x1a(r22)
/* 804B2918  3C 60 80 64 */	lis r3, lit_845@ha /* 0x80646014@ha */
/* 804B291C  38 83 60 14 */	addi r4, r3, lit_845@l /* 0x80646014@l */
/* 804B2920  C0 04 00 00 */	lfs f0, 0(r4)
/* 804B2924  7E C3 B3 78 */	mr r3, r22
/* 804B2928  B3 96 00 18 */	sth r28, 0x18(r22)
/* 804B292C  38 81 00 50 */	addi r4, r1, 0x50
/* 804B2930  D0 16 00 0C */	stfs f0, 0xc(r22)
/* 804B2934  4B F0 85 89 */	bl xyz_t_move
/* 804B2938  80 D6 00 00 */	lwz r6, 0(r22)
/* 804B293C  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 804B2940  80 16 00 04 */	lwz r0, 4(r22)
/* 804B2944  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
/* 804B2948  38 81 00 08 */	addi r4, r1, 8
/* 804B294C  38 A0 00 01 */	li r5, 1
/* 804B2950  90 C1 00 08 */	stw r6, 8(r1)
/* 804B2954  90 01 00 0C */	stw r0, 0xc(r1)
/* 804B2958  80 16 00 08 */	lwz r0, 8(r22)
/* 804B295C  90 01 00 10 */	stw r0, 0x10(r1)
/* 804B2960  4B EF 4E D1 */	bl mFI_SetFG_common
/* 804B2964  3B 60 00 01 */	li r27, 1
lbl_804B2968:
/* 804B2968  2C 1B 00 00 */	cmpwi r27, 0
/* 804B296C  41 82 00 28 */	beq lbl_804B2994
/* 804B2970  B3 36 00 16 */	sth r25, 0x16(r22)
/* 804B2974  7E C3 B3 78 */	mr r3, r22
/* 804B2978  38 81 00 50 */	addi r4, r1, 0x50
/* 804B297C  4B F0 85 41 */	bl xyz_t_move
/* 804B2980  38 00 00 00 */	li r0, 0
/* 804B2984  B0 16 00 1C */	sth r0, 0x1c(r22)
/* 804B2988  B3 16 00 1E */	sth r24, 0x1e(r22)
/* 804B298C  B3 F6 00 20 */	sth r31, 0x20(r22)
/* 804B2990  B3 56 00 22 */	sth r26, 0x22(r22)
lbl_804B2994:
/* 804B2994  3B BD 00 01 */	addi r29, r29, 1
/* 804B2998  3A D6 00 24 */	addi r22, r22, 0x24
lbl_804B299C:
/* 804B299C  2C 1B 00 00 */	cmpwi r27, 0
/* 804B29A0  40 82 00 0C */	bne lbl_804B29AC
/* 804B29A4  2C 1D 00 01 */	cmpwi r29, 1
/* 804B29A8  41 80 FF 2C */	blt lbl_804B28D4
lbl_804B29AC:
/* 804B29AC  7F 63 DB 78 */	mr r3, r27
/* 804B29B0  39 61 00 90 */	addi r11, r1, 0x90
/* 804B29B4  4B BE 85 51 */	bl func_8009AF04
/* 804B29B8  80 01 00 94 */	lwz r0, 0x94(r1)
/* 804B29BC  7C 08 03 A6 */	mtlr r0
/* 804B29C0  38 21 00 90 */	addi r1, r1, 0x90
/* 804B29C4  4E 80 00 20 */	blr 
