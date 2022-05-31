lbl_8049D07C:
/* 8049D07C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8049D080  7C 08 02 A6 */	mflr r0
/* 8049D084  90 01 00 34 */	stw r0, 0x34(r1)
/* 8049D088  39 61 00 30 */	addi r11, r1, 0x30
/* 8049D08C  4B BF DE 3D */	bl func_8009AEC8
/* 8049D090  7C 7B 1B 78 */	mr r27, r3
/* 8049D094  7C 9C 23 78 */	mr r28, r4
/* 8049D098  4B FF FE 45 */	bl aSD_UnitNum2ItemNo
/* 8049D09C  7C 7F 1B 78 */	mr r31, r3
/* 8049D0A0  4B F4 B6 01 */	bl mSP_ItemNo2ItemPrice
/* 8049D0A4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8049D0A8  3B C0 00 00 */	li r30, 0
/* 8049D0AC  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8049D0B0  3C 84 00 02 */	addis r4, r4, 2
/* 8049D0B4  80 84 60 60 */	lwz r4, 0x6060(r4)
/* 8049D0B8  28 04 00 00 */	cmplwi r4, 0
/* 8049D0BC  41 82 03 5C */	beq lbl_8049D418
/* 8049D0C0  83 A4 00 00 */	lwz r29, 0(r4)
/* 8049D0C4  4B F4 C7 99 */	bl mSP_PlusSales
/* 8049D0C8  57 E0 04 3E */	clrlwi r0, r31, 0x10
/* 8049D0CC  28 00 2E 00 */	cmplwi r0, 0x2e00
/* 8049D0D0  40 82 00 3C */	bne lbl_8049D10C
/* 8049D0D4  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FE13@ha */
/* 8049D0D8  80 9D 01 74 */	lwz r4, 0x174(r29)
/* 8049D0DC  80 BD 01 7C */	lwz r5, 0x17c(r29)
/* 8049D0E0  7F E3 FB 78 */	mr r3, r31
/* 8049D0E4  38 C6 FE 13 */	addi r6, r6, 0xFE13 /* 0x0000FE13@l */
/* 8049D0E8  4B F4 B5 05 */	bl mSP_ShopSaleReport
/* 8049D0EC  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FE13@ha */
/* 8049D0F0  7F 64 DB 78 */	mr r4, r27
/* 8049D0F4  7F 85 E3 78 */	mr r5, r28
/* 8049D0F8  38 C0 00 00 */	li r6, 0
/* 8049D0FC  38 63 FE 13 */	addi r3, r3, 0xFE13 /* 0x0000FE13@l */
/* 8049D100  4B F0 A5 4D */	bl mFI_UtNumtoFGSet_common
/* 8049D104  38 60 00 00 */	li r3, 0
/* 8049D108  48 00 03 14 */	b lbl_8049D41C
lbl_8049D10C:
/* 8049D10C  28 00 29 00 */	cmplwi r0, 0x2900
/* 8049D110  41 80 00 0C */	blt lbl_8049D11C
/* 8049D114  28 00 29 01 */	cmplwi r0, 0x2901
/* 8049D118  40 81 00 24 */	ble lbl_8049D13C
lbl_8049D11C:
/* 8049D11C  57 E0 04 3E */	clrlwi r0, r31, 0x10
/* 8049D120  28 00 29 02 */	cmplwi r0, 0x2902
/* 8049D124  41 80 00 0C */	blt lbl_8049D130
/* 8049D128  28 00 29 0A */	cmplwi r0, 0x290a
/* 8049D12C  40 81 00 10 */	ble lbl_8049D13C
lbl_8049D130:
/* 8049D130  57 E0 04 3E */	clrlwi r0, r31, 0x10
/* 8049D134  28 00 28 06 */	cmplwi r0, 0x2806
/* 8049D138  40 82 00 4C */	bne lbl_8049D184
lbl_8049D13C:
/* 8049D13C  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FE13@ha */
/* 8049D140  80 9D 01 74 */	lwz r4, 0x174(r29)
/* 8049D144  80 BD 01 7C */	lwz r5, 0x17c(r29)
/* 8049D148  7F E3 FB 78 */	mr r3, r31
/* 8049D14C  38 C6 FE 13 */	addi r6, r6, 0xFE13 /* 0x0000FE13@l */
/* 8049D150  4B F4 B4 9D */	bl mSP_ShopSaleReport
/* 8049D154  2C 03 00 00 */	cmpwi r3, 0
/* 8049D158  41 82 00 0C */	beq lbl_8049D164
/* 8049D15C  38 60 00 01 */	li r3, 1
/* 8049D160  48 00 02 BC */	b lbl_8049D41C
lbl_8049D164:
/* 8049D164  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FE13@ha */
/* 8049D168  7F 64 DB 78 */	mr r4, r27
/* 8049D16C  7F 85 E3 78 */	mr r5, r28
/* 8049D170  38 C0 00 00 */	li r6, 0
/* 8049D174  38 63 FE 13 */	addi r3, r3, 0xFE13 /* 0x0000FE13@l */
/* 8049D178  4B F0 A4 D5 */	bl mFI_UtNumtoFGSet_common
/* 8049D17C  38 60 00 00 */	li r3, 0
/* 8049D180  48 00 02 9C */	b lbl_8049D41C
lbl_8049D184:
/* 8049D184  28 00 24 00 */	cmplwi r0, 0x2400
/* 8049D188  41 80 00 68 */	blt lbl_8049D1F0
/* 8049D18C  28 00 24 FF */	cmplwi r0, 0x24ff
/* 8049D190  41 81 00 60 */	bgt lbl_8049D1F0
/* 8049D194  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FE0F@ha */
/* 8049D198  80 9D 01 74 */	lwz r4, 0x174(r29)
/* 8049D19C  80 BD 01 7C */	lwz r5, 0x17c(r29)
/* 8049D1A0  7F E3 FB 78 */	mr r3, r31
/* 8049D1A4  38 C6 FE 0F */	addi r6, r6, 0xFE0F /* 0x0000FE0F@l */
/* 8049D1A8  4B F4 B4 45 */	bl mSP_ShopSaleReport
/* 8049D1AC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8049D1B0  7F 63 DB 78 */	mr r3, r27
/* 8049D1B4  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 8049D1B8  7F 84 E3 78 */	mr r4, r28
/* 8049D1BC  3C A5 00 02 */	addis r5, r5, 2
/* 8049D1C0  80 A5 60 6C */	lwz r5, 0x606c(r5)
/* 8049D1C4  81 85 00 08 */	lwz r12, 8(r5)
/* 8049D1C8  7D 89 03 A6 */	mtctr r12
/* 8049D1CC  4E 80 04 21 */	bctrl 
/* 8049D1D0  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 8049D1D4  7F 64 DB 78 */	mr r4, r27
/* 8049D1D8  7F 85 E3 78 */	mr r5, r28
/* 8049D1DC  38 C0 00 00 */	li r6, 0
/* 8049D1E0  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
/* 8049D1E4  4B F0 A4 69 */	bl mFI_UtNumtoFGSet_common
/* 8049D1E8  38 60 00 00 */	li r3, 0
/* 8049D1EC  48 00 02 30 */	b lbl_8049D41C
lbl_8049D1F0:
/* 8049D1F0  57 E0 A7 3E */	rlwinm r0, r31, 0x14, 0x1c, 0x1f
/* 8049D1F4  2C 00 00 01 */	cmpwi r0, 1
/* 8049D1F8  41 82 00 0C */	beq lbl_8049D204
/* 8049D1FC  2C 00 00 03 */	cmpwi r0, 3
/* 8049D200  40 82 00 80 */	bne lbl_8049D280
lbl_8049D204:
/* 8049D204  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8049D208  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8049D20C  3F 43 00 02 */	addis r26, r3, 2
/* 8049D210  80 7A 60 8C */	lwz r3, 0x608c(r26)
/* 8049D214  28 03 00 00 */	cmplwi r3, 0
/* 8049D218  41 82 00 68 */	beq lbl_8049D280
/* 8049D21C  81 83 00 1C */	lwz r12, 0x1c(r3)
/* 8049D220  7F 65 DB 78 */	mr r5, r27
/* 8049D224  7F 86 E3 78 */	mr r6, r28
/* 8049D228  38 61 00 08 */	addi r3, r1, 8
/* 8049D22C  38 81 00 0C */	addi r4, r1, 0xc
/* 8049D230  38 E0 00 00 */	li r7, 0
/* 8049D234  7D 89 03 A6 */	mtctr r12
/* 8049D238  4E 80 04 21 */	bctrl 
/* 8049D23C  80 9A 60 8C */	lwz r4, 0x608c(r26)
/* 8049D240  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8049D244  81 84 00 20 */	lwz r12, 0x20(r4)
/* 8049D248  7D 89 03 A6 */	mtctr r12
/* 8049D24C  4E 80 04 21 */	bctrl 
/* 8049D250  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8049D254  57 E4 04 3E */	clrlwi r4, r31, 0x10
/* 8049D258  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8049D25C  3C 63 00 02 */	addis r3, r3, 2
/* 8049D260  A0 03 04 5C */	lhz r0, 0x45c(r3)
/* 8049D264  7C 04 00 40 */	cmplw r4, r0
/* 8049D268  40 82 00 10 */	bne lbl_8049D278
/* 8049D26C  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FE15@ha */
/* 8049D270  3B C3 FE 15 */	addi r30, r3, 0xFE15 /* 0x0000FE15@l */
/* 8049D274  48 00 00 0C */	b lbl_8049D280
lbl_8049D278:
/* 8049D278  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FE10@ha */
/* 8049D27C  3B C3 FE 10 */	addi r30, r3, 0xFE10 /* 0x0000FE10@l */
lbl_8049D280:
/* 8049D280  57 E0 04 3E */	clrlwi r0, r31, 0x10
/* 8049D284  28 00 26 00 */	cmplwi r0, 0x2600
/* 8049D288  41 80 00 14 */	blt lbl_8049D29C
/* 8049D28C  28 00 26 43 */	cmplwi r0, 0x2643
/* 8049D290  41 81 00 0C */	bgt lbl_8049D29C
/* 8049D294  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FE11@ha */
/* 8049D298  3B C3 FE 11 */	addi r30, r3, 0xFE11 /* 0x0000FE11@l */
lbl_8049D29C:
/* 8049D29C  57 E0 04 3E */	clrlwi r0, r31, 0x10
/* 8049D2A0  28 00 27 00 */	cmplwi r0, 0x2700
/* 8049D2A4  41 80 00 14 */	blt lbl_8049D2B8
/* 8049D2A8  28 00 27 43 */	cmplwi r0, 0x2743
/* 8049D2AC  41 81 00 0C */	bgt lbl_8049D2B8
/* 8049D2B0  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FE12@ha */
/* 8049D2B4  3B C3 FE 12 */	addi r30, r3, 0xFE12 /* 0x0000FE12@l */
lbl_8049D2B8:
/* 8049D2B8  57 E0 04 3E */	clrlwi r0, r31, 0x10
/* 8049D2BC  28 00 25 1E */	cmplwi r0, 0x251e
/* 8049D2C0  40 82 00 0C */	bne lbl_8049D2CC
/* 8049D2C4  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FE18@ha */
/* 8049D2C8  3B C3 FE 18 */	addi r30, r3, 0xFE18 /* 0x0000FE18@l */
lbl_8049D2CC:
/* 8049D2CC  57 E0 04 3E */	clrlwi r0, r31, 0x10
/* 8049D2D0  28 00 22 00 */	cmplwi r0, 0x2200
/* 8049D2D4  41 80 00 94 */	blt lbl_8049D368
/* 8049D2D8  28 00 22 5C */	cmplwi r0, 0x225c
/* 8049D2DC  41 81 00 8C */	bgt lbl_8049D368
/* 8049D2E0  28 00 22 04 */	cmplwi r0, 0x2204
/* 8049D2E4  41 80 00 44 */	blt lbl_8049D328
/* 8049D2E8  28 00 22 2B */	cmplwi r0, 0x222b
/* 8049D2EC  41 81 00 3C */	bgt lbl_8049D328
/* 8049D2F0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8049D2F4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8049D2F8  3C 63 00 02 */	addis r3, r3, 2
/* 8049D2FC  80 63 60 C4 */	lwz r3, 0x60c4(r3)
/* 8049D300  28 03 00 00 */	cmplwi r3, 0
/* 8049D304  41 82 00 18 */	beq lbl_8049D31C
/* 8049D308  81 83 00 08 */	lwz r12, 8(r3)
/* 8049D30C  7F 63 DB 78 */	mr r3, r27
/* 8049D310  7F 84 E3 78 */	mr r4, r28
/* 8049D314  7D 89 03 A6 */	mtctr r12
/* 8049D318  4E 80 04 21 */	bctrl 
lbl_8049D31C:
/* 8049D31C  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FE16@ha */
/* 8049D320  3B C3 FE 16 */	addi r30, r3, 0xFE16 /* 0x0000FE16@l */
/* 8049D324  48 00 00 44 */	b lbl_8049D368
lbl_8049D328:
/* 8049D328  57 E0 04 3E */	clrlwi r0, r31, 0x10
/* 8049D32C  28 00 22 2D */	cmplwi r0, 0x222d
/* 8049D330  41 80 00 18 */	blt lbl_8049D348
/* 8049D334  28 00 22 38 */	cmplwi r0, 0x2238
/* 8049D338  41 81 00 10 */	bgt lbl_8049D348
/* 8049D33C  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FE17@ha */
/* 8049D340  3B C3 FE 17 */	addi r30, r3, 0xFE17 /* 0x0000FE17@l */
/* 8049D344  48 00 00 24 */	b lbl_8049D368
lbl_8049D348:
/* 8049D348  57 E0 04 3E */	clrlwi r0, r31, 0x10
/* 8049D34C  28 00 25 1E */	cmplwi r0, 0x251e
/* 8049D350  40 82 00 10 */	bne lbl_8049D360
/* 8049D354  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FE18@ha */
/* 8049D358  3B C3 FE 18 */	addi r30, r3, 0xFE18 /* 0x0000FE18@l */
/* 8049D35C  48 00 00 0C */	b lbl_8049D368
lbl_8049D360:
/* 8049D360  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FE14@ha */
/* 8049D364  3B C3 FE 14 */	addi r30, r3, 0xFE14 /* 0x0000FE14@l */
lbl_8049D368:
/* 8049D368  57 E0 04 3E */	clrlwi r0, r31, 0x10
/* 8049D36C  28 00 20 00 */	cmplwi r0, 0x2000
/* 8049D370  41 80 00 14 */	blt lbl_8049D384
/* 8049D374  28 00 21 00 */	cmplwi r0, 0x2100
/* 8049D378  41 81 00 0C */	bgt lbl_8049D384
/* 8049D37C  38 60 00 01 */	li r3, 1
/* 8049D380  48 00 00 9C */	b lbl_8049D41C
lbl_8049D384:
/* 8049D384  57 E0 04 3E */	clrlwi r0, r31, 0x10
/* 8049D388  28 00 2B 00 */	cmplwi r0, 0x2b00
/* 8049D38C  41 80 00 14 */	blt lbl_8049D3A0
/* 8049D390  28 00 2B 0F */	cmplwi r0, 0x2b0f
/* 8049D394  41 81 00 0C */	bgt lbl_8049D3A0
/* 8049D398  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FE0E@ha */
/* 8049D39C  3B C3 FE 0E */	addi r30, r3, 0xFE0E /* 0x0000FE0E@l */
lbl_8049D3A0:
/* 8049D3A0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8049D3A4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8049D3A8  3C 63 00 03 */	addis r3, r3, 3
/* 8049D3AC  80 03 88 9C */	lwz r0, -0x7764(r3)
/* 8049D3B0  2C 00 00 01 */	cmpwi r0, 1
/* 8049D3B4  40 82 00 1C */	bne lbl_8049D3D0
/* 8049D3B8  38 60 00 00 */	li r3, 0
/* 8049D3BC  4B EF D6 5D */	bl mEv_CheckEvent
/* 8049D3C0  2C 03 00 00 */	cmpwi r3, 0
/* 8049D3C4  40 82 00 0C */	bne lbl_8049D3D0
/* 8049D3C8  38 60 00 00 */	li r3, 0
/* 8049D3CC  48 00 00 50 */	b lbl_8049D41C
lbl_8049D3D0:
/* 8049D3D0  57 C0 04 3F */	clrlwi. r0, r30, 0x10
/* 8049D3D4  41 82 00 3C */	beq lbl_8049D410
/* 8049D3D8  80 9D 01 74 */	lwz r4, 0x174(r29)
/* 8049D3DC  7F E3 FB 78 */	mr r3, r31
/* 8049D3E0  80 BD 01 7C */	lwz r5, 0x17c(r29)
/* 8049D3E4  7F C6 F3 78 */	mr r6, r30
/* 8049D3E8  4B F4 B2 05 */	bl mSP_ShopSaleReport
/* 8049D3EC  2C 03 00 00 */	cmpwi r3, 0
/* 8049D3F0  41 82 00 0C */	beq lbl_8049D3FC
/* 8049D3F4  38 60 00 01 */	li r3, 1
/* 8049D3F8  48 00 00 24 */	b lbl_8049D41C
lbl_8049D3FC:
/* 8049D3FC  7F C3 F3 78 */	mr r3, r30
/* 8049D400  7F 64 DB 78 */	mr r4, r27
/* 8049D404  7F 85 E3 78 */	mr r5, r28
/* 8049D408  38 C0 00 00 */	li r6, 0
/* 8049D40C  4B F0 A2 41 */	bl mFI_UtNumtoFGSet_common
lbl_8049D410:
/* 8049D410  38 60 00 00 */	li r3, 0
/* 8049D414  48 00 00 08 */	b lbl_8049D41C
lbl_8049D418:
/* 8049D418  38 60 00 00 */	li r3, 0
lbl_8049D41C:
/* 8049D41C  39 61 00 30 */	addi r11, r1, 0x30
/* 8049D420  4B BF DA F5 */	bl func_8009AF14
/* 8049D424  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8049D428  7C 08 03 A6 */	mtlr r0
/* 8049D42C  38 21 00 30 */	addi r1, r1, 0x30
/* 8049D430  4E 80 00 20 */	blr 
