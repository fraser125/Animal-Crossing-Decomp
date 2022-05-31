lbl_805FC804:
/* 805FC804  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805FC808  7C 08 02 A6 */	mflr r0
/* 805FC80C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805FC810  39 61 00 20 */	addi r11, r1, 0x20
/* 805FC814  4B A9 E6 BD */	bl func_8009AED0
/* 805FC818  7C 9E 23 78 */	mr r30, r4
/* 805FC81C  7C 7D 1B 78 */	mr r29, r3
/* 805FC820  80 04 00 00 */	lwz r0, 0(r4)
/* 805FC824  7C BF 2B 78 */	mr r31, r5
/* 805FC828  2C 00 00 01 */	cmpwi r0, 1
/* 805FC82C  40 82 00 80 */	bne lbl_805FC8AC
/* 805FC830  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 805FC834  2C 00 00 00 */	cmpwi r0, 0
/* 805FC838  40 82 00 74 */	bne lbl_805FC8AC
/* 805FC83C  4B FF 2D A9 */	bl func_805EF5E4
/* 805FC840  2C 03 00 01 */	cmpwi r3, 1
/* 805FC844  40 82 00 68 */	bne lbl_805FC8AC
/* 805FC848  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 805FC84C  80 63 09 88 */	lwz r3, 0x988(r3)
/* 805FC850  88 03 03 F2 */	lbz r0, 0x3f2(r3)
/* 805FC854  28 00 00 01 */	cmplwi r0, 1
/* 805FC858  40 82 00 0C */	bne lbl_805FC864
/* 805FC85C  38 E0 00 00 */	li r7, 0
/* 805FC860  48 00 00 18 */	b lbl_805FC878
lbl_805FC864:
/* 805FC864  28 00 00 00 */	cmplwi r0, 0
/* 805FC868  40 82 00 0C */	bne lbl_805FC874
/* 805FC86C  38 E0 00 02 */	li r7, 2
/* 805FC870  48 00 00 08 */	b lbl_805FC878
lbl_805FC874:
/* 805FC874  38 E0 00 01 */	li r7, 1
lbl_805FC878:
/* 805FC878  3C 80 80 65 */	lis r4, data_8064B814@ha /* 0x8064B814@ha */
/* 805FC87C  7F A3 EB 78 */	mr r3, r29
/* 805FC880  C0 24 B8 14 */	lfs f1, data_8064B814@l(r4)  /* 0x8064B814@l */
/* 805FC884  38 80 00 08 */	li r4, 8
/* 805FC888  38 A0 00 00 */	li r5, 0
/* 805FC88C  38 C0 00 00 */	li r6, 0
/* 805FC890  FC 40 08 90 */	fmr f2, f1
/* 805FC894  4B FF 57 B1 */	bl mTG_init_tag_data
/* 805FC898  7F A3 EB 78 */	mr r3, r29
/* 805FC89C  7F C4 F3 78 */	mr r4, r30
/* 805FC8A0  7F E5 FB 78 */	mr r5, r31
/* 805FC8A4  4B FF EA 49 */	bl mTG_select_tag_decide_wchange
/* 805FC8A8  48 00 01 18 */	b lbl_805FC9C0
lbl_805FC8AC:
/* 805FC8AC  80 1E 00 00 */	lwz r0, 0(r30)
/* 805FC8B0  2C 00 00 14 */	cmpwi r0, 0x14
/* 805FC8B4  40 82 00 78 */	bne lbl_805FC92C
/* 805FC8B8  7F A3 EB 78 */	mr r3, r29
/* 805FC8BC  4B FF 2D 29 */	bl func_805EF5E4
/* 805FC8C0  2C 03 00 01 */	cmpwi r3, 1
/* 805FC8C4  40 82 00 68 */	bne lbl_805FC92C
/* 805FC8C8  80 BD 00 2C */	lwz r5, 0x2c(r29)
/* 805FC8CC  38 C0 00 09 */	li r6, 9
/* 805FC8D0  7F A3 EB 78 */	mr r3, r29
/* 805FC8D4  7F C4 F3 78 */	mr r4, r30
/* 805FC8D8  80 E5 09 CC */	lwz r7, 0x9cc(r5)
/* 805FC8DC  7F E5 FB 78 */	mr r5, r31
/* 805FC8E0  3C E7 00 01 */	addis r7, r7, 1
/* 805FC8E4  88 E7 D9 F4 */	lbz r7, -0x260c(r7)
/* 805FC8E8  38 E7 00 01 */	addi r7, r7, 1
/* 805FC8EC  7C 07 33 D6 */	divw r0, r7, r6
/* 805FC8F0  7C 00 31 D6 */	mullw r0, r0, r6
/* 805FC8F4  7C 00 38 50 */	subf r0, r0, r7
/* 805FC8F8  90 1F 00 40 */	stw r0, 0x40(r31)
/* 805FC8FC  4B FF EB B9 */	bl mTG_select_tag_decide_catalog_wchange
/* 805FC900  3C 80 80 65 */	lis r4, data_8064B814@ha /* 0x8064B814@ha */
/* 805FC904  7F A3 EB 78 */	mr r3, r29
/* 805FC908  38 A4 B8 14 */	addi r5, r4, data_8064B814@l /* 0x8064B814@l */
/* 805FC90C  38 80 00 0E */	li r4, 0xe
/* 805FC910  C0 25 00 00 */	lfs f1, 0(r5)
/* 805FC914  38 A0 00 00 */	li r5, 0
/* 805FC918  38 C0 00 00 */	li r6, 0
/* 805FC91C  38 E0 00 00 */	li r7, 0
/* 805FC920  FC 40 08 90 */	fmr f2, f1
/* 805FC924  4B FF 57 21 */	bl mTG_init_tag_data
/* 805FC928  48 00 00 98 */	b lbl_805FC9C0
lbl_805FC92C:
/* 805FC92C  80 1E 00 00 */	lwz r0, 0(r30)
/* 805FC930  2C 00 00 11 */	cmpwi r0, 0x11
/* 805FC934  40 82 00 48 */	bne lbl_805FC97C
/* 805FC938  80 BD 00 2C */	lwz r5, 0x2c(r29)
/* 805FC93C  7F A3 EB 78 */	mr r3, r29
/* 805FC940  83 9F 00 40 */	lwz r28, 0x40(r31)
/* 805FC944  7F C4 F3 78 */	mr r4, r30
/* 805FC948  80 C5 09 C0 */	lwz r6, 0x9c0(r5)
/* 805FC94C  7F E5 FB 78 */	mr r5, r31
/* 805FC950  88 C6 0B A8 */	lbz r6, 0xba8(r6)
/* 805FC954  38 C6 00 01 */	addi r6, r6, 1
/* 805FC958  54 C0 E8 04 */	slwi r0, r6, 0x1d
/* 805FC95C  54 C6 0F FE */	srwi r6, r6, 0x1f
/* 805FC960  7C 06 00 50 */	subf r0, r6, r0
/* 805FC964  54 00 18 3E */	rotlwi r0, r0, 3
/* 805FC968  7C 00 32 14 */	add r0, r0, r6
/* 805FC96C  90 1F 00 40 */	stw r0, 0x40(r31)
/* 805FC970  4B FF EA 01 */	bl mTG_select_tag_decide_cpmail_wchange
/* 805FC974  93 9F 00 40 */	stw r28, 0x40(r31)
/* 805FC978  48 00 00 48 */	b lbl_805FC9C0
lbl_805FC97C:
/* 805FC97C  2C 00 00 18 */	cmpwi r0, 0x18
/* 805FC980  40 82 00 40 */	bne lbl_805FC9C0
/* 805FC984  83 9F 00 40 */	lwz r28, 0x40(r31)
/* 805FC988  7F A3 EB 78 */	mr r3, r29
/* 805FC98C  4B FD 08 BD */	bl mCO_top_folder
/* 805FC990  38 A3 00 01 */	addi r5, r3, 1
/* 805FC994  7F A3 EB 78 */	mr r3, r29
/* 805FC998  54 A0 E8 04 */	slwi r0, r5, 0x1d
/* 805FC99C  7F C4 F3 78 */	mr r4, r30
/* 805FC9A0  54 A6 0F FE */	srwi r6, r5, 0x1f
/* 805FC9A4  7F E5 FB 78 */	mr r5, r31
/* 805FC9A8  7C 06 00 50 */	subf r0, r6, r0
/* 805FC9AC  54 00 18 3E */	rotlwi r0, r0, 3
/* 805FC9B0  7C 00 32 14 */	add r0, r0, r6
/* 805FC9B4  90 1F 00 40 */	stw r0, 0x40(r31)
/* 805FC9B8  4B FF EE D5 */	bl mTG_select_tag_decide_cporiginal_wc
/* 805FC9BC  93 9F 00 40 */	stw r28, 0x40(r31)
lbl_805FC9C0:
/* 805FC9C0  39 61 00 20 */	addi r11, r1, 0x20
/* 805FC9C4  4B A9 E5 59 */	bl func_8009AF1C
/* 805FC9C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805FC9CC  7C 08 03 A6 */	mtlr r0
/* 805FC9D0  38 21 00 20 */	addi r1, r1, 0x20
/* 805FC9D4  4E 80 00 20 */	blr 
