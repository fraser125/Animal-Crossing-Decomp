lbl_803BA818:
/* 803BA818  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803BA81C  7C 08 02 A6 */	mflr r0
/* 803BA820  90 01 00 24 */	stw r0, 0x24(r1)
/* 803BA824  39 61 00 20 */	addi r11, r1, 0x20
/* 803BA828  4B CE 06 AD */	bl func_8009AED4
/* 803BA82C  38 60 00 00 */	li r3, 0
/* 803BA830  48 03 8B D1 */	bl mTM_check_renew_time
/* 803BA834  2C 03 00 00 */	cmpwi r3, 0
/* 803BA838  41 82 00 64 */	beq lbl_803BA89C
/* 803BA83C  4B FF FE 99 */	bl mEnv_DecideWeather_GameStart
/* 803BA840  38 60 00 00 */	li r3, 0
/* 803BA844  48 03 8B E9 */	bl mTM_off_renew_time
/* 803BA848  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803BA84C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803BA850  3F E3 00 02 */	addis r31, r3, 2
/* 803BA854  A8 7F 66 6C */	lha r3, 0x666c(r31)
/* 803BA858  88 1F 0F 19 */	lbz r0, 0xf19(r31)
/* 803BA85C  54 7D 06 3F */	clrlwi. r29, r3, 0x18
/* 803BA860  A8 7F 66 6E */	lha r3, 0x666e(r31)
/* 803BA864  54 00 E7 3E */	rlwinm r0, r0, 0x1c, 0x1c, 0x1f
/* 803BA868  54 7E 06 3E */	clrlwi r30, r3, 0x18
/* 803BA86C  41 82 00 0C */	beq lbl_803BA878
/* 803BA870  28 1D 00 03 */	cmplwi r29, 3
/* 803BA874  40 82 00 18 */	bne lbl_803BA88C
lbl_803BA878:
/* 803BA878  28 00 00 02 */	cmplwi r0, 2
/* 803BA87C  41 82 00 0C */	beq lbl_803BA888
/* 803BA880  28 00 00 01 */	cmplwi r0, 1
/* 803BA884  40 82 00 08 */	bne lbl_803BA88C
lbl_803BA888:
/* 803BA888  4B FF FF 6D */	bl mEnv_PreRainNowFine_Init
lbl_803BA88C:
/* 803BA88C  57 A0 25 36 */	rlwinm r0, r29, 4, 0x14, 0x1b
/* 803BA890  7F C0 03 78 */	or r0, r30, r0
/* 803BA894  98 1F 0F 19 */	stb r0, 0xf19(r31)
/* 803BA898  48 00 00 5C */	b lbl_803BA8F4
lbl_803BA89C:
/* 803BA89C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803BA8A0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803BA8A4  3F E3 00 02 */	addis r31, r3, 2
/* 803BA8A8  88 1F 0F 19 */	lbz r0, 0xf19(r31)
/* 803BA8AC  54 1E E7 3E */	rlwinm r30, r0, 0x1c, 0x1c, 0x1f
/* 803BA8B0  54 1D 07 3E */	clrlwi r29, r0, 0x1c
/* 803BA8B4  4B FE 02 7D */	bl mEv_CheckRealArbeit
/* 803BA8B8  2C 03 00 01 */	cmpwi r3, 1
/* 803BA8BC  40 82 00 1C */	bne lbl_803BA8D8
/* 803BA8C0  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 803BA8C4  28 00 00 01 */	cmplwi r0, 1
/* 803BA8C8  40 82 00 10 */	bne lbl_803BA8D8
/* 803BA8CC  3B C0 00 00 */	li r30, 0
/* 803BA8D0  9B DF 0F 19 */	stb r30, 0xf19(r31)
/* 803BA8D4  7F DD F3 78 */	mr r29, r30
lbl_803BA8D8:
/* 803BA8D8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803BA8DC  57 C4 06 3E */	clrlwi r4, r30, 0x18
/* 803BA8E0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803BA8E4  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 803BA8E8  3C 63 00 02 */	addis r3, r3, 2
/* 803BA8EC  B0 83 66 6C */	sth r4, 0x666c(r3)
/* 803BA8F0  B0 03 66 6E */	sth r0, 0x666e(r3)
lbl_803BA8F4:
/* 803BA8F4  4B CA 24 01 */	bl fqrand
/* 803BA8F8  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 803BA8FC  3C 00 43 30 */	lis r0, 0x4330
/* 803BA900  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 803BA904  3C A0 80 64 */	lis r5, lit_778@ha /* 0x80642498@ha */
/* 803BA908  80 84 00 00 */	lwz r4, 0(r4)
/* 803BA90C  3C 60 80 64 */	lis r3, lit_471@ha /* 0x806423EC@ha */
/* 803BA910  3C C0 80 64 */	lis r6, lit_777@ha /* 0x80642494@ha */
/* 803BA914  90 01 00 08 */	stw r0, 8(r1)
/* 803BA918  A8 84 1B 78 */	lha r4, 0x1b78(r4)
/* 803BA91C  C8 43 23 EC */	lfd f2, lit_471@l(r3)  /* 0x806423EC@l */
/* 803BA920  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 803BA924  C0 65 24 98 */	lfs f3, lit_778@l(r5)  /* 0x80642498@l */
/* 803BA928  90 01 00 0C */	stw r0, 0xc(r1)
/* 803BA92C  C0 86 24 94 */	lfs f4, lit_777@l(r6)  /* 0x80642494@l */
/* 803BA930  C8 01 00 08 */	lfd f0, 8(r1)
/* 803BA934  EC 00 10 28 */	fsubs f0, f0, f2
/* 803BA938  EC 03 00 32 */	fmuls f0, f3, f0
/* 803BA93C  EC 04 00 2A */	fadds f0, f4, f0
/* 803BA940  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803BA944  40 80 00 20 */	bge lbl_803BA964
/* 803BA948  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803BA94C  38 00 00 00 */	li r0, 0
/* 803BA950  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803BA954  3C 63 00 03 */	addis r3, r3, 3
/* 803BA958  B0 03 DB A2 */	sth r0, -0x245e(r3)
/* 803BA95C  B0 03 DB A4 */	sth r0, -0x245c(r3)
/* 803BA960  48 00 00 20 */	b lbl_803BA980
lbl_803BA964:
/* 803BA964  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803BA968  38 80 00 01 */	li r4, 1
/* 803BA96C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803BA970  38 00 00 03 */	li r0, 3
/* 803BA974  3C 63 00 03 */	addis r3, r3, 3
/* 803BA978  B0 83 DB A2 */	sth r4, -0x245e(r3)
/* 803BA97C  B0 03 DB A4 */	sth r0, -0x245c(r3)
lbl_803BA980:
/* 803BA980  39 61 00 20 */	addi r11, r1, 0x20
/* 803BA984  4B CE 05 9D */	bl func_8009AF20
/* 803BA988  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803BA98C  7C 08 03 A6 */	mtlr r0
/* 803BA990  38 21 00 20 */	addi r1, r1, 0x20
/* 803BA994  4E 80 00 20 */	blr 
