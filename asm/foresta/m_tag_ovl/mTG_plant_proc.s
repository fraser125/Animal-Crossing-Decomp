lbl_805F526C:
/* 805F526C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805F5270  7C 08 02 A6 */	mflr r0
/* 805F5274  90 01 00 54 */	stw r0, 0x54(r1)
/* 805F5278  39 61 00 50 */	addi r11, r1, 0x50
/* 805F527C  4B AA 5C 41 */	bl func_8009AEBC
/* 805F5280  3C A0 81 1C */	lis r5, data_811C52F0@ha /* 0x811C52F0@ha */
/* 805F5284  7C 79 1B 78 */	mr r25, r3
/* 805F5288  83 A5 52 F0 */	lwz r29, data_811C52F0@l(r5)  /* 0x811C52F0@l */
/* 805F528C  7C 9A 23 78 */	mr r26, r4
/* 805F5290  7F A3 EB 78 */	mr r3, r29
/* 805F5294  4B DE 43 AD */	bl get_player_actor_withoutCheck
/* 805F5298  80 99 00 2C */	lwz r4, 0x2c(r25)
/* 805F529C  7C 7C 1B 78 */	mr r28, r3
/* 805F52A0  80 64 09 7C */	lwz r3, 0x97c(r4)
/* 805F52A4  38 63 00 08 */	addi r3, r3, 8
/* 805F52A8  4B FF A8 B9 */	bl mTG_get_table_idx
/* 805F52AC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805F52B0  7C 7B 1B 78 */	mr r27, r3
/* 805F52B4  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805F52B8  80 B9 00 2C */	lwz r5, 0x2c(r25)
/* 805F52BC  3F C4 00 02 */	addis r30, r4, 2
/* 805F52C0  57 7F 08 3C */	slwi r31, r27, 1
/* 805F52C4  80 7E 61 3C */	lwz r3, 0x613c(r30)
/* 805F52C8  82 E5 09 88 */	lwz r23, 0x988(r5)
/* 805F52CC  A0 03 04 A4 */	lhz r0, 0x4a4(r3)
/* 805F52D0  7C 63 FA 14 */	add r3, r3, r31
/* 805F52D4  A3 03 00 68 */	lhz r24, 0x68(r3)
/* 805F52D8  28 00 22 02 */	cmplwi r0, 0x2202
/* 805F52DC  41 80 00 08 */	blt lbl_805F52E4
/* 805F52E0  40 81 00 10 */	ble lbl_805F52F0
lbl_805F52E4:
/* 805F52E4  28 00 22 3B */	cmplwi r0, 0x223b
/* 805F52E8  41 80 00 74 */	blt lbl_805F535C
/* 805F52EC  41 81 00 70 */	bgt lbl_805F535C
lbl_805F52F0:
/* 805F52F0  88 17 03 E0 */	lbz r0, 0x3e0(r23)
/* 805F52F4  28 00 00 01 */	cmplwi r0, 1
/* 805F52F8  40 82 00 64 */	bne lbl_805F535C
/* 805F52FC  7F 03 C3 78 */	mr r3, r24
/* 805F5300  4B FF FE 2D */	bl mTG_island_check_plant_plant
/* 805F5304  7F 03 C3 78 */	mr r3, r24
/* 805F5308  4B FF FE 79 */	bl mTG_island_check_fruit_plant
/* 805F530C  80 1E 61 3C */	lwz r0, 0x613c(r30)
/* 805F5310  38 77 03 C8 */	addi r3, r23, 0x3c8
/* 805F5314  38 A0 00 00 */	li r5, 0
/* 805F5318  7C 80 FA 14 */	add r4, r0, r31
/* 805F531C  A0 84 00 68 */	lhz r4, 0x68(r4)
/* 805F5320  4B DE 46 25 */	bl mPlib_request_main_putin_scoop_from_submenu
/* 805F5324  80 7E 61 3C */	lwz r3, 0x613c(r30)
/* 805F5328  7F 64 DB 78 */	mr r4, r27
/* 805F532C  38 A0 00 00 */	li r5, 0
/* 805F5330  38 C0 00 00 */	li r6, 0
/* 805F5334  4B DE BA F5 */	bl mPr_SetPossessionItem
/* 805F5338  7F 23 CB 78 */	mr r3, r25
/* 805F533C  38 80 00 00 */	li r4, 0
/* 805F5340  38 A0 00 00 */	li r5, 0
/* 805F5344  4B FF A4 71 */	bl mTG_return_tag_init
/* 805F5348  7F 23 CB 78 */	mr r3, r25
/* 805F534C  7F 44 D3 78 */	mr r4, r26
/* 805F5350  38 A0 00 01 */	li r5, 1
/* 805F5354  4B FF DC C1 */	bl mTG_close_window
/* 805F5358  48 00 01 14 */	b lbl_805F546C
lbl_805F535C:
/* 805F535C  20 B8 25 1E */	subfic r5, r24, 0x251e
/* 805F5360  7F 83 E3 78 */	mr r3, r28
/* 805F5364  20 18 25 1E */	subfic r0, r24, 0x251e
/* 805F5368  38 81 00 14 */	addi r4, r1, 0x14
/* 805F536C  7C A6 00 34 */	cntlzw r6, r5
/* 805F5370  38 A0 00 01 */	li r5, 1
/* 805F5374  7C 00 00 34 */	cntlzw r0, r0
/* 805F5378  39 00 00 00 */	li r8, 0
/* 805F537C  54 C6 D9 7E */	srwi r6, r6, 5
/* 805F5380  39 20 00 00 */	li r9, 0
/* 805F5384  54 07 D9 7E */	srwi r7, r0, 5
/* 805F5388  4B FF DA 61 */	bl mTG_search_put_pos
/* 805F538C  2C 03 00 00 */	cmpwi r3, 0
/* 805F5390  41 82 00 CC */	beq lbl_805F545C
/* 805F5394  80 1E 61 3C */	lwz r0, 0x613c(r30)
/* 805F5398  7C 60 FA 14 */	add r3, r0, r31
/* 805F539C  A2 E3 00 68 */	lhz r23, 0x68(r3)
/* 805F53A0  7E E3 BB 78 */	mr r3, r23
/* 805F53A4  4B FF FD 89 */	bl mTG_island_check_plant_plant
/* 805F53A8  28 17 29 00 */	cmplwi r23, 0x2900
/* 805F53AC  40 82 00 0C */	bne lbl_805F53B8
/* 805F53B0  38 80 08 00 */	li r4, 0x800
/* 805F53B4  48 00 00 1C */	b lbl_805F53D0
lbl_805F53B8:
/* 805F53B8  28 17 29 01 */	cmplwi r23, 0x2901
/* 805F53BC  40 82 00 0C */	bne lbl_805F53C8
/* 805F53C0  38 80 08 5D */	li r4, 0x85d
/* 805F53C4  48 00 00 0C */	b lbl_805F53D0
lbl_805F53C8:
/* 805F53C8  38 17 DF 43 */	addi r0, r23, -8381
/* 805F53CC  54 04 04 3E */	clrlwi r4, r0, 0x10
lbl_805F53D0:
/* 805F53D0  7F A3 EB 78 */	mr r3, r29
/* 805F53D4  38 A1 00 14 */	addi r5, r1, 0x14
/* 805F53D8  38 C0 00 00 */	li r6, 0
/* 805F53DC  4B FF DA A9 */	bl mTG_common_throw_put_field
/* 805F53E0  2C 03 00 00 */	cmpwi r3, 0
/* 805F53E4  41 82 00 78 */	beq lbl_805F545C
/* 805F53E8  80 7E 61 3C */	lwz r3, 0x613c(r30)
/* 805F53EC  7F 64 DB 78 */	mr r4, r27
/* 805F53F0  38 A0 00 00 */	li r5, 0
/* 805F53F4  38 C0 00 00 */	li r6, 0
/* 805F53F8  4B DE BA 31 */	bl mPr_SetPossessionItem
/* 805F53FC  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 805F5400  3C 60 80 65 */	lis r3, data_8064B814@ha /* 0x8064B814@ha */
/* 805F5404  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 805F5408  38 83 B8 14 */	addi r4, r3, data_8064B814@l /* 0x8064B814@l */
/* 805F540C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 805F5410  38 61 00 08 */	addi r3, r1, 8
/* 805F5414  90 C1 00 08 */	stw r6, 8(r1)
/* 805F5418  C0 24 00 00 */	lfs f1, 0(r4)
/* 805F541C  90 A1 00 0C */	stw r5, 0xc(r1)
/* 805F5420  90 01 00 10 */	stw r0, 0x10(r1)
/* 805F5424  4B D9 A5 75 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 805F5428  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 805F542C  38 81 00 14 */	addi r4, r1, 0x14
/* 805F5430  38 60 00 2A */	li r3, 0x2a
/* 805F5434  48 03 8B 75 */	bl sAdo_OngenTrgStart
/* 805F5438  7F 23 CB 78 */	mr r3, r25
/* 805F543C  38 80 00 00 */	li r4, 0
/* 805F5440  38 A0 00 00 */	li r5, 0
/* 805F5444  4B FF A3 71 */	bl mTG_return_tag_init
/* 805F5448  7F 23 CB 78 */	mr r3, r25
/* 805F544C  7F 44 D3 78 */	mr r4, r26
/* 805F5450  38 A0 00 00 */	li r5, 0
/* 805F5454  4B FF DB C1 */	bl mTG_close_window
/* 805F5458  48 00 00 14 */	b lbl_805F546C
lbl_805F545C:
/* 805F545C  7F 23 CB 78 */	mr r3, r25
/* 805F5460  7F 44 D3 78 */	mr r4, r26
/* 805F5464  38 A0 00 0C */	li r5, 0xc
/* 805F5468  4B FF D9 B9 */	bl mTG_open_warning_window
lbl_805F546C:
/* 805F546C  39 61 00 50 */	addi r11, r1, 0x50
/* 805F5470  4B AA 5A 99 */	bl func_8009AF08
/* 805F5474  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805F5478  7C 08 03 A6 */	mtlr r0
/* 805F547C  38 21 00 50 */	addi r1, r1, 0x50
/* 805F5480  4E 80 00 20 */	blr 
