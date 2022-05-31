lbl_8048149C:
/* 8048149C  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 804814A0  7C 08 02 A6 */	mflr r0
/* 804814A4  90 01 00 94 */	stw r0, 0x94(r1)
/* 804814A8  39 61 00 90 */	addi r11, r1, 0x90
/* 804814AC  4B C1 9A 19 */	bl func_8009AEC4
/* 804814B0  7C 7B 1B 78 */	mr r27, r3
/* 804814B4  7C 9C 23 78 */	mr r28, r4
/* 804814B8  A8 03 01 74 */	lha r0, 0x174(r3)
/* 804814BC  7C BD 2B 78 */	mr r29, r5
/* 804814C0  7C DE 33 78 */	mr r30, r6
/* 804814C4  2C 00 00 06 */	cmpwi r0, 6
/* 804814C8  40 82 03 04 */	bne lbl_804817CC
/* 804814CC  88 1B 01 D0 */	lbz r0, 0x1d0(r27)
/* 804814D0  28 00 00 01 */	cmplwi r0, 1
/* 804814D4  40 82 02 F8 */	bne lbl_804817CC
/* 804814D8  80 1C 00 00 */	lwz r0, 0(r28)
/* 804814DC  2C 00 00 01 */	cmpwi r0, 1
/* 804814E0  40 82 02 EC */	bne lbl_804817CC
/* 804814E4  80 1C 00 0C */	lwz r0, 0xc(r28)
/* 804814E8  2C 00 00 02 */	cmpwi r0, 2
/* 804814EC  40 82 02 E0 */	bne lbl_804817CC
/* 804814F0  3C 80 81 1D */	lis r4, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 804814F4  80 1C 00 04 */	lwz r0, 4(r28)
/* 804814F8  38 C4 DF E8 */	addi r6, r4, data_811CDFE8@l /* 0x811CDFE8@l */
/* 804814FC  80 86 00 04 */	lwz r4, 4(r6)
/* 80481500  1C A0 08 58 */	mulli r5, r0, 0x858
/* 80481504  80 C6 00 00 */	lwz r6, 0(r6)
/* 80481508  7C 04 00 AE */	lbzx r0, r4, r0
/* 8048150C  7F E6 2A 14 */	add r31, r6, r5
/* 80481510  28 00 00 00 */	cmplwi r0, 0
/* 80481514  41 82 02 B8 */	beq lbl_804817CC
/* 80481518  A8 1F 00 3C */	lha r0, 0x3c(r31)
/* 8048151C  2C 00 00 00 */	cmpwi r0, 0
/* 80481520  40 82 02 AC */	bne lbl_804817CC
/* 80481524  7F 85 E3 78 */	mr r5, r28
/* 80481528  7F E6 FB 78 */	mr r6, r31
/* 8048152C  7F C7 F3 78 */	mr r7, r30
/* 80481530  38 81 00 08 */	addi r4, r1, 8
/* 80481534  4B FF E5 0D */	bl aMR_DecideKurukuruDirect
/* 80481538  2C 03 00 00 */	cmpwi r3, 0
/* 8048153C  41 82 02 90 */	beq lbl_804817CC
/* 80481540  8B 5F 00 3E */	lbz r26, 0x3e(r31)
/* 80481544  38 61 00 18 */	addi r3, r1, 0x18
/* 80481548  80 FF 00 08 */	lwz r7, 8(r31)
/* 8048154C  38 81 00 14 */	addi r4, r1, 0x14
/* 80481550  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80481554  7F 46 D3 78 */	mr r6, r26
/* 80481558  38 A1 00 58 */	addi r5, r1, 0x58
/* 8048155C  90 E1 00 58 */	stw r7, 0x58(r1)
/* 80481560  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80481564  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 80481568  90 01 00 60 */	stw r0, 0x60(r1)
/* 8048156C  4B FE FA E5 */	bl aMR_Wpos2PlaceNumber
/* 80481570  88 1F 00 3E */	lbz r0, 0x3e(r31)
/* 80481574  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80481578  28 00 00 03 */	cmplwi r0, 3
/* 8048157C  80 81 00 18 */	lwz r4, 0x18(r1)
/* 80481580  54 60 20 36 */	slwi r0, r3, 4
/* 80481584  7F 24 02 14 */	add r25, r4, r0
/* 80481588  41 81 01 98 */	bgt lbl_80481720
/* 8048158C  A8 DF 08 3C */	lha r6, 0x83c(r31)
/* 80481590  7F 43 D3 78 */	mr r3, r26
/* 80481594  7F 24 CB 78 */	mr r4, r25
/* 80481598  38 A0 00 C8 */	li r5, 0xc8
/* 8048159C  4B FE FC E9 */	bl aMR_SetInfoFurnitureTable
/* 804815A0  80 DF 00 08 */	lwz r6, 8(r31)
/* 804815A4  7F E3 FB 78 */	mr r3, r31
/* 804815A8  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 804815AC  38 81 00 4C */	addi r4, r1, 0x4c
/* 804815B0  38 A0 00 00 */	li r5, 0
/* 804815B4  90 C1 00 4C */	stw r6, 0x4c(r1)
/* 804815B8  90 01 00 50 */	stw r0, 0x50(r1)
/* 804815BC  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 804815C0  90 01 00 54 */	stw r0, 0x54(r1)
/* 804815C4  4B FF A7 31 */	bl aMR_SetFurniture2FG
/* 804815C8  A8 C1 00 08 */	lha r6, 8(r1)
/* 804815CC  7F E3 FB 78 */	mr r3, r31
/* 804815D0  7F 84 E3 78 */	mr r4, r28
/* 804815D4  7F A5 EB 78 */	mr r5, r29
/* 804815D8  4B FF E8 4D */	bl aMR_ResetFurnitureType
/* 804815DC  2C 03 00 00 */	cmpwi r3, 0
/* 804815E0  41 82 00 EC */	beq lbl_804816CC
/* 804815E4  7F 63 DB 78 */	mr r3, r27
/* 804815E8  7F E4 FB 78 */	mr r4, r31
/* 804815EC  4B FF 63 DD */	bl aMR_RequestItemToFitFurniture
/* 804815F0  2C 03 00 00 */	cmpwi r3, 0
/* 804815F4  41 82 00 D8 */	beq lbl_804816CC
/* 804815F8  A8 81 00 08 */	lha r4, 8(r1)
/* 804815FC  38 00 00 04 */	li r0, 4
/* 80481600  7F E3 FB 78 */	mr r3, r31
/* 80481604  B0 9F 00 3C */	sth r4, 0x3c(r31)
/* 80481608  B0 1B 01 74 */	sth r0, 0x174(r27)
/* 8048160C  4B FF E4 ED */	bl aMR_SetTargetAngle
/* 80481610  38 00 00 00 */	li r0, 0
/* 80481614  7F E3 FB 78 */	mr r3, r31
/* 80481618  98 1B 01 D0 */	stb r0, 0x1d0(r27)
/* 8048161C  4B FF E9 05 */	bl aMR_TypeChangeByRotate
/* 80481620  80 DF 00 08 */	lwz r6, 8(r31)
/* 80481624  38 61 00 10 */	addi r3, r1, 0x10
/* 80481628  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 8048162C  38 81 00 0C */	addi r4, r1, 0xc
/* 80481630  38 A1 00 40 */	addi r5, r1, 0x40
/* 80481634  90 C1 00 40 */	stw r6, 0x40(r1)
/* 80481638  90 01 00 44 */	stw r0, 0x44(r1)
/* 8048163C  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 80481640  90 01 00 48 */	stw r0, 0x48(r1)
/* 80481644  88 DF 00 3E */	lbz r6, 0x3e(r31)
/* 80481648  4B FE FA 09 */	bl aMR_Wpos2PlaceNumber
/* 8048164C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80481650  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80481654  54 00 20 36 */	slwi r0, r0, 4
/* 80481658  88 7F 00 3E */	lbz r3, 0x3e(r31)
/* 8048165C  80 BF 00 04 */	lwz r5, 4(r31)
/* 80481660  7C 84 02 14 */	add r4, r4, r0
/* 80481664  A8 DF 08 3C */	lha r6, 0x83c(r31)
/* 80481668  4B FE FC 1D */	bl aMR_SetInfoFurnitureTable
/* 8048166C  80 DF 00 08 */	lwz r6, 8(r31)
/* 80481670  7F E3 FB 78 */	mr r3, r31
/* 80481674  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80481678  38 81 00 34 */	addi r4, r1, 0x34
/* 8048167C  38 A0 00 01 */	li r5, 1
/* 80481680  90 C1 00 34 */	stw r6, 0x34(r1)
/* 80481684  90 01 00 38 */	stw r0, 0x38(r1)
/* 80481688  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 8048168C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80481690  4B FF A6 65 */	bl aMR_SetFurniture2FG
/* 80481694  7F E3 FB 78 */	mr r3, r31
/* 80481698  4B FF D8 25 */	bl aMR_SetRotateSE
/* 8048169C  4B F3 D6 41 */	bl mMkRm_ReportChangePlayerRoom
/* 804816A0  7F E4 FB 78 */	mr r4, r31
/* 804816A4  7F A5 EB 78 */	mr r5, r29
/* 804816A8  38 61 00 64 */	addi r3, r1, 0x64
/* 804816AC  4B FF D3 A5 */	bl aMR_GokiburiPos_Rotate
/* 804816B0  2C 03 00 00 */	cmpwi r3, 0
/* 804816B4  41 82 01 18 */	beq lbl_804817CC
/* 804816B8  7F C4 F3 78 */	mr r4, r30
/* 804816BC  38 61 00 64 */	addi r3, r1, 0x64
/* 804816C0  38 A0 00 01 */	li r5, 1
/* 804816C4  4B FF 5E 9D */	bl aMR_MakeGokiburi
/* 804816C8  48 00 01 04 */	b lbl_804817CC
lbl_804816CC:
/* 804816CC  80 BF 00 04 */	lwz r5, 4(r31)
/* 804816D0  7F 43 D3 78 */	mr r3, r26
/* 804816D4  A8 DF 08 3C */	lha r6, 0x83c(r31)
/* 804816D8  7F 24 CB 78 */	mr r4, r25
/* 804816DC  4B FE FB A9 */	bl aMR_SetInfoFurnitureTable
/* 804816E0  80 DF 00 08 */	lwz r6, 8(r31)
/* 804816E4  7F E3 FB 78 */	mr r3, r31
/* 804816E8  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 804816EC  38 81 00 28 */	addi r4, r1, 0x28
/* 804816F0  38 A0 00 01 */	li r5, 1
/* 804816F4  90 C1 00 28 */	stw r6, 0x28(r1)
/* 804816F8  90 01 00 2C */	stw r0, 0x2c(r1)
/* 804816FC  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 80481700  90 01 00 30 */	stw r0, 0x30(r1)
/* 80481704  4B FF A5 F1 */	bl aMR_SetFurniture2FG
/* 80481708  7F A3 EB 78 */	mr r3, r29
/* 8048170C  7F 64 DB 78 */	mr r4, r27
/* 80481710  7F C5 F3 78 */	mr r5, r30
/* 80481714  38 C0 00 00 */	li r6, 0
/* 80481718  4B FF D5 79 */	bl aMR_SetBubu
/* 8048171C  48 00 00 A8 */	b lbl_804817C4
lbl_80481720:
/* 80481720  7F E3 FB 78 */	mr r3, r31
/* 80481724  4B FF E8 39 */	bl aMR_SearchNextSituation
/* 80481728  2C 03 00 00 */	cmpwi r3, 0
/* 8048172C  41 82 00 84 */	beq lbl_804817B0
/* 80481730  7F 63 DB 78 */	mr r3, r27
/* 80481734  7F E4 FB 78 */	mr r4, r31
/* 80481738  4B FF 62 91 */	bl aMR_RequestItemToFitFurniture
/* 8048173C  2C 03 00 00 */	cmpwi r3, 0
/* 80481740  41 82 00 70 */	beq lbl_804817B0
/* 80481744  A8 81 00 08 */	lha r4, 8(r1)
/* 80481748  38 00 00 04 */	li r0, 4
/* 8048174C  7F E3 FB 78 */	mr r3, r31
/* 80481750  B0 9F 00 3C */	sth r4, 0x3c(r31)
/* 80481754  B0 1B 01 74 */	sth r0, 0x174(r27)
/* 80481758  4B FF E3 A1 */	bl aMR_SetTargetAngle
/* 8048175C  38 00 00 00 */	li r0, 0
/* 80481760  7F E3 FB 78 */	mr r3, r31
/* 80481764  98 1B 01 D0 */	stb r0, 0x1d0(r27)
/* 80481768  4B FF D7 55 */	bl aMR_SetRotateSE
/* 8048176C  88 7F 00 3E */	lbz r3, 0x3e(r31)
/* 80481770  7F 24 CB 78 */	mr r4, r25
/* 80481774  80 BF 00 04 */	lwz r5, 4(r31)
/* 80481778  A8 DF 08 3C */	lha r6, 0x83c(r31)
/* 8048177C  4B FE FB 09 */	bl aMR_SetInfoFurnitureTable
/* 80481780  80 DF 00 08 */	lwz r6, 8(r31)
/* 80481784  7F E3 FB 78 */	mr r3, r31
/* 80481788  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 8048178C  38 81 00 1C */	addi r4, r1, 0x1c
/* 80481790  38 A0 00 01 */	li r5, 1
/* 80481794  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 80481798  90 01 00 20 */	stw r0, 0x20(r1)
/* 8048179C  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 804817A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804817A4  4B FF A5 51 */	bl aMR_SetFurniture2FG
/* 804817A8  4B F3 D5 35 */	bl mMkRm_ReportChangePlayerRoom
/* 804817AC  48 00 00 20 */	b lbl_804817CC
lbl_804817B0:
/* 804817B0  7F A3 EB 78 */	mr r3, r29
/* 804817B4  7F 64 DB 78 */	mr r4, r27
/* 804817B8  7F C5 F3 78 */	mr r5, r30
/* 804817BC  38 C0 00 00 */	li r6, 0
/* 804817C0  4B FF D4 D1 */	bl aMR_SetBubu
lbl_804817C4:
/* 804817C4  38 00 00 00 */	li r0, 0
/* 804817C8  98 1B 01 D0 */	stb r0, 0x1d0(r27)
lbl_804817CC:
/* 804817CC  39 61 00 90 */	addi r11, r1, 0x90
/* 804817D0  4B C1 97 41 */	bl func_8009AF10
/* 804817D4  80 01 00 94 */	lwz r0, 0x94(r1)
/* 804817D8  7C 08 03 A6 */	mtlr r0
/* 804817DC  38 21 00 90 */	addi r1, r1, 0x90
/* 804817E0  4E 80 00 20 */	blr 
