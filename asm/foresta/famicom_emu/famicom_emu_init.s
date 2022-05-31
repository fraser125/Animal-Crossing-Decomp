lbl_8062D564:
/* 8062D564  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8062D568  7C 08 02 A6 */	mflr r0
/* 8062D56C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8062D570  39 61 00 20 */	addi r11, r1, 0x20
/* 8062D574  4B A6 D9 55 */	bl func_8009AEC8
/* 8062D578  3C 80 81 36 */	lis r4, data_8135FBA0@ha /* 0x8135FBA0@ha */
/* 8062D57C  38 00 00 00 */	li r0, 0
/* 8062D580  3B E4 FB A0 */	addi r31, r4, data_8135FBA0@l /* 0x8135FBA0@l */
/* 8062D584  7C 7C 1B 78 */	mr r28, r3
/* 8062D588  90 1F 00 00 */	stw r0, 0(r31)
/* 8062D58C  38 80 00 00 */	li r4, 0
/* 8062D590  90 1F 00 04 */	stw r0, 4(r31)
/* 8062D594  4B DD 7A A5 */	bl game_resize_hyral
/* 8062D598  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8062D59C  3C 80 81 16 */	lis r4, debug_mode@ha /* 0x81166138@ha */
/* 8062D5A0  38 A3 85 38 */	addi r5, r3, common_data@l /* 0x81138538@l */
/* 8062D5A4  38 00 00 00 */	li r0, 0
/* 8062D5A8  3C C5 00 03 */	addis r6, r5, 3
/* 8062D5AC  38 84 61 38 */	addi r4, r4, debug_mode@l /* 0x81166138@l */
/* 8062D5B0  98 06 87 F9 */	stb r0, -0x7807(r6)
/* 8062D5B4  3C A5 00 02 */	addis r5, r5, 2
/* 8062D5B8  3C 60 80 1F */	lis r3, save_game_image@ha /* 0x801F4DC0@ha */
/* 8062D5BC  80 84 00 00 */	lwz r4, 0(r4)
/* 8062D5C0  8B C6 87 F8 */	lbz r30, -0x7808(r6)
/* 8062D5C4  A8 04 0F DC */	lha r0, 0xfdc(r4)
/* 8062D5C8  7F DE 07 75 */	extsb. r30, r30
/* 8062D5CC  8B A5 60 03 */	lbz r29, 0x6003(r5)
/* 8062D5D0  20 00 00 01 */	subfic r0, r0, 1
/* 8062D5D4  7C 00 00 34 */	cntlzw r0, r0
/* 8062D5D8  54 00 DE 3E */	rlwinm r0, r0, 0x1b, 0x18, 0x1f
/* 8062D5DC  98 03 4D C0 */	stb r0, save_game_image@l(r3)  /* 0x801F4DC0@l */
/* 8062D5E0  A8 64 0F DA */	lha r3, 0xfda(r4)
/* 8062D5E4  40 81 00 1C */	ble lbl_8062D600
/* 8062D5E8  2C 03 00 00 */	cmpwi r3, 0
/* 8062D5EC  41 82 00 14 */	beq lbl_8062D600
/* 8062D5F0  7C 03 00 D0 */	neg r0, r3
/* 8062D5F4  7C 00 18 78 */	andc r0, r0, r3
/* 8062D5F8  7C 00 FE 70 */	srawi r0, r0, 0x1f
/* 8062D5FC  7C 7E 00 38 */	and r30, r3, r0
lbl_8062D600:
/* 8062D600  3C 80 80 63 */	lis r4, famicom_emu_main@ha /* 0x8062D404@ha */
/* 8062D604  3C 60 80 63 */	lis r3, famicom_emu_cleanup@ha /* 0x8062D6C4@ha */
/* 8062D608  38 04 D4 04 */	addi r0, r4, famicom_emu_main@l /* 0x8062D404@l */
/* 8062D60C  90 1C 00 04 */	stw r0, 4(r28)
/* 8062D610  38 03 D6 C4 */	addi r0, r3, famicom_emu_cleanup@l /* 0x8062D6C4@l */
/* 8062D614  90 1C 00 08 */	stw r0, 8(r28)
/* 8062D618  48 00 00 0C */	b lbl_8062D624
lbl_8062D61C:
/* 8062D61C  4B A5 B1 25 */	bl VIWaitForRetrace
/* 8062D620  48 00 06 85 */	bl sAdo_GameFrame
lbl_8062D624:
/* 8062D624  48 00 0D 69 */	bl sAdo_SubGameOK
/* 8062D628  2C 03 00 00 */	cmpwi r3, 0
/* 8062D62C  41 82 FF F0 */	beq lbl_8062D61C
/* 8062D630  4B A3 40 81 */	bl JC_JFWDisplay_getManager
/* 8062D634  7C 7A 1B 78 */	mr r26, r3
/* 8062D638  4B A3 42 8D */	bl JC_JFWDisplay_getRenderMode
/* 8062D63C  7C 7B 1B 78 */	mr r27, r3
/* 8062D640  7F 43 D3 78 */	mr r3, r26
/* 8062D644  38 80 00 01 */	li r4, 1
/* 8062D648  4B A3 42 11 */	bl JC_JFWDisplay_changeToSingleXfb
/* 8062D64C  7C 64 1B 78 */	mr r4, r3
/* 8062D650  7F 83 E3 78 */	mr r3, r28
/* 8062D654  90 9F 00 08 */	stw r4, 8(r31)
/* 8062D658  A0 BB 00 04 */	lhz r5, 4(r27)
/* 8062D65C  A0 1B 00 08 */	lhz r0, 8(r27)
/* 8062D660  7C 05 01 D6 */	mullw r0, r5, r0
/* 8062D664  54 05 08 3C */	slwi r5, r0, 1
/* 8062D668  90 BF 00 0C */	stw r5, 0xc(r31)
/* 8062D66C  4B FF FC 49 */	bl func_8062D2B4
/* 8062D670  3C 80 80 6D */	lis r4, data_806D4A98@ha /* 0x806D4A98@ha */
/* 8062D674  7F C3 F3 78 */	mr r3, r30
/* 8062D678  38 84 4A 98 */	addi r4, r4, data_806D4A98@l /* 0x806D4A98@l */
/* 8062D67C  7F A5 EB 78 */	mr r5, r29
/* 8062D680  4B A1 65 D5 */	bl famicom_init
/* 8062D684  2C 03 00 00 */	cmpwi r3, 0
/* 8062D688  41 82 00 24 */	beq lbl_8062D6AC
/* 8062D68C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8062D690  7F 83 E3 78 */	mr r3, r28
/* 8062D694  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8062D698  3C 84 00 03 */	addis r4, r4, 3
/* 8062D69C  80 04 DB AC */	lwz r0, -0x2454(r4)
/* 8062D6A0  60 00 00 01 */	ori r0, r0, 1
/* 8062D6A4  90 04 DB AC */	stw r0, -0x2454(r4)
/* 8062D6A8  4B DC 3D 15 */	bl return_emu_game
lbl_8062D6AC:
/* 8062D6AC  39 61 00 20 */	addi r11, r1, 0x20
/* 8062D6B0  4B A6 D8 65 */	bl func_8009AF14
/* 8062D6B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8062D6B8  7C 08 03 A6 */	mtlr r0
/* 8062D6BC  38 21 00 20 */	addi r1, r1, 0x20
/* 8062D6C0  4E 80 00 20 */	blr 
