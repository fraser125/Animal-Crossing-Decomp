lbl_805703B8:
/* 805703B8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805703BC  7C 08 02 A6 */	mflr r0
/* 805703C0  90 01 00 34 */	stw r0, 0x34(r1)
/* 805703C4  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 805703C8  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 805703CC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805703D0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805703D4  4B E7 37 95 */	bl mQst_GetFirstJobData
/* 805703D8  88 03 00 00 */	lbz r0, 0(r3)
/* 805703DC  54 04 06 BE */	clrlwi r4, r0, 0x1a
/* 805703E0  38 A4 FF FD */	addi r5, r4, -3
/* 805703E4  28 05 00 01 */	cmplwi r5, 1
/* 805703E8  40 82 00 74 */	bne lbl_8057045C
/* 805703EC  3C 60 80 65 */	lis r3, data_806498FC@ha /* 0x806498FC@ha */
/* 805703F0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805703F4  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805703F8  C3 E3 98 FC */	lfs f31, data_806498FC@l(r3)  /* 0x806498FC@l */
/* 805703FC  3B C0 00 00 */	li r30, 0
/* 80570400  3F E4 00 02 */	addis r31, r4, 2
lbl_80570404:
/* 80570404  4B AE C8 F1 */	bl fqrand
/* 80570408  EC 1F 00 72 */	fmuls f0, f31, f1
/* 8057040C  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 80570410  38 A0 00 00 */	li r5, 0
/* 80570414  FC 00 00 1E */	fctiwz f0, f0
/* 80570418  D8 01 00 08 */	stfd f0, 8(r1)
/* 8057041C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80570420  38 04 29 02 */	addi r0, r4, 0x2902
/* 80570424  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 80570428  4B E7 0A E1 */	bl mPr_SetFreePossessionItem
/* 8057042C  3B DE 00 01 */	addi r30, r30, 1
/* 80570430  2C 1E 00 07 */	cmpwi r30, 7
/* 80570434  41 80 FF D0 */	blt lbl_80570404
/* 80570438  3B C0 00 00 */	li r30, 0
lbl_8057043C:
/* 8057043C  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 80570440  38 80 29 00 */	li r4, 0x2900
/* 80570444  38 A0 00 00 */	li r5, 0
/* 80570448  4B E7 0A C1 */	bl mPr_SetFreePossessionItem
/* 8057044C  3B DE 00 01 */	addi r30, r30, 1
/* 80570450  2C 1E 00 03 */	cmpwi r30, 3
/* 80570454  41 80 FF E8 */	blt lbl_8057043C
/* 80570458  48 00 00 98 */	b lbl_805704F0
lbl_8057045C:
/* 8057045C  28 05 00 0A */	cmplwi r5, 0xa
/* 80570460  41 81 00 68 */	bgt lbl_805704C8
/* 80570464  3C 80 80 6C */	lis r4, lit_585@ha /* 0x806BEFB4@ha */
/* 80570468  54 A0 10 3A */	slwi r0, r5, 2
/* 8057046C  38 84 EF B4 */	addi r4, r4, lit_585@l /* 0x806BEFB4@l */
/* 80570470  7C 04 00 2E */	lwzx r0, r4, r0
/* 80570474  7C 09 03 A6 */	mtctr r0
/* 80570478  4E 80 04 20 */	bctr 
lbl_8057047C:
/* 8057047C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80570480  A0 83 00 28 */	lhz r4, 0x28(r3)
/* 80570484  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 80570488  38 A0 00 02 */	li r5, 2
/* 8057048C  3C 63 00 02 */	addis r3, r3, 2
/* 80570490  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 80570494  4B E7 0A 75 */	bl mPr_SetFreePossessionItem
/* 80570498  48 00 00 58 */	b lbl_805704F0
lbl_8057049C:
/* 8057049C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805704A0  3C 60 80 6C */	lis r3, set_itemNo@ha /* 0x806BEF9C@ha */
/* 805704A4  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805704A8  54 A0 08 3C */	slwi r0, r5, 1
/* 805704AC  3C A4 00 02 */	addis r5, r4, 2
/* 805704B0  38 83 EF 9C */	addi r4, r3, set_itemNo@l /* 0x806BEF9C@l */
/* 805704B4  80 65 61 3C */	lwz r3, 0x613c(r5)
/* 805704B8  38 A0 00 00 */	li r5, 0
/* 805704BC  7C 84 02 2E */	lhzx r4, r4, r0
/* 805704C0  4B E7 0A 49 */	bl mPr_SetFreePossessionItem
/* 805704C4  48 00 00 2C */	b lbl_805704F0
lbl_805704C8:
/* 805704C8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805704CC  3C 60 80 6C */	lis r3, set_itemNo@ha /* 0x806BEF9C@ha */
/* 805704D0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805704D4  54 A0 08 3C */	slwi r0, r5, 1
/* 805704D8  3C A4 00 02 */	addis r5, r4, 2
/* 805704DC  38 83 EF 9C */	addi r4, r3, set_itemNo@l /* 0x806BEF9C@l */
/* 805704E0  80 65 61 3C */	lwz r3, 0x613c(r5)
/* 805704E4  38 A0 00 02 */	li r5, 2
/* 805704E8  7C 84 02 2E */	lhzx r4, r4, r0
/* 805704EC  4B E7 0A 1D */	bl mPr_SetFreePossessionItem
lbl_805704F0:
/* 805704F0  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 805704F4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805704F8  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 805704FC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80570500  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80570504  7C 08 03 A6 */	mtlr r0
/* 80570508  38 21 00 30 */	addi r1, r1, 0x30
/* 8057050C  4E 80 00 20 */	blr 
