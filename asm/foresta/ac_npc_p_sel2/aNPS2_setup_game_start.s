lbl_80568444:
/* 80568444  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80568448  7C 08 02 A6 */	mflr r0
/* 8056844C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80568450  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80568454  7C 9F 23 78 */	mr r31, r4
/* 80568458  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8056845C  7C 7E 1B 78 */	mr r30, r3
/* 80568460  7F C5 F3 78 */	mr r5, r30
/* 80568464  80 83 09 94 */	lwz r4, 0x994(r3)
/* 80568468  38 61 00 08 */	addi r3, r1, 8
/* 8056846C  38 84 FF E9 */	addi r4, r4, -23
/* 80568470  4B FF FD 79 */	bl aNPS2_make_door_data
/* 80568474  7F E3 FB 78 */	mr r3, r31
/* 80568478  38 81 00 08 */	addi r4, r1, 8
/* 8056847C  38 A0 00 01 */	li r5, 1
/* 80568480  4B E8 8D 29 */	bl goto_other_scene
/* 80568484  2C 03 00 01 */	cmpwi r3, 1
/* 80568488  41 82 00 0C */	beq lbl_80568494
/* 8056848C  38 60 00 00 */	li r3, 0
/* 80568490  48 00 00 FC */	b lbl_8056858C
lbl_80568494:
/* 80568494  38 60 11 C2 */	li r3, 0x11c2
/* 80568498  4B E1 36 75 */	bl mBGMPsComp_make_ps_wipe
/* 8056849C  80 1E 09 94 */	lwz r0, 0x994(r30)
/* 805684A0  3B E0 00 00 */	li r31, 0
/* 805684A4  2C 00 00 19 */	cmpwi r0, 0x19
/* 805684A8  41 82 00 90 */	beq lbl_80568538
/* 805684AC  40 80 00 14 */	bge lbl_805684C0
/* 805684B0  2C 00 00 17 */	cmpwi r0, 0x17
/* 805684B4  41 82 00 18 */	beq lbl_805684CC
/* 805684B8  40 80 00 64 */	bge lbl_8056851C
/* 805684BC  48 00 00 BC */	b lbl_80568578
lbl_805684C0:
/* 805684C0  2C 00 00 1B */	cmpwi r0, 0x1b
/* 805684C4  40 80 00 B4 */	bge lbl_80568578
/* 805684C8  48 00 00 AC */	b lbl_80568574
lbl_805684CC:
/* 805684CC  3B E0 00 01 */	li r31, 1
/* 805684D0  4B E3 27 65 */	bl mEv_CheckFirstJob
/* 805684D4  2C 03 00 01 */	cmpwi r3, 1
/* 805684D8  40 82 00 A0 */	bne lbl_80568578
/* 805684DC  4B E7 B6 8D */	bl mQst_GetFirstJobData
/* 805684E0  88 03 00 00 */	lbz r0, 0(r3)
/* 805684E4  54 00 06 BE */	clrlwi r0, r0, 0x1a
/* 805684E8  2C 00 00 0C */	cmpwi r0, 0xc
/* 805684EC  41 82 00 28 */	beq lbl_80568514
/* 805684F0  40 80 00 18 */	bge lbl_80568508
/* 805684F4  2C 00 00 06 */	cmpwi r0, 6
/* 805684F8  40 80 00 80 */	bge lbl_80568578
/* 805684FC  2C 00 00 03 */	cmpwi r0, 3
/* 80568500  40 80 00 14 */	bge lbl_80568514
/* 80568504  48 00 00 74 */	b lbl_80568578
lbl_80568508:
/* 80568508  2C 00 00 0E */	cmpwi r0, 0xe
/* 8056850C  41 82 00 08 */	beq lbl_80568514
/* 80568510  48 00 00 68 */	b lbl_80568578
lbl_80568514:
/* 80568514  3B E0 00 00 */	li r31, 0
/* 80568518  48 00 00 60 */	b lbl_80568578
lbl_8056851C:
/* 8056851C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80568520  38 00 00 01 */	li r0, 1
/* 80568524  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80568528  3B E0 00 01 */	li r31, 1
/* 8056852C  3C 63 00 02 */	addis r3, r3, 2
/* 80568530  98 03 65 21 */	stb r0, 0x6521(r3)
/* 80568534  48 00 00 44 */	b lbl_80568578
lbl_80568538:
/* 80568538  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8056853C  38 00 00 01 */	li r0, 1
/* 80568540  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80568544  38 80 00 08 */	li r4, 8
/* 80568548  3C A3 00 02 */	addis r5, r3, 2
/* 8056854C  80 65 61 3C */	lwz r3, 0x613c(r5)
/* 80568550  98 05 65 21 */	stb r0, 0x6521(r5)
/* 80568554  38 63 11 DC */	addi r3, r3, 0x11dc
/* 80568558  4B E7 9F D5 */	bl mPr_GetThisLandMapIdx
/* 8056855C  2C 03 FF FF */	cmpwi r3, -1
/* 80568560  41 82 00 0C */	beq lbl_8056856C
/* 80568564  3B E0 00 01 */	li r31, 1
/* 80568568  48 00 00 10 */	b lbl_80568578
lbl_8056856C:
/* 8056856C  3B E0 00 00 */	li r31, 0
/* 80568570  48 00 00 08 */	b lbl_80568578
lbl_80568574:
/* 80568574  3B E0 00 00 */	li r31, 0
lbl_80568578:
/* 80568578  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8056857C  38 60 00 01 */	li r3, 1
/* 80568580  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80568584  3C 84 00 02 */	addis r4, r4, 2
/* 80568588  9B E4 61 44 */	stb r31, 0x6144(r4)
lbl_8056858C:
/* 8056858C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80568590  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80568594  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80568598  7C 08 03 A6 */	mtlr r0
/* 8056859C  38 21 00 30 */	addi r1, r1, 0x30
/* 805685A0  4E 80 00 20 */	blr 
