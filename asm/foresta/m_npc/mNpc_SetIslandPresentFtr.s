lbl_803D51F4:
/* 803D51F4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803D51F8  7C 08 02 A6 */	mflr r0
/* 803D51FC  90 01 00 44 */	stw r0, 0x44(r1)
/* 803D5200  39 61 00 40 */	addi r11, r1, 0x40
/* 803D5204  4B CC 5C C1 */	bl func_8009AEC4
/* 803D5208  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803D520C  3C 60 81 17 */	lis r3, l_mnpc_island_present_ftr@ha /* 0x8116EB84@ha */
/* 803D5210  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803D5214  3B 60 00 00 */	li r27, 0
/* 803D5218  3F E4 00 02 */	addis r31, r4, 2
/* 803D521C  38 63 EB 84 */	addi r3, r3, l_mnpc_island_present_ftr@l /* 0x8116EB84@l */
/* 803D5220  7F FC FB 78 */	mr r28, r31
/* 803D5224  3B 20 00 00 */	li r25, 0
/* 803D5228  3B FF 34 40 */	addi r31, r31, 0x3440
/* 803D522C  7C 7D 1B 78 */	mr r29, r3
/* 803D5230  7F FE FB 78 */	mr r30, r31
/* 803D5234  3B 9C 34 50 */	addi r28, r28, 0x3450
/* 803D5238  4B FF FF 61 */	bl mNpc_ClearIslandPresentFtrInfo_common
/* 803D523C  3B 40 00 00 */	li r26, 0
lbl_803D5240:
/* 803D5240  7F 43 D3 78 */	mr r3, r26
/* 803D5244  4B FF F3 F9 */	bl mNpc_CheckIslandNpcRoomFtrIdx
/* 803D5248  2C 03 FF FF */	cmpwi r3, -1
/* 803D524C  41 82 00 08 */	beq lbl_803D5254
/* 803D5250  3B 7B 00 01 */	addi r27, r27, 1
lbl_803D5254:
/* 803D5254  3B 5A 00 01 */	addi r26, r26, 1
/* 803D5258  2C 1A 00 10 */	cmpwi r26, 0x10
/* 803D525C  41 80 FF E4 */	blt lbl_803D5240
/* 803D5260  2C 1B 00 01 */	cmpwi r27, 1
/* 803D5264  40 81 01 38 */	ble lbl_803D539C
/* 803D5268  4B C8 7A 8D */	bl fqrand
/* 803D526C  6F 63 80 00 */	xoris r3, r27, 0x8000
/* 803D5270  3C 00 43 30 */	lis r0, 0x4330
/* 803D5274  90 61 00 0C */	stw r3, 0xc(r1)
/* 803D5278  3C 80 80 64 */	lis r4, data_806428CC@ha /* 0x806428CC@ha */
/* 803D527C  C8 44 28 CC */	lfd f2, data_806428CC@l(r4)  /* 0x806428CC@l */
/* 803D5280  90 01 00 08 */	stw r0, 8(r1)
/* 803D5284  A0 7F 00 00 */	lhz r3, 0(r31)
/* 803D5288  C8 01 00 08 */	lfd f0, 8(r1)
/* 803D528C  EC 00 10 28 */	fsubs f0, f0, f2
/* 803D5290  EC 00 00 72 */	fmuls f0, f0, f1
/* 803D5294  FC 00 00 1E */	fctiwz f0, f0
/* 803D5298  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803D529C  83 41 00 14 */	lwz r26, 0x14(r1)
/* 803D52A0  4B FF F2 95 */	bl mNpc_GetIslandRoomP
/* 803D52A4  7C 7B 1B 79 */	or. r27, r3, r3
/* 803D52A8  41 82 00 F4 */	beq lbl_803D539C
/* 803D52AC  3B E0 00 00 */	li r31, 0
lbl_803D52B0:
/* 803D52B0  A0 7B 00 00 */	lhz r3, 0(r27)
/* 803D52B4  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 803D52B8  2C 00 00 01 */	cmpwi r0, 1
/* 803D52BC  41 82 00 0C */	beq lbl_803D52C8
/* 803D52C0  2C 00 00 03 */	cmpwi r0, 3
/* 803D52C4  40 82 00 60 */	bne lbl_803D5324
lbl_803D52C8:
/* 803D52C8  7F 23 CB 78 */	mr r3, r25
/* 803D52CC  4B FF F3 71 */	bl mNpc_CheckIslandNpcRoomFtrIdx
/* 803D52D0  2C 03 FF FF */	cmpwi r3, -1
/* 803D52D4  41 82 00 48 */	beq lbl_803D531C
/* 803D52D8  2C 1A 00 00 */	cmpwi r26, 0
/* 803D52DC  40 82 00 3C */	bne lbl_803D5318
/* 803D52E0  A0 7B 00 00 */	lhz r3, 0(r27)
/* 803D52E4  38 80 00 00 */	li r4, 0
/* 803D52E8  48 09 E9 5D */	bl aMR_FurnitureFg_to_FurnitureFgWithDirect
/* 803D52EC  B0 7D 00 14 */	sth r3, 0x14(r29)
/* 803D52F0  7F 23 CB 78 */	mr r3, r25
/* 803D52F4  4B FF F3 49 */	bl mNpc_CheckIslandNpcRoomFtrIdx
/* 803D52F8  2C 03 FF FF */	cmpwi r3, -1
/* 803D52FC  41 82 00 A0 */	beq lbl_803D539C
/* 803D5300  1C 03 01 38 */	mulli r0, r3, 0x138
/* 803D5304  7F A3 EB 78 */	mr r3, r29
/* 803D5308  7F 9C 02 14 */	add r28, r28, r0
/* 803D530C  7F 84 E3 78 */	mr r4, r28
/* 803D5310  48 00 AE 11 */	bl mPr_CopyPersonalID
/* 803D5314  48 00 00 88 */	b lbl_803D539C
lbl_803D5318:
/* 803D5318  3B 5A FF FF */	addi r26, r26, -1
lbl_803D531C:
/* 803D531C  3B 39 00 01 */	addi r25, r25, 1
/* 803D5320  48 00 00 6C */	b lbl_803D538C
lbl_803D5324:
/* 803D5324  28 03 FE B3 */	cmplwi r3, 0xfeb3
/* 803D5328  41 80 00 64 */	blt lbl_803D538C
/* 803D532C  28 03 FE C2 */	cmplwi r3, 0xfec2
/* 803D5330  41 81 00 5C */	bgt lbl_803D538C
/* 803D5334  7F 23 CB 78 */	mr r3, r25
/* 803D5338  4B FF F3 05 */	bl mNpc_CheckIslandNpcRoomFtrIdx
/* 803D533C  2C 03 FF FF */	cmpwi r3, -1
/* 803D5340  41 82 00 48 */	beq lbl_803D5388
/* 803D5344  2C 1A 00 00 */	cmpwi r26, 0
/* 803D5348  40 82 00 3C */	bne lbl_803D5384
/* 803D534C  A0 7B 00 00 */	lhz r3, 0(r27)
/* 803D5350  7F C4 F3 78 */	mr r4, r30
/* 803D5354  4B FF F2 8D */	bl mNpc_getNormalFtr
/* 803D5358  B0 7D 00 14 */	sth r3, 0x14(r29)
/* 803D535C  7F 23 CB 78 */	mr r3, r25
/* 803D5360  4B FF F2 DD */	bl mNpc_CheckIslandNpcRoomFtrIdx
/* 803D5364  2C 03 FF FF */	cmpwi r3, -1
/* 803D5368  41 82 00 34 */	beq lbl_803D539C
/* 803D536C  1C 03 01 38 */	mulli r0, r3, 0x138
/* 803D5370  7F A3 EB 78 */	mr r3, r29
/* 803D5374  7F 9C 02 14 */	add r28, r28, r0
/* 803D5378  7F 84 E3 78 */	mr r4, r28
/* 803D537C  48 00 AD A5 */	bl mPr_CopyPersonalID
/* 803D5380  48 00 00 1C */	b lbl_803D539C
lbl_803D5384:
/* 803D5384  3B 5A FF FF */	addi r26, r26, -1
lbl_803D5388:
/* 803D5388  3B 39 00 01 */	addi r25, r25, 1
lbl_803D538C:
/* 803D538C  3B FF 00 01 */	addi r31, r31, 1
/* 803D5390  3B 7B 00 02 */	addi r27, r27, 2
/* 803D5394  2C 1F 01 00 */	cmpwi r31, 0x100
/* 803D5398  41 80 FF 18 */	blt lbl_803D52B0
lbl_803D539C:
/* 803D539C  48 00 00 F5 */	bl mNpc_CheckIslandPresentFtrIs
/* 803D53A0  2C 03 00 01 */	cmpwi r3, 1
/* 803D53A4  40 82 00 0C */	bne lbl_803D53B0
/* 803D53A8  48 00 01 39 */	bl mNpc_GetIslandPresentFtr
/* 803D53AC  4B FF F9 B1 */	bl mNpc_EraseIslandFtr
lbl_803D53B0:
/* 803D53B0  39 61 00 40 */	addi r11, r1, 0x40
/* 803D53B4  4B CC 5B 5D */	bl func_8009AF10
/* 803D53B8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803D53BC  7C 08 03 A6 */	mtlr r0
/* 803D53C0  38 21 00 40 */	addi r1, r1, 0x40
/* 803D53C4  4E 80 00 20 */	blr 
