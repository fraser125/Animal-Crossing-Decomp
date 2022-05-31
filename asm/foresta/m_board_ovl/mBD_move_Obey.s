lbl_805C51F4:
/* 805C51F4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 805C51F8  7C 08 02 A6 */	mflr r0
/* 805C51FC  90 01 00 64 */	stw r0, 0x64(r1)
/* 805C5200  39 61 00 60 */	addi r11, r1, 0x60
/* 805C5204  4B AD 5C B5 */	bl func_8009AEB8
/* 805C5208  7C 7C 1B 78 */	mr r28, r3
/* 805C520C  7C 9D 23 78 */	mr r29, r4
/* 805C5210  83 43 00 2C */	lwz r26, 0x2c(r3)
/* 805C5214  7F A3 EB 78 */	mr r3, r29
/* 805C5218  83 FA 09 90 */	lwz r31, 0x990(r26)
/* 805C521C  4B FF FD C9 */	bl mBD_roll_control2
/* 805C5220  80 1A 04 90 */	lwz r0, 0x490(r26)
/* 805C5224  2C 00 00 00 */	cmpwi r0, 0
/* 805C5228  40 82 02 08 */	bne lbl_805C5430
/* 805C522C  80 1A 04 BC */	lwz r0, 0x4bc(r26)
/* 805C5230  2C 00 00 04 */	cmpwi r0, 4
/* 805C5234  40 82 01 FC */	bne lbl_805C5430
/* 805C5238  80 1A 04 C8 */	lwz r0, 0x4c8(r26)
/* 805C523C  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 805C5240  2C 00 00 00 */	cmpwi r0, 0
/* 805C5244  83 C3 09 8C */	lwz r30, 0x98c(r3)
/* 805C5248  40 82 01 88 */	bne lbl_805C53D0
/* 805C524C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805C5250  80 7F 01 34 */	lwz r3, 0x134(r31)
/* 805C5254  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 805C5258  38 9F 00 08 */	addi r4, r31, 8
/* 805C525C  3F 25 00 02 */	addis r25, r5, 2
/* 805C5260  83 59 61 3C */	lwz r26, 0x613c(r25)
/* 805C5264  4B DF 77 11 */	bl mMl_copy_mail
/* 805C5268  38 7F 01 12 */	addi r3, r31, 0x112
/* 805C526C  38 80 00 20 */	li r4, 0x20
/* 805C5270  38 A0 00 20 */	li r5, 0x20
/* 805C5274  4B DF 73 B1 */	bl func_803BC624
/* 805C5278  80 9F 01 34 */	lwz r4, 0x134(r31)
/* 805C527C  7C 7B 1B 78 */	mr r27, r3
/* 805C5280  88 1F 00 07 */	lbz r0, 7(r31)
/* 805C5284  38 61 00 08 */	addi r3, r1, 8
/* 805C5288  38 84 01 0A */	addi r4, r4, 0x10a
/* 805C528C  38 A0 00 20 */	li r5, 0x20
/* 805C5290  7F 1B 00 50 */	subf r24, r27, r0
/* 805C5294  4B DF 57 91 */	bl func_803BAA24
/* 805C5298  3A C1 00 08 */	addi r22, r1, 8
/* 805C529C  3A E0 00 00 */	li r23, 0
/* 805C52A0  7F 69 03 A6 */	mtctr r27
/* 805C52A4  2C 1B 00 00 */	cmpwi r27, 0
/* 805C52A8  40 81 00 1C */	ble lbl_805C52C4
lbl_805C52AC:
/* 805C52AC  88 16 00 00 */	lbz r0, 0(r22)
/* 805C52B0  28 00 00 20 */	cmplwi r0, 0x20
/* 805C52B4  40 82 00 10 */	bne lbl_805C52C4
/* 805C52B8  3A F7 00 01 */	addi r23, r23, 1
/* 805C52BC  3A D6 00 01 */	addi r22, r22, 1
/* 805C52C0  42 00 FF EC */	bdnz lbl_805C52AC
lbl_805C52C4:
/* 805C52C4  80 7F 01 34 */	lwz r3, 0x134(r31)
/* 805C52C8  38 80 00 20 */	li r4, 0x20
/* 805C52CC  38 A0 00 20 */	li r5, 0x20
/* 805C52D0  38 63 01 0A */	addi r3, r3, 0x10a
/* 805C52D4  4B DF 57 75 */	bl mem_clear
/* 805C52D8  2C 18 00 20 */	cmpwi r24, 0x20
/* 805C52DC  40 80 00 1C */	bge lbl_805C52F8
/* 805C52E0  80 1F 01 34 */	lwz r0, 0x134(r31)
/* 805C52E4  38 78 01 0A */	addi r3, r24, 0x10a
/* 805C52E8  7E C4 B3 78 */	mr r4, r22
/* 805C52EC  7C B7 D8 50 */	subf r5, r23, r27
/* 805C52F0  7C 60 1A 14 */	add r3, r0, r3
/* 805C52F4  4B DF 57 31 */	bl func_803BAA24
lbl_805C52F8:
/* 805C52F8  80 1D 00 38 */	lwz r0, 0x38(r29)
/* 805C52FC  2C 00 00 03 */	cmpwi r0, 3
/* 805C5300  41 82 00 34 */	beq lbl_805C5334
/* 805C5304  88 1F 00 37 */	lbz r0, 0x37(r31)
/* 805C5308  38 7A 04 A8 */	addi r3, r26, 0x4a8
/* 805C530C  38 A0 00 18 */	li r5, 0x18
/* 805C5310  98 1A 04 A6 */	stb r0, 0x4a6(r26)
/* 805C5314  80 9F 01 34 */	lwz r4, 0x134(r31)
/* 805C5318  38 84 00 32 */	addi r4, r4, 0x32
/* 805C531C  4B DF 57 09 */	bl func_803BAA24
/* 805C5320  80 9F 01 34 */	lwz r4, 0x134(r31)
/* 805C5324  38 7A 04 C0 */	addi r3, r26, 0x4c0
/* 805C5328  38 A0 00 20 */	li r5, 0x20
/* 805C532C  38 84 01 0A */	addi r4, r4, 0x10a
/* 805C5330  4B DF 56 F5 */	bl func_803BAA24
lbl_805C5334:
/* 805C5334  80 9D 00 3C */	lwz r4, 0x3c(r29)
/* 805C5338  2C 04 FF FF */	cmpwi r4, -1
/* 805C533C  41 82 00 84 */	beq lbl_805C53C0
/* 805C5340  80 79 61 3C */	lwz r3, 0x613c(r25)
/* 805C5344  54 80 08 3C */	slwi r0, r4, 1
/* 805C5348  7C A3 02 14 */	add r5, r3, r0
/* 805C534C  A0 A5 00 68 */	lhz r5, 0x68(r5)
/* 805C5350  38 C5 E0 00 */	addi r6, r5, -8192
/* 805C5354  7C C0 36 70 */	srawi r0, r6, 6
/* 805C5358  7C A0 01 94 */	addze r5, r0
/* 805C535C  54 C0 D0 0A */	slwi r0, r6, 0x1a
/* 805C5360  38 E5 00 01 */	addi r7, r5, 1
/* 805C5364  54 C5 0F FE */	srwi r5, r6, 0x1f
/* 805C5368  7C 05 00 50 */	subf r0, r5, r0
/* 805C536C  54 00 30 3E */	rotlwi r0, r0, 6
/* 805C5370  2C 07 00 01 */	cmpwi r7, 1
/* 805C5374  7C A0 2A 14 */	add r5, r0, r5
/* 805C5378  40 81 00 24 */	ble lbl_805C539C
/* 805C537C  38 07 FF FE */	addi r0, r7, -2
/* 805C5380  38 C0 00 00 */	li r6, 0
/* 805C5384  54 00 30 32 */	slwi r0, r0, 6
/* 805C5388  7C A5 02 14 */	add r5, r5, r0
/* 805C538C  38 05 20 00 */	addi r0, r5, 0x2000
/* 805C5390  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 805C5394  4B E1 BA 95 */	bl mPr_SetPossessionItem
/* 805C5398  48 00 00 10 */	b lbl_805C53A8
lbl_805C539C:
/* 805C539C  38 A0 00 00 */	li r5, 0
/* 805C53A0  38 C0 00 00 */	li r6, 0
/* 805C53A4  4B E1 BA 85 */	bl mPr_SetPossessionItem
lbl_805C53A8:
/* 805C53A8  80 9C 00 2C */	lwz r4, 0x2c(r28)
/* 805C53AC  7F 83 E3 78 */	mr r3, r28
/* 805C53B0  80 84 09 7C */	lwz r4, 0x97c(r4)
/* 805C53B4  81 84 02 E0 */	lwz r12, 0x2e0(r4)
/* 805C53B8  7D 89 03 A6 */	mtctr r12
/* 805C53BC  4E 80 04 21 */	bctrl 
lbl_805C53C0:
/* 805C53C0  7F 83 E3 78 */	mr r3, r28
/* 805C53C4  7F A4 EB 78 */	mr r4, r29
/* 805C53C8  4B FF FD 6D */	bl mBD_end_board
/* 805C53CC  48 00 00 4C */	b lbl_805C5418
lbl_805C53D0:
/* 805C53D0  2C 00 00 01 */	cmpwi r0, 1
/* 805C53D4  40 82 00 38 */	bne lbl_805C540C
/* 805C53D8  7F 83 E3 78 */	mr r3, r28
/* 805C53DC  38 FF 00 52 */	addi r7, r31, 0x52
/* 805C53E0  38 80 00 0A */	li r4, 0xa
/* 805C53E4  38 A0 00 00 */	li r5, 0
/* 805C53E8  38 C0 00 00 */	li r6, 0
/* 805C53EC  39 00 00 C0 */	li r8, 0xc0
/* 805C53F0  4B E2 A3 39 */	bl mSM_open_submenu_new2
/* 805C53F4  38 60 00 01 */	li r3, 1
/* 805C53F8  38 00 00 00 */	li r0, 0
/* 805C53FC  98 7F 00 00 */	stb r3, 0(r31)
/* 805C5400  98 1F 00 02 */	stb r0, 2(r31)
/* 805C5404  90 7D 00 04 */	stw r3, 4(r29)
/* 805C5408  48 00 00 10 */	b lbl_805C5418
lbl_805C540C:
/* 805C540C  7F 83 E3 78 */	mr r3, r28
/* 805C5410  7F A4 EB 78 */	mr r4, r29
/* 805C5414  4B FF FD 21 */	bl mBD_end_board
lbl_805C5418:
/* 805C5418  28 1E 00 00 */	cmplwi r30, 0
/* 805C541C  41 82 00 14 */	beq lbl_805C5430
/* 805C5420  38 00 00 00 */	li r0, 0
/* 805C5424  B0 1E 00 16 */	sth r0, 0x16(r30)
/* 805C5428  B0 1E 00 22 */	sth r0, 0x22(r30)
/* 805C542C  B0 1E 00 24 */	sth r0, 0x24(r30)
lbl_805C5430:
/* 805C5430  39 61 00 60 */	addi r11, r1, 0x60
/* 805C5434  4B AD 5A D1 */	bl func_8009AF04
/* 805C5438  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805C543C  7C 08 03 A6 */	mtlr r0
/* 805C5440  38 21 00 60 */	addi r1, r1, 0x60
/* 805C5444  4E 80 00 20 */	blr 
