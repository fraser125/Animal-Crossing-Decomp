lbl_803D0440:
/* 803D0440  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803D0444  7C 08 02 A6 */	mflr r0
/* 803D0448  90 01 00 34 */	stw r0, 0x34(r1)
/* 803D044C  39 61 00 30 */	addi r11, r1, 0x30
/* 803D0450  4B CC AA 79 */	bl func_8009AEC8
/* 803D0454  A0 04 00 30 */	lhz r0, 0x30(r4)
/* 803D0458  7C 7A 1B 78 */	mr r26, r3
/* 803D045C  3B A0 00 00 */	li r29, 0
/* 803D0460  7C 05 00 51 */	subf. r0, r5, r0
/* 803D0464  40 80 00 08 */	bge lbl_803D046C
/* 803D0468  38 00 00 00 */	li r0, 0
lbl_803D046C:
/* 803D046C  54 1F 10 3A */	slwi r31, r0, 2
/* 803D0470  3B C0 00 00 */	li r30, 0
/* 803D0474  7C 7A F8 2E */	lwzx r3, r26, r31
/* 803D0478  3B 83 00 02 */	addi r28, r3, 2
lbl_803D047C:
/* 803D047C  3B 60 00 00 */	li r27, 0
lbl_803D0480:
/* 803D0480  A0 7C 00 00 */	lhz r3, 0(r28)
/* 803D0484  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 803D0488  2C 00 00 01 */	cmpwi r0, 1
/* 803D048C  41 82 00 0C */	beq lbl_803D0498
/* 803D0490  2C 00 00 03 */	cmpwi r0, 3
/* 803D0494  40 82 00 14 */	bne lbl_803D04A8
lbl_803D0498:
/* 803D0498  4B FF FF 0D */	bl mNpc_CheckSelectFurniture
/* 803D049C  2C 03 00 01 */	cmpwi r3, 1
/* 803D04A0  40 82 00 08 */	bne lbl_803D04A8
/* 803D04A4  3B BD 00 01 */	addi r29, r29, 1
lbl_803D04A8:
/* 803D04A8  3B 7B 00 01 */	addi r27, r27, 1
/* 803D04AC  3B 9C 00 02 */	addi r28, r28, 2
/* 803D04B0  2C 1B 00 0A */	cmpwi r27, 0xa
/* 803D04B4  41 80 FF CC */	blt lbl_803D0480
/* 803D04B8  3B DE 00 01 */	addi r30, r30, 1
/* 803D04BC  3B 9C 00 0C */	addi r28, r28, 0xc
/* 803D04C0  2C 1E 00 0A */	cmpwi r30, 0xa
/* 803D04C4  41 80 FF B8 */	blt lbl_803D047C
/* 803D04C8  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 803D04CC  41 82 00 A8 */	beq lbl_803D0574
/* 803D04D0  4B C8 C8 25 */	bl fqrand
/* 803D04D4  57 A4 06 3E */	clrlwi r4, r29, 0x18
/* 803D04D8  3C 00 43 30 */	lis r0, 0x4330
/* 803D04DC  3C 60 80 64 */	lis r3, lit_2127@ha /* 0x806428F4@ha */
/* 803D04E0  90 81 00 0C */	stw r4, 0xc(r1)
/* 803D04E4  38 83 28 F4 */	addi r4, r3, lit_2127@l /* 0x806428F4@l */
/* 803D04E8  7C 7A F8 2E */	lwzx r3, r26, r31
/* 803D04EC  90 01 00 08 */	stw r0, 8(r1)
/* 803D04F0  3B A0 00 00 */	li r29, 0
/* 803D04F4  C8 44 00 00 */	lfd f2, 0(r4)
/* 803D04F8  3B C3 00 02 */	addi r30, r3, 2
/* 803D04FC  C8 01 00 08 */	lfd f0, 8(r1)
/* 803D0500  EC 00 10 28 */	fsubs f0, f0, f2
/* 803D0504  EC 00 00 72 */	fmuls f0, f0, f1
/* 803D0508  FC 00 00 1E */	fctiwz f0, f0
/* 803D050C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803D0510  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D0514  54 1F 06 3E */	clrlwi r31, r0, 0x18
lbl_803D0518:
/* 803D0518  3B 80 00 00 */	li r28, 0
lbl_803D051C:
/* 803D051C  A0 7E 00 00 */	lhz r3, 0(r30)
/* 803D0520  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 803D0524  2C 00 00 01 */	cmpwi r0, 1
/* 803D0528  41 82 00 0C */	beq lbl_803D0534
/* 803D052C  2C 00 00 03 */	cmpwi r0, 3
/* 803D0530  40 82 00 24 */	bne lbl_803D0554
lbl_803D0534:
/* 803D0534  4B FF FE 71 */	bl mNpc_CheckSelectFurniture
/* 803D0538  2C 03 00 01 */	cmpwi r3, 1
/* 803D053C  40 82 00 18 */	bne lbl_803D0554
/* 803D0540  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 803D0544  40 82 00 0C */	bne lbl_803D0550
/* 803D0548  A0 7E 00 00 */	lhz r3, 0(r30)
/* 803D054C  48 00 00 2C */	b lbl_803D0578
lbl_803D0550:
/* 803D0550  3B FF FF FF */	addi r31, r31, -1
lbl_803D0554:
/* 803D0554  3B 9C 00 01 */	addi r28, r28, 1
/* 803D0558  3B DE 00 02 */	addi r30, r30, 2
/* 803D055C  2C 1C 00 0A */	cmpwi r28, 0xa
/* 803D0560  41 80 FF BC */	blt lbl_803D051C
/* 803D0564  3B BD 00 01 */	addi r29, r29, 1
/* 803D0568  3B DE 00 0C */	addi r30, r30, 0xc
/* 803D056C  2C 1D 00 0A */	cmpwi r29, 0xa
/* 803D0570  41 80 FF A8 */	blt lbl_803D0518
lbl_803D0574:
/* 803D0574  38 60 00 00 */	li r3, 0
lbl_803D0578:
/* 803D0578  39 61 00 30 */	addi r11, r1, 0x30
/* 803D057C  4B CC A9 99 */	bl func_8009AF14
/* 803D0580  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803D0584  7C 08 03 A6 */	mtlr r0
/* 803D0588  38 21 00 30 */	addi r1, r1, 0x30
/* 803D058C  4E 80 00 20 */	blr 
