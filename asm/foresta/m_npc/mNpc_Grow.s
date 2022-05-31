lbl_803D27EC:
/* 803D27EC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803D27F0  7C 08 02 A6 */	mflr r0
/* 803D27F4  90 01 00 44 */	stw r0, 0x44(r1)
/* 803D27F8  39 61 00 40 */	addi r11, r1, 0x40
/* 803D27FC  4B CC 86 C9 */	bl func_8009AEC4
/* 803D2800  4B FF FA 15 */	bl mNpc_CheckGrow
/* 803D2804  2C 03 00 01 */	cmpwi r3, 1
/* 803D2808  40 82 01 9C */	bne lbl_803D29A4
/* 803D280C  4B FF C9 81 */	bl mNpc_ResetHaveAppeared
/* 803D2810  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803D2814  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803D2818  3C 63 00 02 */	addis r3, r3, 2
/* 803D281C  7C 64 1B 78 */	mr r4, r3
/* 803D2820  38 84 61 20 */	addi r4, r4, 0x6120
/* 803D2824  38 63 12 DC */	addi r3, r3, 0x12dc
/* 803D2828  48 03 4A 0D */	bl lbRTC_TimeCopy
/* 803D282C  38 61 00 08 */	addi r3, r1, 8
/* 803D2830  38 81 00 0C */	addi r4, r1, 0xc
/* 803D2834  4B FF FA D5 */	bl mNpc_GetMinLooks
/* 803D2838  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 803D283C  7C 7F 1B 78 */	mr r31, r3
/* 803D2840  28 00 00 06 */	cmplwi r0, 6
/* 803D2844  40 82 01 14 */	bne lbl_803D2958
/* 803D2848  4B FF FC 1D */	bl mNpc_GetMinSex
/* 803D284C  7C 7D 1B 78 */	mr r29, r3
/* 803D2850  2C 1D 00 02 */	cmpwi r29, 2
/* 803D2854  41 82 00 88 */	beq lbl_803D28DC
/* 803D2858  8B 61 00 08 */	lbz r27, 8(r1)
/* 803D285C  3B 20 00 00 */	li r25, 0
/* 803D2860  83 41 00 0C */	lwz r26, 0xc(r1)
/* 803D2864  3B C0 00 01 */	li r30, 1
/* 803D2868  48 00 00 4C */	b lbl_803D28B4
lbl_803D286C:
/* 803D286C  88 01 00 08 */	lbz r0, 8(r1)
/* 803D2870  57 3C 06 3E */	clrlwi r28, r25, 0x18
/* 803D2874  7C 00 E6 30 */	sraw r0, r0, r28
/* 803D2878  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 803D287C  2C 00 00 01 */	cmpwi r0, 1
/* 803D2880  40 82 00 30 */	bne lbl_803D28B0
/* 803D2884  7F 83 E3 78 */	mr r3, r28
/* 803D2888  4B FF F6 E1 */	bl mNpc_GetLooks2Sex
/* 803D288C  7C 1D 18 00 */	cmpw r29, r3
/* 803D2890  41 82 00 20 */	beq lbl_803D28B0
/* 803D2894  80 61 00 0C */	lwz r3, 0xc(r1)
/* 803D2898  7F C4 E0 30 */	slw r4, r30, r28
/* 803D289C  88 A1 00 08 */	lbz r5, 8(r1)
/* 803D28A0  38 03 FF FF */	addi r0, r3, -1
/* 803D28A4  7C A3 20 78 */	andc r3, r5, r4
/* 803D28A8  90 01 00 0C */	stw r0, 0xc(r1)
/* 803D28AC  98 61 00 08 */	stb r3, 8(r1)
lbl_803D28B0:
/* 803D28B0  3B 39 00 01 */	addi r25, r25, 1
lbl_803D28B4:
/* 803D28B4  57 20 06 3E */	clrlwi r0, r25, 0x18
/* 803D28B8  28 00 00 06 */	cmplwi r0, 6
/* 803D28BC  41 80 FF B0 */	blt lbl_803D286C
/* 803D28C0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803D28C4  2C 00 00 00 */	cmpwi r0, 0
/* 803D28C8  41 82 00 0C */	beq lbl_803D28D4
/* 803D28CC  7C 00 D0 00 */	cmpw r0, r26
/* 803D28D0  40 82 00 0C */	bne lbl_803D28DC
lbl_803D28D4:
/* 803D28D4  9B 61 00 08 */	stb r27, 8(r1)
/* 803D28D8  93 41 00 0C */	stw r26, 0xc(r1)
lbl_803D28DC:
/* 803D28DC  4B C8 A4 19 */	bl fqrand
/* 803D28E0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 803D28E4  3C 00 43 30 */	lis r0, 0x4330
/* 803D28E8  90 01 00 10 */	stw r0, 0x10(r1)
/* 803D28EC  3C 60 80 64 */	lis r3, data_806428CC@ha /* 0x806428CC@ha */
/* 803D28F0  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 803D28F4  C8 43 28 CC */	lfd f2, data_806428CC@l(r3)  /* 0x806428CC@l */
/* 803D28F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D28FC  38 60 00 00 */	li r3, 0
/* 803D2900  88 81 00 08 */	lbz r4, 8(r1)
/* 803D2904  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 803D2908  EC 00 10 28 */	fsubs f0, f0, f2
/* 803D290C  EC 00 00 72 */	fmuls f0, f0, f1
/* 803D2910  FC 00 00 1E */	fctiwz f0, f0
/* 803D2914  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 803D2918  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 803D291C  48 00 00 30 */	b lbl_803D294C
lbl_803D2920:
/* 803D2920  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 803D2924  7C 80 06 30 */	sraw r0, r4, r0
/* 803D2928  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 803D292C  2C 00 00 01 */	cmpwi r0, 1
/* 803D2930  40 82 00 18 */	bne lbl_803D2948
/* 803D2934  2C 05 00 00 */	cmpwi r5, 0
/* 803D2938  41 81 00 0C */	bgt lbl_803D2944
/* 803D293C  7C 7F 1B 78 */	mr r31, r3
/* 803D2940  48 00 00 18 */	b lbl_803D2958
lbl_803D2944:
/* 803D2944  38 A5 FF FF */	addi r5, r5, -1
lbl_803D2948:
/* 803D2948  38 63 00 01 */	addi r3, r3, 1
lbl_803D294C:
/* 803D294C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 803D2950  28 00 00 06 */	cmplwi r0, 6
/* 803D2954  41 80 FF CC */	blt lbl_803D2920
lbl_803D2958:
/* 803D2958  7F E3 FB 78 */	mr r3, r31
/* 803D295C  4B FF FD F9 */	bl mNpc_SetGrowNpc
/* 803D2960  2C 03 00 00 */	cmpwi r3, 0
/* 803D2964  41 80 00 40 */	blt lbl_803D29A4
/* 803D2968  2C 03 00 0F */	cmpwi r3, 0xf
/* 803D296C  40 80 00 38 */	bge lbl_803D29A4
/* 803D2970  1C A3 09 88 */	mulli r5, r3, 0x988
/* 803D2974  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803D2978  38 80 00 01 */	li r4, 1
/* 803D297C  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 803D2980  7C 60 2A 14 */	add r3, r0, r5
/* 803D2984  3C 63 00 01 */	addis r3, r3, 1
/* 803D2988  38 63 74 38 */	addi r3, r3, 0x7438
/* 803D298C  4B FF ED 51 */	bl mNpc_SetNpcNameID
/* 803D2990  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803D2994  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803D2998  38 63 00 18 */	addi r3, r3, 0x18
/* 803D299C  4B FF 89 B9 */	bl mNpc_AddNowNpcMax
/* 803D29A0  4B FF DC FD */	bl mNpc_RenewRemoveHistory
lbl_803D29A4:
/* 803D29A4  39 61 00 40 */	addi r11, r1, 0x40
/* 803D29A8  4B CC 85 69 */	bl func_8009AF10
/* 803D29AC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803D29B0  7C 08 03 A6 */	mtlr r0
/* 803D29B4  38 21 00 40 */	addi r1, r1, 0x40
/* 803D29B8  4E 80 00 20 */	blr 
