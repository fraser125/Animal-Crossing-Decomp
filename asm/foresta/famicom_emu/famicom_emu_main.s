lbl_8062D404:
/* 8062D404  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8062D408  7C 08 02 A6 */	mflr r0
/* 8062D40C  3C 80 81 36 */	lis r4, data_8135FBA0@ha /* 0x8135FBA0@ha */
/* 8062D410  90 01 00 24 */	stw r0, 0x24(r1)
/* 8062D414  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8062D418  7C 7F 1B 78 */	mr r31, r3
/* 8062D41C  80 04 FB A0 */	lwz r0, data_8135FBA0@l(r4)  /* 0x8135FBA0@l */
/* 8062D420  2C 00 00 00 */	cmpwi r0, 0
/* 8062D424  40 82 00 B4 */	bne lbl_8062D4D8
/* 8062D428  4B A1 8C 1D */	bl famicom_rom_load_check
/* 8062D42C  2C 03 00 00 */	cmpwi r3, 0
/* 8062D430  40 80 00 38 */	bge lbl_8062D468
/* 8062D434  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8062D438  3C 80 81 36 */	lis r4, data_8135FBA0@ha /* 0x8135FBA0@ha */
/* 8062D43C  38 A3 85 38 */	addi r5, r3, common_data@l /* 0x81138538@l */
/* 8062D440  38 00 00 00 */	li r0, 0
/* 8062D444  3C E5 00 03 */	addis r7, r5, 3
/* 8062D448  3C 60 81 36 */	lis r3, famicom_done_countdown@ha /* 0x8135FBA4@ha */
/* 8062D44C  80 C7 DB AC */	lwz r6, -0x2454(r7)
/* 8062D450  38 A0 00 01 */	li r5, 1
/* 8062D454  60 C6 00 01 */	ori r6, r6, 1
/* 8062D458  90 C7 DB AC */	stw r6, -0x2454(r7)
/* 8062D45C  90 A4 FB A0 */	stw r5, data_8135FBA0@l(r4)  /* 0x8135FBA0@l */
/* 8062D460  90 03 FB A4 */	stw r0, famicom_done_countdown@l(r3)  /* 0x8135FBA4@l */
/* 8062D464  48 00 00 74 */	b lbl_8062D4D8
lbl_8062D468:
/* 8062D468  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 8062D46C  38 00 00 04 */	li r0, 4
/* 8062D470  80 A3 52 F0 */	lwz r5, data_811C52F0@l(r3)  /* 0x811C52F0@l */
/* 8062D474  38 60 00 00 */	li r3, 0
/* 8062D478  7C 09 03 A6 */	mtctr r0
lbl_8062D47C:
/* 8062D47C  38 C3 00 14 */	addi r6, r3, 0x14
/* 8062D480  7C C5 32 14 */	add r6, r5, r6
/* 8062D484  A0 86 00 00 */	lhz r4, 0(r6)
/* 8062D488  A0 06 00 0C */	lhz r0, 0xc(r6)
/* 8062D48C  7C 80 03 78 */	or r0, r4, r0
/* 8062D490  28 00 20 30 */	cmplwi r0, 0x2030
/* 8062D494  41 82 00 0C */	beq lbl_8062D4A0
/* 8062D498  28 00 00 F0 */	cmplwi r0, 0xf0
/* 8062D49C  40 82 00 34 */	bne lbl_8062D4D0
lbl_8062D4A0:
/* 8062D4A0  3C 80 81 36 */	lis r4, data_8135FBA0@ha /* 0x8135FBA0@ha */
/* 8062D4A4  38 A0 00 01 */	li r5, 1
/* 8062D4A8  3C 60 81 36 */	lis r3, famicom_done_countdown@ha /* 0x8135FBA4@ha */
/* 8062D4AC  38 00 00 3C */	li r0, 0x3c
/* 8062D4B0  90 A4 FB A0 */	stw r5, data_8135FBA0@l(r4)  /* 0x8135FBA0@l */
/* 8062D4B4  90 03 FB A4 */	stw r0, famicom_done_countdown@l(r3)  /* 0x8135FBA4@l */
/* 8062D4B8  4B A3 41 F9 */	bl JC_JFWDisplay_getManager
/* 8062D4BC  3C 80 81 36 */	lis r4, famicom_done_countdown@ha /* 0x8135FBA4@ha */
/* 8062D4C0  38 84 FB A4 */	addi r4, r4, famicom_done_countdown@l /* 0x8135FBA4@l */
/* 8062D4C4  80 84 00 00 */	lwz r4, 0(r4)
/* 8062D4C8  4B A3 43 35 */	bl JC_JFWDisplay_startFadeOut
/* 8062D4CC  48 00 00 0C */	b lbl_8062D4D8
lbl_8062D4D0:
/* 8062D4D0  38 63 00 18 */	addi r3, r3, 0x18
/* 8062D4D4  42 00 FF A8 */	bdnz lbl_8062D47C
lbl_8062D4D8:
/* 8062D4D8  3C 60 81 36 */	lis r3, data_8135FBA0@ha /* 0x8135FBA0@ha */
/* 8062D4DC  80 03 FB A0 */	lwz r0, data_8135FBA0@l(r3)  /* 0x8135FBA0@l */
/* 8062D4E0  2C 00 00 00 */	cmpwi r0, 0
/* 8062D4E4  41 82 00 2C */	beq lbl_8062D510
/* 8062D4E8  3C 60 81 36 */	lis r3, famicom_done_countdown@ha /* 0x8135FBA4@ha */
/* 8062D4EC  38 83 FB A4 */	addi r4, r3, famicom_done_countdown@l /* 0x8135FBA4@l */
/* 8062D4F0  80 64 00 00 */	lwz r3, 0(r4)
/* 8062D4F4  2C 03 00 00 */	cmpwi r3, 0
/* 8062D4F8  40 82 00 10 */	bne lbl_8062D508
/* 8062D4FC  7F E3 FB 78 */	mr r3, r31
/* 8062D500  4B DC 3E BD */	bl return_emu_game
/* 8062D504  48 00 00 0C */	b lbl_8062D510
lbl_8062D508:
/* 8062D508  38 03 FF FF */	addi r0, r3, -1
/* 8062D50C  90 04 00 00 */	stw r0, 0(r4)
lbl_8062D510:
/* 8062D510  4B 9D 95 4D */	bl JW_BeginFrame
/* 8062D514  38 00 00 01 */	li r0, 1
/* 8062D518  3C 60 81 36 */	lis r3, data_8135FBA0@ha /* 0x8135FBA0@ha */
/* 8062D51C  98 1F 00 9E */	stb r0, 0x9e(r31)
/* 8062D520  80 03 FB A0 */	lwz r0, data_8135FBA0@l(r3)  /* 0x8135FBA0@l */
/* 8062D524  2C 00 00 00 */	cmpwi r0, 0
/* 8062D528  40 82 00 0C */	bne lbl_8062D534
/* 8062D52C  4B A1 85 99 */	bl famicom_1frame
/* 8062D530  48 00 00 1C */	b lbl_8062D54C
lbl_8062D534:
/* 8062D534  4B A3 41 7D */	bl JC_JFWDisplay_getManager
/* 8062D538  3C A0 80 6D */	lis r5, black_color@ha /* 0x806D4AA8@ha */
/* 8062D53C  38 81 00 08 */	addi r4, r1, 8
/* 8062D540  80 05 4A A8 */	lwz r0, black_color@l(r5)  /* 0x806D4AA8@l */
/* 8062D544  90 01 00 08 */	stw r0, 8(r1)
/* 8062D548  4B A3 43 51 */	bl JC_JFWDisplay_clearEfb
lbl_8062D54C:
/* 8062D54C  4B 9D 95 BD */	bl JW_EndFrame
/* 8062D550  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8062D554  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8062D558  7C 08 03 A6 */	mtlr r0
/* 8062D55C  38 21 00 20 */	addi r1, r1, 0x20
/* 8062D560  4E 80 00 20 */	blr 
