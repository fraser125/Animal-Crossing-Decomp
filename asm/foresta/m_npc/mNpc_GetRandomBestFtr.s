lbl_803D5534:
/* 803D5534  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803D5538  7C 08 02 A6 */	mflr r0
/* 803D553C  90 01 00 44 */	stw r0, 0x44(r1)
/* 803D5540  39 61 00 40 */	addi r11, r1, 0x40
/* 803D5544  4B CC 59 7D */	bl func_8009AEC0
/* 803D5548  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803D554C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803D5550  3C 63 00 02 */	addis r3, r3, 2
/* 803D5554  A0 63 34 40 */	lhz r3, 0x3440(r3)
/* 803D5558  4B FF EF DD */	bl mNpc_GetIslandRoomP
/* 803D555C  3C 80 81 17 */	lis r4, l_mnpc_island_ftr@ha /* 0x8116C680@ha */
/* 803D5560  7C 7A 1B 78 */	mr r26, r3
/* 803D5564  3B 20 00 00 */	li r25, 0
/* 803D5568  3B 80 00 00 */	li r28, 0
/* 803D556C  7F 5B D3 78 */	mr r27, r26
/* 803D5570  3B A4 C6 80 */	addi r29, r4, l_mnpc_island_ftr@l /* 0x8116C680@l */
/* 803D5574  3B E0 00 00 */	li r31, 0
/* 803D5578  4B FF FF 69 */	bl mNpc_GetIslandPresentFtr
/* 803D557C  28 1A 00 00 */	cmplwi r26, 0
/* 803D5580  7C 7E 1B 78 */	mr r30, r3
/* 803D5584  41 82 01 64 */	beq lbl_803D56E8
/* 803D5588  3B 00 00 00 */	li r24, 0
lbl_803D558C:
/* 803D558C  A0 9A 00 00 */	lhz r4, 0(r26)
/* 803D5590  54 80 A7 3E */	rlwinm r0, r4, 0x14, 0x1c, 0x1f
/* 803D5594  2C 00 00 01 */	cmpwi r0, 1
/* 803D5598  41 82 00 0C */	beq lbl_803D55A4
/* 803D559C  2C 00 00 03 */	cmpwi r0, 3
/* 803D55A0  40 82 00 40 */	bne lbl_803D55E0
lbl_803D55A4:
/* 803D55A4  2C 1C 00 00 */	cmpwi r28, 0
/* 803D55A8  41 80 00 30 */	blt lbl_803D55D8
/* 803D55AC  2C 1C 00 10 */	cmpwi r28, 0x10
/* 803D55B0  40 80 00 28 */	bge lbl_803D55D8
/* 803D55B4  A0 1D 00 00 */	lhz r0, 0(r29)
/* 803D55B8  7C 00 E6 30 */	sraw r0, r0, r28
/* 803D55BC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 803D55C0  40 82 00 18 */	bne lbl_803D55D8
/* 803D55C4  7F C3 F3 78 */	mr r3, r30
/* 803D55C8  48 09 E6 01 */	bl aMR_CorrespondFurniture
/* 803D55CC  2C 03 00 00 */	cmpwi r3, 0
/* 803D55D0  40 82 00 08 */	bne lbl_803D55D8
/* 803D55D4  3B 39 00 01 */	addi r25, r25, 1
lbl_803D55D8:
/* 803D55D8  3B 9C 00 01 */	addi r28, r28, 1
/* 803D55DC  48 00 00 18 */	b lbl_803D55F4
lbl_803D55E0:
/* 803D55E0  28 04 FE B3 */	cmplwi r4, 0xfeb3
/* 803D55E4  41 80 00 10 */	blt lbl_803D55F4
/* 803D55E8  28 04 FE C2 */	cmplwi r4, 0xfec2
/* 803D55EC  41 81 00 08 */	bgt lbl_803D55F4
/* 803D55F0  3B 9C 00 01 */	addi r28, r28, 1
lbl_803D55F4:
/* 803D55F4  3B 18 00 01 */	addi r24, r24, 1
/* 803D55F8  3B 5A 00 02 */	addi r26, r26, 2
/* 803D55FC  2C 18 01 00 */	cmpwi r24, 0x100
/* 803D5600  41 80 FF 8C */	blt lbl_803D558C
/* 803D5604  28 1B 00 00 */	cmplwi r27, 0
/* 803D5608  7F 7C DB 78 */	mr r28, r27
/* 803D560C  3B 60 00 00 */	li r27, 0
/* 803D5610  41 82 00 D8 */	beq lbl_803D56E8
/* 803D5614  2C 19 00 00 */	cmpwi r25, 0
/* 803D5618  40 81 00 D0 */	ble lbl_803D56E8
/* 803D561C  4B C8 76 D9 */	bl fqrand
/* 803D5620  6F 23 80 00 */	xoris r3, r25, 0x8000
/* 803D5624  3C 00 43 30 */	lis r0, 0x4330
/* 803D5628  90 61 00 0C */	stw r3, 0xc(r1)
/* 803D562C  3C 80 80 64 */	lis r4, data_806428CC@ha /* 0x806428CC@ha */
/* 803D5630  C8 44 28 CC */	lfd f2, data_806428CC@l(r4)  /* 0x806428CC@l */
/* 803D5634  3B 40 00 00 */	li r26, 0
/* 803D5638  90 01 00 08 */	stw r0, 8(r1)
/* 803D563C  C8 01 00 08 */	lfd f0, 8(r1)
/* 803D5640  EC 00 10 28 */	fsubs f0, f0, f2
/* 803D5644  EC 00 00 72 */	fmuls f0, f0, f1
/* 803D5648  FC 00 00 1E */	fctiwz f0, f0
/* 803D564C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803D5650  83 21 00 14 */	lwz r25, 0x14(r1)
lbl_803D5654:
/* 803D5654  A0 9C 00 00 */	lhz r4, 0(r28)
/* 803D5658  54 80 A7 3E */	rlwinm r0, r4, 0x14, 0x1c, 0x1f
/* 803D565C  2C 00 00 01 */	cmpwi r0, 1
/* 803D5660  41 82 00 0C */	beq lbl_803D566C
/* 803D5664  2C 00 00 03 */	cmpwi r0, 3
/* 803D5668  40 82 00 5C */	bne lbl_803D56C4
lbl_803D566C:
/* 803D566C  2C 1B 00 00 */	cmpwi r27, 0
/* 803D5670  41 80 00 4C */	blt lbl_803D56BC
/* 803D5674  2C 1B 00 10 */	cmpwi r27, 0x10
/* 803D5678  40 80 00 44 */	bge lbl_803D56BC
/* 803D567C  A0 1D 00 00 */	lhz r0, 0(r29)
/* 803D5680  7C 00 DE 30 */	sraw r0, r0, r27
/* 803D5684  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 803D5688  40 82 00 34 */	bne lbl_803D56BC
/* 803D568C  7F C3 F3 78 */	mr r3, r30
/* 803D5690  48 09 E5 39 */	bl aMR_CorrespondFurniture
/* 803D5694  2C 03 00 00 */	cmpwi r3, 0
/* 803D5698  40 82 00 24 */	bne lbl_803D56BC
/* 803D569C  2C 19 00 00 */	cmpwi r25, 0
/* 803D56A0  40 82 00 18 */	bne lbl_803D56B8
/* 803D56A4  A0 7C 00 00 */	lhz r3, 0(r28)
/* 803D56A8  38 80 00 00 */	li r4, 0
/* 803D56AC  48 09 E5 99 */	bl aMR_FurnitureFg_to_FurnitureFgWithDirect
/* 803D56B0  7C 7F 1B 78 */	mr r31, r3
/* 803D56B4  48 00 00 34 */	b lbl_803D56E8
lbl_803D56B8:
/* 803D56B8  3B 39 FF FF */	addi r25, r25, -1
lbl_803D56BC:
/* 803D56BC  3B 7B 00 01 */	addi r27, r27, 1
/* 803D56C0  48 00 00 18 */	b lbl_803D56D8
lbl_803D56C4:
/* 803D56C4  28 04 FE B3 */	cmplwi r4, 0xfeb3
/* 803D56C8  41 80 00 10 */	blt lbl_803D56D8
/* 803D56CC  28 04 FE C2 */	cmplwi r4, 0xfec2
/* 803D56D0  41 81 00 08 */	bgt lbl_803D56D8
/* 803D56D4  3B 7B 00 01 */	addi r27, r27, 1
lbl_803D56D8:
/* 803D56D8  3B 5A 00 01 */	addi r26, r26, 1
/* 803D56DC  3B 9C 00 02 */	addi r28, r28, 2
/* 803D56E0  2C 1A 01 00 */	cmpwi r26, 0x100
/* 803D56E4  41 80 FF 70 */	blt lbl_803D5654
lbl_803D56E8:
/* 803D56E8  7F E3 FB 78 */	mr r3, r31
/* 803D56EC  39 61 00 40 */	addi r11, r1, 0x40
/* 803D56F0  4B CC 58 1D */	bl func_8009AF0C
/* 803D56F4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803D56F8  7C 08 03 A6 */	mtlr r0
/* 803D56FC  38 21 00 40 */	addi r1, r1, 0x40
/* 803D5700  4E 80 00 20 */	blr 
