lbl_804753B4:
/* 804753B4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804753B8  7C 08 02 A6 */	mflr r0
/* 804753BC  90 01 00 34 */	stw r0, 0x34(r1)
/* 804753C0  39 61 00 30 */	addi r11, r1, 0x30
/* 804753C4  4B C2 5A F9 */	bl func_8009AEBC
/* 804753C8  3C A0 81 1D */	lis r5, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 804753CC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804753D0  3B C5 DF E8 */	addi r30, r5, data_811CDFE8@l /* 0x811CDFE8@l */
/* 804753D4  7C 78 1B 78 */	mr r24, r3
/* 804753D8  3B E4 85 38 */	addi r31, r4, common_data@l /* 0x81138538@l */
/* 804753DC  83 7E 00 00 */	lwz r27, 0(r30)
/* 804753E0  3F BF 00 02 */	addis r29, r31, 2
/* 804753E4  83 5E 00 04 */	lwz r26, 4(r30)
/* 804753E8  7F BC EB 78 */	mr r28, r29
/* 804753EC  3B 20 00 00 */	li r25, 0
/* 804753F0  3B BD 32 14 */	addi r29, r29, 0x3214
/* 804753F4  48 00 01 0C */	b lbl_80475500
lbl_804753F8:
/* 804753F8  88 1A 00 00 */	lbz r0, 0(r26)
/* 804753FC  28 00 00 00 */	cmplwi r0, 0
/* 80475400  41 82 00 F4 */	beq lbl_804754F4
/* 80475404  A0 7B 00 00 */	lhz r3, 0(r27)
/* 80475408  4B FF AD 99 */	bl func_804701A0
/* 8047540C  A0 03 00 2E */	lhz r0, 0x2e(r3)
/* 80475410  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 80475414  41 82 00 E0 */	beq lbl_804754F4
/* 80475418  A0 7B 08 44 */	lhz r3, 0x844(r27)
/* 8047541C  28 03 2A 00 */	cmplwi r3, 0x2a00
/* 80475420  41 80 00 D4 */	blt lbl_804754F4
/* 80475424  28 03 2A 37 */	cmplwi r3, 0x2a37
/* 80475428  40 80 00 CC */	bge lbl_804754F4
/* 8047542C  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 80475430  38 63 D6 00 */	addi r3, r3, -10752
/* 80475434  54 77 04 3E */	clrlwi r23, r3, 0x10
/* 80475438  2C 00 00 2F */	cmpwi r0, 0x2f
/* 8047543C  40 82 00 0C */	bne lbl_80475448
/* 80475440  7F A4 EB 78 */	mr r4, r29
/* 80475444  48 00 00 24 */	b lbl_80475468
lbl_80475448:
/* 80475448  88 7C 60 03 */	lbz r3, 0x6003(r28)
/* 8047544C  4B F3 E1 6D */	bl mHS_get_arrange_idx
/* 80475450  1C 83 26 B0 */	mulli r4, r3, 0x26b0
/* 80475454  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80475458  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 8047545C  7C 60 22 14 */	add r3, r0, r4
/* 80475460  3C 83 00 01 */	addis r4, r3, 1
/* 80475464  38 84 C3 6C */	addi r4, r4, -15508
lbl_80475468:
/* 80475468  7E E3 2E 70 */	srawi r3, r23, 5
/* 8047546C  56 E0 06 FE */	clrlwi r0, r23, 0x1b
/* 80475470  7C 63 01 94 */	addze r3, r3
/* 80475474  54 63 17 7A */	rlwinm r3, r3, 2, 0x1d, 0x1d
/* 80475478  7C 64 18 2E */	lwzx r3, r4, r3
/* 8047547C  7C 60 04 30 */	srw r0, r3, r0
/* 80475480  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80475484  40 82 00 70 */	bne lbl_804754F4
/* 80475488  88 1B 01 2C */	lbz r0, 0x12c(r27)
/* 8047548C  28 00 00 01 */	cmplwi r0, 1
/* 80475490  40 82 00 40 */	bne lbl_804754D0
/* 80475494  4B FF C9 29 */	bl aMR_AllMDSwitchOff
/* 80475498  38 00 00 00 */	li r0, 0
/* 8047549C  7F 63 DB 78 */	mr r3, r27
/* 804754A0  B0 1B 08 44 */	sth r0, 0x844(r27)
/* 804754A4  4B FF C9 AD */	bl aMR_OneMDSwitchOn_TheOtherSwitchOff
/* 804754A8  7F 03 C3 78 */	mr r3, r24
/* 804754AC  7F 64 DB 78 */	mr r4, r27
/* 804754B0  4B FF C8 ED */	bl aMR_ReserveDefaultBgm
/* 804754B4  7F 03 C3 78 */	mr r3, r24
/* 804754B8  7F 64 DB 78 */	mr r4, r27
/* 804754BC  4B FF C7 A1 */	bl aMR_ChangeMDBgm
/* 804754C0  38 9B 00 08 */	addi r4, r27, 8
/* 804754C4  38 60 00 17 */	li r3, 0x17
/* 804754C8  48 1B 8A E1 */	bl sAdo_OngenTrgStart
/* 804754CC  48 00 00 18 */	b lbl_804754E4
lbl_804754D0:
/* 804754D0  38 00 00 00 */	li r0, 0
/* 804754D4  38 9B 00 08 */	addi r4, r27, 8
/* 804754D8  B0 1B 08 44 */	sth r0, 0x844(r27)
/* 804754DC  38 60 00 17 */	li r3, 0x17
/* 804754E0  48 1B 8A C9 */	bl sAdo_OngenTrgStart
lbl_804754E4:
/* 804754E4  38 60 00 01 */	li r3, 1
/* 804754E8  38 00 00 00 */	li r0, 0
/* 804754EC  98 7B 01 2D */	stb r3, 0x12d(r27)
/* 804754F0  98 1B 01 2C */	stb r0, 0x12c(r27)
lbl_804754F4:
/* 804754F4  3B 5A 00 01 */	addi r26, r26, 1
/* 804754F8  3B 7B 08 58 */	addi r27, r27, 0x858
/* 804754FC  3B 39 00 01 */	addi r25, r25, 1
lbl_80475500:
/* 80475500  80 1E 00 08 */	lwz r0, 8(r30)
/* 80475504  7C 19 00 00 */	cmpw r25, r0
/* 80475508  41 80 FE F0 */	blt lbl_804753F8
/* 8047550C  39 61 00 30 */	addi r11, r1, 0x30
/* 80475510  4B C2 59 F9 */	bl func_8009AF08
/* 80475514  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80475518  7C 08 03 A6 */	mtlr r0
/* 8047551C  38 21 00 30 */	addi r1, r1, 0x30
/* 80475520  4E 80 00 20 */	blr 
