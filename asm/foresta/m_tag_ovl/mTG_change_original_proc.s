lbl_805F83CC:
/* 805F83CC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805F83D0  7C 08 02 A6 */	mflr r0
/* 805F83D4  90 01 00 34 */	stw r0, 0x34(r1)
/* 805F83D8  39 61 00 30 */	addi r11, r1, 0x30
/* 805F83DC  4B AA 2A E5 */	bl func_8009AEC0
/* 805F83E0  7C 7C 1B 78 */	mr r28, r3
/* 805F83E4  3B 20 00 00 */	li r25, 0
/* 805F83E8  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805F83EC  3B 00 00 00 */	li r24, 0
/* 805F83F0  83 E3 09 D8 */	lwz r31, 0x9d8(r3)
/* 805F83F4  83 C3 09 DC */	lwz r30, 0x9dc(r3)
lbl_805F83F8:
/* 805F83F8  7F 83 E3 78 */	mr r3, r28
/* 805F83FC  7F 04 C3 78 */	mr r4, r24
/* 805F8400  4B FF 13 39 */	bl mNW_check_mark_flg
/* 805F8404  2C 03 00 00 */	cmpwi r3, 0
/* 805F8408  41 82 00 08 */	beq lbl_805F8410
/* 805F840C  3B 39 00 01 */	addi r25, r25, 1
lbl_805F8410:
/* 805F8410  3B 18 00 01 */	addi r24, r24, 1
/* 805F8414  2C 18 00 08 */	cmpwi r24, 8
/* 805F8418  41 80 FF E0 */	blt lbl_805F83F8
/* 805F841C  3B 60 00 00 */	li r27, 0
/* 805F8420  3B 40 00 00 */	li r26, 0
lbl_805F8424:
/* 805F8424  7F 83 E3 78 */	mr r3, r28
/* 805F8428  7F 44 D3 78 */	mr r4, r26
/* 805F842C  4B FD 4E 2D */	bl mCO_check_mark_flg
/* 805F8430  2C 03 00 00 */	cmpwi r3, 0
/* 805F8434  41 82 00 08 */	beq lbl_805F843C
/* 805F8438  3B 7B 00 01 */	addi r27, r27, 1
lbl_805F843C:
/* 805F843C  3B 5A 00 01 */	addi r26, r26, 1
/* 805F8440  2C 1A 00 0C */	cmpwi r26, 0xc
/* 805F8444  41 80 FF E0 */	blt lbl_805F8424
/* 805F8448  7C 19 D8 00 */	cmpw r25, r27
/* 805F844C  3B 00 00 00 */	li r24, 0
/* 805F8450  3B A0 00 00 */	li r29, 0
/* 805F8454  40 81 00 08 */	ble lbl_805F845C
/* 805F8458  7F 1B C8 50 */	subf r24, r27, r25
lbl_805F845C:
/* 805F845C  7F 20 DA 78 */	xor r0, r25, r27
/* 805F8460  7C 03 0E 70 */	srawi r3, r0, 1
/* 805F8464  7C 00 C8 38 */	and r0, r0, r25
/* 805F8468  7C 00 18 50 */	subf r0, r0, r3
/* 805F846C  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 805F8470  40 82 00 08 */	bne lbl_805F8478
/* 805F8474  7F B9 D8 50 */	subf r29, r25, r27
lbl_805F8478:
/* 805F8478  2C 19 00 00 */	cmpwi r25, 0
/* 805F847C  41 82 00 0C */	beq lbl_805F8488
/* 805F8480  2C 1B 00 00 */	cmpwi r27, 0
/* 805F8484  40 82 00 1C */	bne lbl_805F84A0
lbl_805F8488:
/* 805F8488  38 00 00 00 */	li r0, 0
/* 805F848C  38 60 10 0A */	li r3, 0x100a
/* 805F8490  B0 1F 00 00 */	sth r0, 0(r31)
/* 805F8494  B0 1E 00 14 */	sth r0, 0x14(r30)
/* 805F8498  48 03 58 6D */	bl sAdo_SysTrgStart
/* 805F849C  48 00 00 F0 */	b lbl_805F858C
lbl_805F84A0:
/* 805F84A0  2C 18 00 00 */	cmpwi r24, 0
/* 805F84A4  40 81 00 50 */	ble lbl_805F84F4
/* 805F84A8  3B 20 00 00 */	li r25, 0
/* 805F84AC  3B 40 00 07 */	li r26, 7
/* 805F84B0  3B 60 00 01 */	li r27, 1
/* 805F84B4  48 00 00 30 */	b lbl_805F84E4
lbl_805F84B8:
/* 805F84B8  7F 83 E3 78 */	mr r3, r28
/* 805F84BC  7F 44 D3 78 */	mr r4, r26
/* 805F84C0  4B FF 12 79 */	bl mNW_check_mark_flg
/* 805F84C4  2C 03 00 00 */	cmpwi r3, 0
/* 805F84C8  41 82 00 18 */	beq lbl_805F84E0
/* 805F84CC  A0 7F 00 00 */	lhz r3, 0(r31)
/* 805F84D0  7F 60 D0 30 */	slw r0, r27, r26
/* 805F84D4  3B 39 00 01 */	addi r25, r25, 1
/* 805F84D8  7C 60 00 78 */	andc r0, r3, r0
/* 805F84DC  B0 1F 00 00 */	sth r0, 0(r31)
lbl_805F84E0:
/* 805F84E0  3B 5A FF FF */	addi r26, r26, -1
lbl_805F84E4:
/* 805F84E4  7C 19 C0 00 */	cmpw r25, r24
/* 805F84E8  40 80 00 0C */	bge lbl_805F84F4
/* 805F84EC  2C 1A 00 00 */	cmpwi r26, 0
/* 805F84F0  40 80 FF C8 */	bge lbl_805F84B8
lbl_805F84F4:
/* 805F84F4  2C 1D 00 00 */	cmpwi r29, 0
/* 805F84F8  40 81 00 50 */	ble lbl_805F8548
/* 805F84FC  3B 20 00 00 */	li r25, 0
/* 805F8500  3B 40 00 0B */	li r26, 0xb
/* 805F8504  3B 60 00 01 */	li r27, 1
/* 805F8508  48 00 00 30 */	b lbl_805F8538
lbl_805F850C:
/* 805F850C  7F 83 E3 78 */	mr r3, r28
/* 805F8510  7F 44 D3 78 */	mr r4, r26
/* 805F8514  4B FD 4D 45 */	bl mCO_check_mark_flg
/* 805F8518  2C 03 00 00 */	cmpwi r3, 0
/* 805F851C  41 82 00 18 */	beq lbl_805F8534
/* 805F8520  A0 7E 00 14 */	lhz r3, 0x14(r30)
/* 805F8524  7F 60 D0 30 */	slw r0, r27, r26
/* 805F8528  3B 39 00 01 */	addi r25, r25, 1
/* 805F852C  7C 60 00 78 */	andc r0, r3, r0
/* 805F8530  B0 1E 00 14 */	sth r0, 0x14(r30)
lbl_805F8534:
/* 805F8534  3B 5A FF FF */	addi r26, r26, -1
lbl_805F8538:
/* 805F8538  7C 19 E8 00 */	cmpw r25, r29
/* 805F853C  40 80 00 0C */	bge lbl_805F8548
/* 805F8540  2C 1A 00 00 */	cmpwi r26, 0
/* 805F8544  40 80 FF C8 */	bge lbl_805F850C
lbl_805F8548:
/* 805F8548  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 805F854C  38 A0 00 08 */	li r5, 8
/* 805F8550  A0 DF 00 00 */	lhz r6, 0(r31)
/* 805F8554  38 80 00 0C */	li r4, 0xc
/* 805F8558  80 E3 09 7C */	lwz r7, 0x97c(r3)
/* 805F855C  38 00 00 01 */	li r0, 1
/* 805F8560  38 60 00 02 */	li r3, 2
/* 805F8564  B0 C7 03 B8 */	sth r6, 0x3b8(r7)
/* 805F8568  A0 DE 00 14 */	lhz r6, 0x14(r30)
/* 805F856C  B0 C7 03 BA */	sth r6, 0x3ba(r7)
/* 805F8570  B0 A7 03 BC */	sth r5, 0x3bc(r7)
/* 805F8574  B0 87 03 BE */	sth r4, 0x3be(r7)
/* 805F8578  B0 07 03 C0 */	sth r0, 0x3c0(r7)
/* 805F857C  48 03 57 89 */	bl sAdo_SysTrgStart
/* 805F8580  38 00 00 00 */	li r0, 0
/* 805F8584  B0 1F 00 00 */	sth r0, 0(r31)
/* 805F8588  B0 1E 00 14 */	sth r0, 0x14(r30)
lbl_805F858C:
/* 805F858C  7F 83 E3 78 */	mr r3, r28
/* 805F8590  38 80 00 00 */	li r4, 0
/* 805F8594  38 A0 00 00 */	li r5, 0
/* 805F8598  4B FF 72 1D */	bl mTG_return_tag_init
/* 805F859C  39 61 00 30 */	addi r11, r1, 0x30
/* 805F85A0  4B AA 29 6D */	bl func_8009AF0C
/* 805F85A4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805F85A8  7C 08 03 A6 */	mtlr r0
/* 805F85AC  38 21 00 30 */	addi r1, r1, 0x30
/* 805F85B0  4E 80 00 20 */	blr 
