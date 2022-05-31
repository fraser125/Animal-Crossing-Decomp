lbl_803A2918:
/* 803A2918  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A291C  7C 08 02 A6 */	mflr r0
/* 803A2920  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A2924  39 61 00 20 */	addi r11, r1, 0x20
/* 803A2928  4B CF 85 AD */	bl func_8009AED4
/* 803A292C  3C E0 81 14 */	lis r7, common_data@ha /* 0x81138538@ha */
/* 803A2930  7C 7E 1B 79 */	or. r30, r3, r3
/* 803A2934  38 E7 85 38 */	addi r7, r7, common_data@l /* 0x81138538@l */
/* 803A2938  7C 9F 23 78 */	mr r31, r4
/* 803A293C  3C 67 00 02 */	addis r3, r7, 2
/* 803A2940  7C DD 33 78 */	mr r29, r6
/* 803A2944  A0 83 65 1C */	lhz r4, 0x651c(r3)
/* 803A2948  41 82 00 40 */	beq lbl_803A2988
/* 803A294C  80 07 00 14 */	lwz r0, 0x14(r7)
/* 803A2950  2C 00 00 30 */	cmpwi r0, 0x30
/* 803A2954  40 82 00 34 */	bne lbl_803A2988
/* 803A2958  38 00 02 E7 */	li r0, 0x2e7
/* 803A295C  7C 1D 00 51 */	subf. r0, r29, r0
/* 803A2960  40 80 00 08 */	bge lbl_803A2968
/* 803A2964  38 00 00 00 */	li r0, 0
lbl_803A2968:
/* 803A2968  54 00 10 3A */	slwi r0, r0, 2
/* 803A296C  7C 9F 00 2E */	lwzx r4, r31, r0
/* 803A2970  28 04 00 00 */	cmplwi r4, 0
/* 803A2974  41 82 00 8C */	beq lbl_803A2A00
/* 803A2978  7F C3 F3 78 */	mr r3, r30
/* 803A297C  38 84 00 02 */	addi r4, r4, 2
/* 803A2980  4B FF F9 35 */	bl mFM_FgUtDataSet
/* 803A2984  48 00 00 7C */	b lbl_803A2A00
lbl_803A2988:
/* 803A2988  28 1E 00 00 */	cmplwi r30, 0
/* 803A298C  41 82 00 74 */	beq lbl_803A2A00
/* 803A2990  54 A0 04 3E */	clrlwi r0, r5, 0x10
/* 803A2994  28 00 40 00 */	cmplwi r0, 0x4000
/* 803A2998  40 82 00 68 */	bne lbl_803A2A00
/* 803A299C  54 80 A7 3E */	rlwinm r0, r4, 0x14, 0x1c, 0x1f
/* 803A29A0  2C 00 00 0E */	cmpwi r0, 0xe
/* 803A29A4  40 82 00 5C */	bne lbl_803A2A00
/* 803A29A8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803A29AC  38 A0 00 0F */	li r5, 0xf
/* 803A29B0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803A29B4  3C 63 00 01 */	addis r3, r3, 1
/* 803A29B8  38 63 74 38 */	addi r3, r3, 0x7438
/* 803A29BC  48 02 9D 21 */	bl mNpc_SearchAnimalinfo
/* 803A29C0  1C 83 00 38 */	mulli r4, r3, 0x38
/* 803A29C4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803A29C8  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 803A29CC  7C 60 22 14 */	add r3, r0, r4
/* 803A29D0  3C 63 00 02 */	addis r3, r3, 2
/* 803A29D4  A0 03 61 96 */	lhz r0, 0x6196(r3)
/* 803A29D8  7C 1D 00 51 */	subf. r0, r29, r0
/* 803A29DC  40 80 00 08 */	bge lbl_803A29E4
/* 803A29E0  38 00 00 00 */	li r0, 0
lbl_803A29E4:
/* 803A29E4  54 00 10 3A */	slwi r0, r0, 2
/* 803A29E8  7C 9F 00 2E */	lwzx r4, r31, r0
/* 803A29EC  28 04 00 00 */	cmplwi r4, 0
/* 803A29F0  41 82 00 10 */	beq lbl_803A2A00
/* 803A29F4  7F C3 F3 78 */	mr r3, r30
/* 803A29F8  38 84 00 02 */	addi r4, r4, 2
/* 803A29FC  4B FF F8 B9 */	bl mFM_FgUtDataSet
lbl_803A2A00:
/* 803A2A00  39 61 00 20 */	addi r11, r1, 0x20
/* 803A2A04  4B CF 85 1D */	bl func_8009AF20
/* 803A2A08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A2A0C  7C 08 03 A6 */	mtlr r0
/* 803A2A10  38 21 00 20 */	addi r1, r1, 0x20
/* 803A2A14  4E 80 00 20 */	blr 
