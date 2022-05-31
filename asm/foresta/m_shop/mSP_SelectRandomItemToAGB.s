lbl_803EBA5C:
/* 803EBA5C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 803EBA60  7C 08 02 A6 */	mflr r0
/* 803EBA64  90 01 00 74 */	stw r0, 0x74(r1)
/* 803EBA68  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 803EBA6C  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 803EBA70  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 803EBA74  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 803EBA78  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 803EBA7C  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 803EBA80  39 61 00 40 */	addi r11, r1, 0x40
/* 803EBA84  4B CA F4 41 */	bl func_8009AEC4
/* 803EBA88  3C 60 80 64 */	lis r3, lit_1873@ha /* 0x806431C8@ha */
/* 803EBA8C  38 00 00 00 */	li r0, 0
/* 803EBA90  38 A3 31 C8 */	addi r5, r3, lit_1873@l /* 0x806431C8@l */
/* 803EBA94  90 01 00 0C */	stw r0, 0xc(r1)
/* 803EBA98  81 05 00 00 */	lwz r8, 0(r5)
/* 803EBA9C  38 61 00 0C */	addi r3, r1, 0xc
/* 803EBAA0  80 E5 00 04 */	lwz r7, 4(r5)
/* 803EBAA4  38 81 00 08 */	addi r4, r1, 8
/* 803EBAA8  80 C5 00 08 */	lwz r6, 8(r5)
/* 803EBAAC  3C A0 80 00 */	lis r5, 0x8000
/* 803EBAB0  91 01 00 10 */	stw r8, 0x10(r1)
/* 803EBAB4  90 E1 00 14 */	stw r7, 0x14(r1)
/* 803EBAB8  90 C1 00 18 */	stw r6, 0x18(r1)
/* 803EBABC  90 01 00 08 */	stw r0, 8(r1)
/* 803EBAC0  4B FB A9 41 */	bl mFI_BlockKind2BkNum
/* 803EBAC4  3C 60 80 64 */	lis r3, lit_1964@ha /* 0x806431D8@ha */
/* 803EBAC8  3C 80 80 64 */	lis r4, lit_1963@ha /* 0x806431D4@ha */
/* 803EBACC  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 803EBAD0  C3 E3 31 D8 */	lfs f31, lit_1964@l(r3)  /* 0x806431D8@l */
/* 803EBAD4  C3 A4 31 D4 */	lfs f29, lit_1963@l(r4)  /* 0x806431D4@l */
/* 803EBAD8  3B A1 00 18 */	addi r29, r1, 0x18
/* 803EBADC  3B C5 85 38 */	addi r30, r5, common_data@l /* 0x81138538@l */
/* 803EBAE0  3B 80 00 00 */	li r28, 0
/* 803EBAE4  3B E0 00 00 */	li r31, 0
lbl_803EBAE8:
/* 803EBAE8  3F 3F 00 02 */	addis r25, r31, 2
/* 803EBAEC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803EBAF0  3B 39 25 54 */	addi r25, r25, 0x2554
/* 803EBAF4  80 C1 00 08 */	lwz r6, 8(r1)
/* 803EBAF8  7F A4 EB 78 */	mr r4, r29
/* 803EBAFC  38 61 00 10 */	addi r3, r1, 0x10
/* 803EBB00  7F 3E CA 14 */	add r25, r30, r25
/* 803EBB04  7C A0 E2 14 */	add r5, r0, r28
/* 803EBB08  4B FB A0 71 */	bl mFI_BkNum2WposXZ
/* 803EBB0C  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 803EBB10  3B 40 00 00 */	li r26, 0
/* 803EBB14  C0 1D 00 00 */	lfs f0, 0(r29)
/* 803EBB18  EF C1 E8 2A */	fadds f30, f1, f29
/* 803EBB1C  EC 00 E8 2A */	fadds f0, f0, f29
/* 803EBB20  D3 C1 00 10 */	stfs f30, 0x10(r1)
/* 803EBB24  D0 1D 00 00 */	stfs f0, 0(r29)
lbl_803EBB28:
/* 803EBB28  D3 C1 00 10 */	stfs f30, 0x10(r1)
/* 803EBB2C  3B 60 00 00 */	li r27, 0
lbl_803EBB30:
/* 803EBB30  7F 23 CB 78 */	mr r3, r25
/* 803EBB34  7F 65 DB 78 */	mr r5, r27
/* 803EBB38  7F 46 D3 78 */	mr r6, r26
/* 803EBB3C  38 81 00 10 */	addi r4, r1, 0x10
/* 803EBB40  4B FF FB 39 */	bl mSP_SelectRandomItemToAGB_Unit
/* 803EBB44  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 803EBB48  3B 7B 00 01 */	addi r27, r27, 1
/* 803EBB4C  2C 1B 00 10 */	cmpwi r27, 0x10
/* 803EBB50  3B 39 00 02 */	addi r25, r25, 2
/* 803EBB54  EC 00 F8 2A */	fadds f0, f0, f31
/* 803EBB58  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 803EBB5C  41 80 FF D4 */	blt lbl_803EBB30
/* 803EBB60  C0 1D 00 00 */	lfs f0, 0(r29)
/* 803EBB64  3B 5A 00 01 */	addi r26, r26, 1
/* 803EBB68  2C 1A 00 10 */	cmpwi r26, 0x10
/* 803EBB6C  EC 00 F8 2A */	fadds f0, f0, f31
/* 803EBB70  D0 1D 00 00 */	stfs f0, 0(r29)
/* 803EBB74  41 80 FF B4 */	blt lbl_803EBB28
/* 803EBB78  3B 9C 00 01 */	addi r28, r28, 1
/* 803EBB7C  3B FF 02 00 */	addi r31, r31, 0x200
/* 803EBB80  2C 1C 00 02 */	cmpwi r28, 2
/* 803EBB84  41 80 FF 64 */	blt lbl_803EBAE8
/* 803EBB88  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000A012@ha */
/* 803EBB8C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803EBB90  38 A3 A0 12 */	addi r5, r3, 0xA012 /* 0x0000A012@l */
/* 803EBB94  39 20 00 00 */	li r9, 0
/* 803EBB98  38 C4 85 38 */	addi r6, r4, common_data@l /* 0x81138538@l */
/* 803EBB9C  38 60 00 00 */	li r3, 0
lbl_803EBBA0:
/* 803EBBA0  3D 03 00 02 */	addis r8, r3, 2
/* 803EBBA4  39 60 00 00 */	li r11, 0
/* 803EBBA8  39 08 25 54 */	addi r8, r8, 0x2554
/* 803EBBAC  38 00 00 10 */	li r0, 0x10
/* 803EBBB0  7D 06 42 14 */	add r8, r6, r8
/* 803EBBB4  7D 0A 43 78 */	mr r10, r8
lbl_803EBBB8:
/* 803EBBB8  38 8B 00 01 */	addi r4, r11, 1
/* 803EBBBC  39 80 00 00 */	li r12, 0
/* 803EBBC0  54 87 26 36 */	rlwinm r7, r4, 4, 0x18, 0x1b
/* 803EBBC4  7C 09 03 A6 */	mtctr r0
lbl_803EBBC8:
/* 803EBBC8  A0 8A 00 00 */	lhz r4, 0(r10)
/* 803EBBCC  28 04 58 51 */	cmplwi r4, 0x5851
/* 803EBBD0  40 82 00 18 */	bne lbl_803EBBE8
/* 803EBBD4  38 8C FF FF */	addi r4, r12, -1
/* 803EBBD8  54 84 07 3E */	clrlwi r4, r4, 0x1c
/* 803EBBDC  7C 84 3A 14 */	add r4, r4, r7
/* 803EBBE0  54 84 08 3C */	slwi r4, r4, 1
/* 803EBBE4  7C A8 23 2E */	sthx r5, r8, r4
lbl_803EBBE8:
/* 803EBBE8  39 4A 00 02 */	addi r10, r10, 2
/* 803EBBEC  39 8C 00 01 */	addi r12, r12, 1
/* 803EBBF0  42 00 FF D8 */	bdnz lbl_803EBBC8
/* 803EBBF4  39 6B 00 01 */	addi r11, r11, 1
/* 803EBBF8  2C 0B 00 10 */	cmpwi r11, 0x10
/* 803EBBFC  41 80 FF BC */	blt lbl_803EBBB8
/* 803EBC00  39 29 00 01 */	addi r9, r9, 1
/* 803EBC04  38 63 02 00 */	addi r3, r3, 0x200
/* 803EBC08  2C 09 00 02 */	cmpwi r9, 2
/* 803EBC0C  41 80 FF 94 */	blt lbl_803EBBA0
/* 803EBC10  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EBC14  39 00 00 00 */	li r8, 0
/* 803EBC18  38 C3 85 38 */	addi r6, r3, common_data@l /* 0x81138538@l */
/* 803EBC1C  38 60 00 00 */	li r3, 0
lbl_803EBC20:
/* 803EBC20  3C E3 00 02 */	addis r7, r3, 2
/* 803EBC24  39 40 00 00 */	li r10, 0
/* 803EBC28  38 E7 25 54 */	addi r7, r7, 0x2554
/* 803EBC2C  7C E6 3A 14 */	add r7, r6, r7
/* 803EBC30  7D 44 53 78 */	mr r4, r10
/* 803EBC34  7C E9 3B 78 */	mr r9, r7
lbl_803EBC38:
/* 803EBC38  38 AA FF FF */	addi r5, r10, -1
/* 803EBC3C  38 00 00 10 */	li r0, 0x10
/* 803EBC40  39 60 00 00 */	li r11, 0
/* 803EBC44  54 A5 26 36 */	rlwinm r5, r5, 4, 0x18, 0x1b
/* 803EBC48  7C 09 03 A6 */	mtctr r0
lbl_803EBC4C:
/* 803EBC4C  A0 09 00 00 */	lhz r0, 0(r9)
/* 803EBC50  28 00 A0 12 */	cmplwi r0, 0xa012
/* 803EBC54  40 82 00 24 */	bne lbl_803EBC78
/* 803EBC58  38 0B 00 01 */	addi r0, r11, 1
/* 803EBC5C  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 803EBC60  7C 00 2A 14 */	add r0, r0, r5
/* 803EBC64  54 00 08 3C */	slwi r0, r0, 1
/* 803EBC68  7C 07 02 2E */	lhzx r0, r7, r0
/* 803EBC6C  28 00 58 51 */	cmplwi r0, 0x5851
/* 803EBC70  41 82 00 08 */	beq lbl_803EBC78
/* 803EBC74  B0 89 00 00 */	sth r4, 0(r9)
lbl_803EBC78:
/* 803EBC78  39 29 00 02 */	addi r9, r9, 2
/* 803EBC7C  39 6B 00 01 */	addi r11, r11, 1
/* 803EBC80  42 00 FF CC */	bdnz lbl_803EBC4C
/* 803EBC84  39 4A 00 01 */	addi r10, r10, 1
/* 803EBC88  2C 0A 00 10 */	cmpwi r10, 0x10
/* 803EBC8C  41 80 FF AC */	blt lbl_803EBC38
/* 803EBC90  39 08 00 01 */	addi r8, r8, 1
/* 803EBC94  38 63 02 00 */	addi r3, r3, 0x200
/* 803EBC98  2C 08 00 02 */	cmpwi r8, 2
/* 803EBC9C  41 80 FF 84 */	blt lbl_803EBC20
/* 803EBCA0  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 803EBCA4  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 803EBCA8  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 803EBCAC  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 803EBCB0  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 803EBCB4  39 61 00 40 */	addi r11, r1, 0x40
/* 803EBCB8  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 803EBCBC  4B CA F2 55 */	bl func_8009AF10
/* 803EBCC0  80 01 00 74 */	lwz r0, 0x74(r1)
/* 803EBCC4  7C 08 03 A6 */	mtlr r0
/* 803EBCC8  38 21 00 70 */	addi r1, r1, 0x70
/* 803EBCCC  4E 80 00 20 */	blr 
