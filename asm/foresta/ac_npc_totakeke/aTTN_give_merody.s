lbl_80586548:
/* 80586548  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8058654C  7C 08 02 A6 */	mflr r0
/* 80586550  90 01 00 24 */	stw r0, 0x24(r1)
/* 80586554  39 61 00 20 */	addi r11, r1, 0x20
/* 80586558  4B B1 49 7D */	bl func_8009AED4
/* 8058655C  7C 7D 1B 78 */	mr r29, r3
/* 80586560  38 60 00 47 */	li r3, 0x47
/* 80586564  38 80 00 0A */	li r4, 0xa
/* 80586568  4B E1 78 65 */	bl mEv_get_save_area
/* 8058656C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80586570  7C 7F 1B 78 */	mr r31, r3
/* 80586574  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 80586578  38 80 00 00 */	li r4, 0
/* 8058657C  3F C3 00 02 */	addis r30, r3, 2
/* 80586580  38 A0 00 00 */	li r5, 0
/* 80586584  80 7E 61 3C */	lwz r3, 0x613c(r30)
/* 80586588  4B E5 A4 45 */	bl mPr_GetPossessionItemSumWithCond
/* 8058658C  28 03 00 00 */	cmplwi r3, 0
/* 80586590  40 82 00 10 */	bne lbl_805865A0
/* 80586594  38 00 00 0B */	li r0, 0xb
/* 80586598  98 1D 09 A6 */	stb r0, 0x9a6(r29)
/* 8058659C  48 00 00 54 */	b lbl_805865F0
lbl_805865A0:
/* 805865A0  38 00 00 0A */	li r0, 0xa
/* 805865A4  38 A0 00 00 */	li r5, 0
/* 805865A8  98 1D 09 A6 */	stb r0, 0x9a6(r29)
/* 805865AC  88 9D 09 9E */	lbz r4, 0x99e(r29)
/* 805865B0  80 7E 61 3C */	lwz r3, 0x613c(r30)
/* 805865B4  38 04 2A 00 */	addi r0, r4, 0x2a00
/* 805865B8  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 805865BC  4B E5 A9 4D */	bl mPr_SetFreePossessionItem
/* 805865C0  A0 7F 00 02 */	lhz r3, 2(r31)
/* 805865C4  38 80 00 10 */	li r4, 0x10
/* 805865C8  4B FF FE 71 */	bl func_80586438
/* 805865CC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805865D0  B0 7F 00 02 */	sth r3, 2(r31)
/* 805865D4  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 805865D8  3C 83 00 02 */	addis r4, r3, 2
/* 805865DC  88 7D 09 9E */	lbz r3, 0x99e(r29)
/* 805865E0  80 84 60 E4 */	lwz r4, 0x60e4(r4)
/* 805865E4  81 84 00 2C */	lwz r12, 0x2c(r4)
/* 805865E8  7D 89 03 A6 */	mtctr r12
/* 805865EC  4E 80 04 21 */	bctrl 
lbl_805865F0:
/* 805865F0  39 61 00 20 */	addi r11, r1, 0x20
/* 805865F4  4B B1 49 2D */	bl func_8009AF20
/* 805865F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805865FC  7C 08 03 A6 */	mtlr r0
/* 80586600  38 21 00 20 */	addi r1, r1, 0x20
/* 80586604  4E 80 00 20 */	blr 