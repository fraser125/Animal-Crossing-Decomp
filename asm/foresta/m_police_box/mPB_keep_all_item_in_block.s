lbl_803DE8E4:
/* 803DE8E4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 803DE8E8  7C 08 02 A6 */	mflr r0
/* 803DE8EC  90 01 00 64 */	stw r0, 0x64(r1)
/* 803DE8F0  39 61 00 60 */	addi r11, r1, 0x60
/* 803DE8F4  4B CB C5 CD */	bl func_8009AEC0
/* 803DE8F8  7C 7D 1B 78 */	mr r29, r3
/* 803DE8FC  7C 9E 23 78 */	mr r30, r4
/* 803DE900  4B FF FF 19 */	bl mPB_get_keep_item_sum
/* 803DE904  7C 7B 1B 78 */	mr r27, r3
/* 803DE908  7F A3 EB 78 */	mr r3, r29
/* 803DE90C  7F C4 F3 78 */	mr r4, r30
/* 803DE910  4B FC 88 45 */	bl mFI_BkNumtoUtFGTop
/* 803DE914  7C 60 1B 78 */	mr r0, r3
/* 803DE918  38 61 00 08 */	addi r3, r1, 8
/* 803DE91C  7C 19 03 78 */	mr r25, r0
/* 803DE920  3B E0 00 00 */	li r31, 0
/* 803DE924  3B 80 00 00 */	li r28, 0
/* 803DE928  38 80 00 28 */	li r4, 0x28
/* 803DE92C  4B C7 E7 3D */	bl bzero
/* 803DE930  3B 00 00 00 */	li r24, 0
lbl_803DE934:
/* 803DE934  A3 59 00 00 */	lhz r26, 0(r25)
/* 803DE938  57 43 A7 3E */	rlwinm r3, r26, 0x14, 0x1c, 0x1f
/* 803DE93C  38 03 FF FF */	addi r0, r3, -1
/* 803DE940  28 00 00 01 */	cmplwi r0, 1
/* 803DE944  40 81 00 0C */	ble lbl_803DE950
/* 803DE948  2C 03 00 03 */	cmpwi r3, 3
/* 803DE94C  40 82 00 50 */	bne lbl_803DE99C
lbl_803DE950:
/* 803DE950  2C 1F 00 14 */	cmpwi r31, 0x14
/* 803DE954  40 80 00 18 */	bge lbl_803DE96C
/* 803DE958  38 61 00 08 */	addi r3, r1, 8
/* 803DE95C  3B FF 00 01 */	addi r31, r31, 1
/* 803DE960  7F 43 E3 2E */	sthx r26, r3, r28
/* 803DE964  3B 9C 00 02 */	addi r28, r28, 2
/* 803DE968  48 00 00 2C */	b lbl_803DE994
lbl_803DE96C:
/* 803DE96C  4B C7 E3 89 */	bl fqrand
/* 803DE970  3C 80 80 64 */	lis r4, data_806430DC@ha /* 0x806430DC@ha */
/* 803DE974  38 61 00 08 */	addi r3, r1, 8
/* 803DE978  C0 04 30 DC */	lfs f0, data_806430DC@l(r4)  /* 0x806430DC@l */
/* 803DE97C  EC 00 00 72 */	fmuls f0, f0, f1
/* 803DE980  FC 00 00 1E */	fctiwz f0, f0
/* 803DE984  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 803DE988  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803DE98C  54 00 08 3C */	slwi r0, r0, 1
/* 803DE990  7F 43 03 2E */	sthx r26, r3, r0
lbl_803DE994:
/* 803DE994  38 00 00 00 */	li r0, 0
/* 803DE998  B0 19 00 00 */	sth r0, 0(r25)
lbl_803DE99C:
/* 803DE99C  3B 18 00 01 */	addi r24, r24, 1
/* 803DE9A0  3B 39 00 02 */	addi r25, r25, 2
/* 803DE9A4  2C 18 01 00 */	cmpwi r24, 0x100
/* 803DE9A8  41 80 FF 8C */	blt lbl_803DE934
/* 803DE9AC  2C 1F 00 00 */	cmpwi r31, 0
/* 803DE9B0  40 81 00 A0 */	ble lbl_803DEA50
/* 803DE9B4  7C 9F DA 14 */	add r4, r31, r27
/* 803DE9B8  2C 04 00 14 */	cmpwi r4, 0x14
/* 803DE9BC  41 81 00 2C */	bgt lbl_803DE9E8
/* 803DE9C0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803DE9C4  57 65 08 3C */	slwi r5, r27, 1
/* 803DE9C8  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 803DE9CC  38 81 00 08 */	addi r4, r1, 8
/* 803DE9D0  7C 60 2A 14 */	add r3, r0, r5
/* 803DE9D4  57 E5 08 3C */	slwi r5, r31, 1
/* 803DE9D8  3C 63 00 02 */	addis r3, r3, 2
/* 803DE9DC  38 63 0E D0 */	addi r3, r3, 0xed0
/* 803DE9E0  4B FD C0 45 */	bl func_803BAA24
/* 803DE9E4  48 00 00 6C */	b lbl_803DEA50
lbl_803DE9E8:
/* 803DE9E8  38 C4 FF EC */	addi r6, r4, -20
/* 803DE9EC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803DE9F0  7C E6 D8 51 */	subf. r7, r6, r27
/* 803DE9F4  38 80 00 00 */	li r4, 0
/* 803DE9F8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803DE9FC  3C A3 00 02 */	addis r5, r3, 2
/* 803DEA00  38 60 00 00 */	li r3, 0
/* 803DEA04  7C E9 03 A6 */	mtctr r7
/* 803DEA08  38 A5 0E D0 */	addi r5, r5, 0xed0
/* 803DEA0C  40 81 00 20 */	ble lbl_803DEA2C
lbl_803DEA10:
/* 803DEA10  7C 04 32 14 */	add r0, r4, r6
/* 803DEA14  38 84 00 01 */	addi r4, r4, 1
/* 803DEA18  54 00 08 3C */	slwi r0, r0, 1
/* 803DEA1C  7C 05 02 2E */	lhzx r0, r5, r0
/* 803DEA20  7C 05 1B 2E */	sthx r0, r5, r3
/* 803DEA24  38 63 00 02 */	addi r3, r3, 2
/* 803DEA28  42 00 FF E8 */	bdnz lbl_803DEA10
lbl_803DEA2C:
/* 803DEA2C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803DEA30  54 E5 08 3C */	slwi r5, r7, 1
/* 803DEA34  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 803DEA38  38 81 00 08 */	addi r4, r1, 8
/* 803DEA3C  7C 60 2A 14 */	add r3, r0, r5
/* 803DEA40  57 E5 08 3C */	slwi r5, r31, 1
/* 803DEA44  3C 63 00 02 */	addis r3, r3, 2
/* 803DEA48  38 63 0E D0 */	addi r3, r3, 0xed0
/* 803DEA4C  4B FD BF D9 */	bl func_803BAA24
lbl_803DEA50:
/* 803DEA50  7F A3 EB 78 */	mr r3, r29
/* 803DEA54  7F C4 F3 78 */	mr r4, r30
/* 803DEA58  4B FC A2 BD */	bl mFI_ClearDeposit
/* 803DEA5C  39 61 00 60 */	addi r11, r1, 0x60
/* 803DEA60  4B CB C4 AD */	bl func_8009AF0C
/* 803DEA64  80 01 00 64 */	lwz r0, 0x64(r1)
/* 803DEA68  7C 08 03 A6 */	mtlr r0
/* 803DEA6C  38 21 00 60 */	addi r1, r1, 0x60
/* 803DEA70  4E 80 00 20 */	blr 
