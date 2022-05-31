lbl_803AB13C:
/* 803AB13C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 803AB140  7C 08 02 A6 */	mflr r0
/* 803AB144  90 01 00 74 */	stw r0, 0x74(r1)
/* 803AB148  39 61 00 70 */	addi r11, r1, 0x70
/* 803AB14C  4B CE FD 69 */	bl func_8009AEB4
/* 803AB150  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 803AB154  7C 78 1B 78 */	mr r24, r3
/* 803AB158  38 66 85 38 */	addi r3, r6, common_data@l /* 0x81138538@l */
/* 803AB15C  7C 99 23 78 */	mr r25, r4
/* 803AB160  80 03 00 14 */	lwz r0, 0x14(r3)
/* 803AB164  3F E3 00 01 */	addis r31, r3, 1
/* 803AB168  3B FF 37 A8 */	addi r31, r31, 0x37a8
/* 803AB16C  7C BA 2B 78 */	mr r26, r5
/* 803AB170  2C 00 00 07 */	cmpwi r0, 7
/* 803AB174  3B A1 00 08 */	addi r29, r1, 8
/* 803AB178  7F FE FB 78 */	mr r30, r31
/* 803AB17C  3B 80 00 00 */	li r28, 0
/* 803AB180  3B 60 00 00 */	li r27, 0
/* 803AB184  40 82 01 88 */	bne lbl_803AB30C
/* 803AB188  7F A3 EB 78 */	mr r3, r29
/* 803AB18C  38 80 00 1E */	li r4, 0x1e
/* 803AB190  4B CB 1E D9 */	bl bzero
/* 803AB194  3C 60 80 65 */	lis r3, no_check_block_table@ha /* 0x80654054@ha */
/* 803AB198  38 A0 00 04 */	li r5, 4
/* 803AB19C  38 83 40 54 */	addi r4, r3, no_check_block_table@l /* 0x80654054@l */
/* 803AB1A0  38 64 00 10 */	addi r3, r4, 0x10
/* 803AB1A4  38 84 00 14 */	addi r4, r4, 0x14
/* 803AB1A8  4B FF B2 59 */	bl mFI_BlockKind2BkNum
/* 803AB1AC  3C 60 80 65 */	lis r3, no_check_block_table@ha /* 0x80654054@ha */
/* 803AB1B0  3C 80 00 01 */	lis r4, 0x0001 /* 0x00008000@ha */
/* 803AB1B4  38 C3 40 54 */	addi r6, r3, no_check_block_table@l /* 0x80654054@l */
/* 803AB1B8  38 66 00 18 */	addi r3, r6, 0x18
/* 803AB1BC  38 A4 80 00 */	addi r5, r4, 0x8000 /* 0x00008000@l */
/* 803AB1C0  38 86 00 1C */	addi r4, r6, 0x1c
/* 803AB1C4  4B FF B2 3D */	bl mFI_BlockKind2BkNum
/* 803AB1C8  3C 60 80 65 */	lis r3, no_check_block_table@ha /* 0x80654054@ha */
/* 803AB1CC  3A C0 00 00 */	li r22, 0
/* 803AB1D0  3A E3 40 54 */	addi r23, r3, no_check_block_table@l /* 0x80654054@l */
lbl_803AB1D4:
/* 803AB1D4  3A A0 00 00 */	li r21, 0
lbl_803AB1D8:
/* 803AB1D8  7E E3 BB 78 */	mr r3, r23
/* 803AB1DC  38 95 00 01 */	addi r4, r21, 1
/* 803AB1E0  38 B6 00 01 */	addi r5, r22, 1
/* 803AB1E4  4B FF FF 21 */	bl mFI_CheckBlockSetTreasure
/* 803AB1E8  2C 03 00 01 */	cmpwi r3, 1
/* 803AB1EC  40 82 00 34 */	bne lbl_803AB220
/* 803AB1F0  38 75 00 01 */	addi r3, r21, 1
/* 803AB1F4  38 96 00 01 */	addi r4, r22, 1
/* 803AB1F8  4B FF B3 75 */	bl mFI_GetBkNum2ColTop
/* 803AB1FC  7C 60 1B 78 */	mr r0, r3
/* 803AB200  7F C3 F3 78 */	mr r3, r30
/* 803AB204  7C 04 03 78 */	mr r4, r0
/* 803AB208  48 01 B8 D9 */	bl mMsm_GetDepositAbleNum
/* 803AB20C  98 7D 00 00 */	stb r3, 0(r29)
/* 803AB210  88 1D 00 00 */	lbz r0, 0(r29)
/* 803AB214  28 00 00 00 */	cmplwi r0, 0
/* 803AB218  41 82 00 08 */	beq lbl_803AB220
/* 803AB21C  3B 9C 00 01 */	addi r28, r28, 1
lbl_803AB220:
/* 803AB220  3A B5 00 01 */	addi r21, r21, 1
/* 803AB224  3B DE 02 00 */	addi r30, r30, 0x200
/* 803AB228  2C 15 00 05 */	cmpwi r21, 5
/* 803AB22C  3B BD 00 01 */	addi r29, r29, 1
/* 803AB230  41 80 FF A8 */	blt lbl_803AB1D8
/* 803AB234  3A D6 00 01 */	addi r22, r22, 1
/* 803AB238  2C 16 00 06 */	cmpwi r22, 6
/* 803AB23C  41 80 FF 98 */	blt lbl_803AB1D4
/* 803AB240  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 803AB244  41 82 00 C8 */	beq lbl_803AB30C
/* 803AB248  3B C1 00 08 */	addi r30, r1, 8
/* 803AB24C  4B CB 1A A9 */	bl fqrand
/* 803AB250  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 803AB254  3C 60 43 30 */	lis r3, 0x4330
/* 803AB258  90 01 00 2C */	stw r0, 0x2c(r1)
/* 803AB25C  3C 80 80 64 */	lis r4, lit_641@ha /* 0x80641F4C@ha */
/* 803AB260  C8 44 1F 4C */	lfd f2, lit_641@l(r4)  /* 0x80641F4C@l */
/* 803AB264  38 00 00 1E */	li r0, 0x1e
/* 803AB268  90 61 00 28 */	stw r3, 0x28(r1)
/* 803AB26C  39 20 00 00 */	li r9, 0
/* 803AB270  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 803AB274  EC 00 10 28 */	fsubs f0, f0, f2
/* 803AB278  EC 00 00 72 */	fmuls f0, f0, f1
/* 803AB27C  FC 00 00 1E */	fctiwz f0, f0
/* 803AB280  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 803AB284  80 61 00 34 */	lwz r3, 0x34(r1)
/* 803AB288  7C 09 03 A6 */	mtctr r0
lbl_803AB28C:
/* 803AB28C  88 1E 00 00 */	lbz r0, 0(r30)
/* 803AB290  28 00 00 00 */	cmplwi r0, 0
/* 803AB294  41 82 00 68 */	beq lbl_803AB2FC
/* 803AB298  2C 03 00 00 */	cmpwi r3, 0
/* 803AB29C  41 81 00 5C */	bgt lbl_803AB2F8
/* 803AB2A0  38 C0 00 05 */	li r6, 5
/* 803AB2A4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803AB2A8  7D 09 33 D6 */	divw r8, r9, r6
/* 803AB2AC  55 24 28 34 */	slwi r4, r9, 5
/* 803AB2B0  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 803AB2B4  7F E3 FB 78 */	mr r3, r31
/* 803AB2B8  7C A0 22 14 */	add r5, r0, r4
/* 803AB2BC  7F 44 D3 78 */	mr r4, r26
/* 803AB2C0  7C C8 31 D6 */	mullw r6, r8, r6
/* 803AB2C4  3C E5 00 02 */	addis r7, r5, 2
/* 803AB2C8  38 08 00 01 */	addi r0, r8, 1
/* 803AB2CC  38 E7 0F 1C */	addi r7, r7, 0xf1c
/* 803AB2D0  7C A6 48 50 */	subf r5, r6, r9
/* 803AB2D4  38 A5 00 01 */	addi r5, r5, 1
/* 803AB2D8  90 B8 00 00 */	stw r5, 0(r24)
/* 803AB2DC  90 19 00 00 */	stw r0, 0(r25)
/* 803AB2E0  80 B8 00 00 */	lwz r5, 0(r24)
/* 803AB2E4  80 D9 00 00 */	lwz r6, 0(r25)
/* 803AB2E8  89 1E 00 00 */	lbz r8, 0(r30)
/* 803AB2EC  48 01 BA 35 */	bl mMsm_DepositItemBlock
/* 803AB2F0  3B 60 00 01 */	li r27, 1
/* 803AB2F4  48 00 00 18 */	b lbl_803AB30C
lbl_803AB2F8:
/* 803AB2F8  38 63 FF FF */	addi r3, r3, -1
lbl_803AB2FC:
/* 803AB2FC  3B DE 00 01 */	addi r30, r30, 1
/* 803AB300  3B FF 02 00 */	addi r31, r31, 0x200
/* 803AB304  39 29 00 01 */	addi r9, r9, 1
/* 803AB308  42 00 FF 84 */	bdnz lbl_803AB28C
lbl_803AB30C:
/* 803AB30C  7F 63 DB 78 */	mr r3, r27
/* 803AB310  39 61 00 70 */	addi r11, r1, 0x70
/* 803AB314  4B CE FB ED */	bl func_8009AF00
/* 803AB318  80 01 00 74 */	lwz r0, 0x74(r1)
/* 803AB31C  7C 08 03 A6 */	mtlr r0
/* 803AB320  38 21 00 70 */	addi r1, r1, 0x70
/* 803AB324  4E 80 00 20 */	blr 
