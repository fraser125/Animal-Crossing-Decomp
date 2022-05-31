lbl_805D5404:
/* 805D5404  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805D5408  7C 08 02 A6 */	mflr r0
/* 805D540C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805D5410  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805D5414  93 C1 00 08 */	stw r30, 8(r1)
/* 805D5418  7C 7E 1B 78 */	mr r30, r3
/* 805D541C  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805D5420  80 03 04 90 */	lwz r0, 0x490(r3)
/* 805D5424  83 E3 09 E0 */	lwz r31, 0x9e0(r3)
/* 805D5428  2C 00 00 00 */	cmpwi r0, 0
/* 805D542C  40 82 01 28 */	bne lbl_805D5554
/* 805D5430  80 03 04 BC */	lwz r0, 0x4bc(r3)
/* 805D5434  2C 00 00 04 */	cmpwi r0, 4
/* 805D5438  40 82 01 1C */	bne lbl_805D5554
/* 805D543C  80 03 04 C8 */	lwz r0, 0x4c8(r3)
/* 805D5440  2C 00 00 01 */	cmpwi r0, 1
/* 805D5444  41 82 00 F0 */	beq lbl_805D5534
/* 805D5448  40 80 00 F8 */	bge lbl_805D5540
/* 805D544C  2C 00 00 00 */	cmpwi r0, 0
/* 805D5450  40 80 00 08 */	bge lbl_805D5458
/* 805D5454  48 00 00 EC */	b lbl_805D5540
lbl_805D5458:
/* 805D5458  81 83 09 4C */	lwz r12, 0x94c(r3)
/* 805D545C  7C 83 23 78 */	mr r3, r4
/* 805D5460  38 80 00 06 */	li r4, 6
/* 805D5464  7D 89 03 A6 */	mtctr r12
/* 805D5468  4E 80 04 21 */	bctrl 
/* 805D546C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805D5470  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 805D5474  80 04 00 14 */	lwz r0, 0x14(r4)
/* 805D5478  2C 00 00 31 */	cmpwi r0, 0x31
/* 805D547C  41 82 00 1C */	beq lbl_805D5498
/* 805D5480  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 805D5484  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 805D5488  80 63 00 00 */	lwz r3, 0(r3)
/* 805D548C  A8 03 17 52 */	lha r0, 0x1752(r3)
/* 805D5490  2C 00 00 00 */	cmpwi r0, 0
/* 805D5494  41 82 00 64 */	beq lbl_805D54F8
lbl_805D5498:
/* 805D5498  7F E3 FB 78 */	mr r3, r31
/* 805D549C  4B FF D4 1D */	bl mDE_save_maskcat_texture
/* 805D54A0  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 805D54A4  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 805D54A8  80 63 00 00 */	lwz r3, 0(r3)
/* 805D54AC  A8 03 17 52 */	lha r0, 0x1752(r3)
/* 805D54B0  2C 00 00 00 */	cmpwi r0, 0
/* 805D54B4  41 82 00 0C */	beq lbl_805D54C0
/* 805D54B8  7F E3 FB 78 */	mr r3, r31
/* 805D54BC  4B FF D3 F9 */	bl mDE_print_texture
lbl_805D54C0:
/* 805D54C0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805D54C4  88 1F 06 9B */	lbz r0, 0x69b(r31)
/* 805D54C8  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 805D54CC  38 7F 02 20 */	addi r3, r31, 0x220
/* 805D54D0  3C 84 00 02 */	addis r4, r4, 2
/* 805D54D4  38 A0 02 00 */	li r5, 0x200
/* 805D54D8  3B E4 3F 40 */	addi r31, r4, 0x3f40
/* 805D54DC  98 04 41 40 */	stb r0, 0x4140(r4)
/* 805D54E0  7F E4 FB 78 */	mr r4, r31
/* 805D54E4  4B A8 7B 39 */	bl func_8005D01C
/* 805D54E8  7F E3 FB 78 */	mr r3, r31
/* 805D54EC  38 80 02 00 */	li r4, 0x200
/* 805D54F0  4B A8 7C 2D */	bl osWritebackDCache
/* 805D54F4  48 00 00 30 */	b lbl_805D5524
lbl_805D54F8:
/* 805D54F8  88 1F 06 9C */	lbz r0, 0x69c(r31)
/* 805D54FC  3C 64 00 02 */	addis r3, r4, 2
/* 805D5500  80 A3 61 3C */	lwz r5, 0x613c(r3)
/* 805D5504  38 9F 00 20 */	addi r4, r31, 0x20
/* 805D5508  54 03 07 7E */	clrlwi r3, r0, 0x1d
/* 805D550C  88 1F 06 9B */	lbz r0, 0x69b(r31)
/* 805D5510  1C 63 02 20 */	mulli r3, r3, 0x220
/* 805D5514  38 63 12 40 */	addi r3, r3, 0x1240
/* 805D5518  7C 65 1A 14 */	add r3, r5, r3
/* 805D551C  98 03 00 10 */	stb r0, 0x10(r3)
/* 805D5520  4B DF 47 89 */	bl mNW_OverWriteOriginalTexture
lbl_805D5524:
/* 805D5524  80 7E 01 74 */	lwz r3, 0x174(r30)
/* 805D5528  38 00 00 01 */	li r0, 1
/* 805D552C  98 03 00 02 */	stb r0, 2(r3)
/* 805D5530  48 00 00 24 */	b lbl_805D5554
lbl_805D5534:
/* 805D5534  38 00 00 01 */	li r0, 1
/* 805D5538  90 04 00 04 */	stw r0, 4(r4)
/* 805D553C  48 00 00 18 */	b lbl_805D5554
lbl_805D5540:
/* 805D5540  81 83 09 4C */	lwz r12, 0x94c(r3)
/* 805D5544  7C 83 23 78 */	mr r3, r4
/* 805D5548  38 80 00 06 */	li r4, 6
/* 805D554C  7D 89 03 A6 */	mtctr r12
/* 805D5550  4E 80 04 21 */	bctrl 
lbl_805D5554:
/* 805D5554  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805D5558  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805D555C  83 C1 00 08 */	lwz r30, 8(r1)
/* 805D5560  7C 08 03 A6 */	mtlr r0
/* 805D5564  38 21 00 10 */	addi r1, r1, 0x10
/* 805D5568  4E 80 00 20 */	blr 
