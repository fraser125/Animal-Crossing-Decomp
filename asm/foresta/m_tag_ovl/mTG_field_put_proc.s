lbl_805F5504:
/* 805F5504  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805F5508  7C 08 02 A6 */	mflr r0
/* 805F550C  90 01 00 54 */	stw r0, 0x54(r1)
/* 805F5510  39 61 00 50 */	addi r11, r1, 0x50
/* 805F5514  4B AA 59 A1 */	bl func_8009AEB4
/* 805F5518  3C A0 81 1C */	lis r5, data_811C52F0@ha /* 0x811C52F0@ha */
/* 805F551C  7C 76 1B 78 */	mr r22, r3
/* 805F5520  83 C5 52 F0 */	lwz r30, data_811C52F0@l(r5)  /* 0x811C52F0@l */
/* 805F5524  7C 97 23 78 */	mr r23, r4
/* 805F5528  7F C3 F3 78 */	mr r3, r30
/* 805F552C  4B DE 41 15 */	bl get_player_actor_withoutCheck
/* 805F5530  80 96 00 2C */	lwz r4, 0x2c(r22)
/* 805F5534  7C 7D 1B 78 */	mr r29, r3
/* 805F5538  80 64 09 7C */	lwz r3, 0x97c(r4)
/* 805F553C  38 63 00 08 */	addi r3, r3, 8
/* 805F5540  4B FF A6 21 */	bl mTG_get_table_idx
/* 805F5544  80 96 00 2C */	lwz r4, 0x2c(r22)
/* 805F5548  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805F554C  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 805F5550  7C 7C 1B 78 */	mr r28, r3
/* 805F5554  83 44 09 88 */	lwz r26, 0x988(r4)
/* 805F5558  3F E5 00 02 */	addis r31, r5, 2
/* 805F555C  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 805F5560  57 80 08 3C */	slwi r0, r28, 1
/* 805F5564  A0 9A 05 E0 */	lhz r4, 0x5e0(r26)
/* 805F5568  7C 63 02 14 */	add r3, r3, r0
/* 805F556C  28 04 00 00 */	cmplwi r4, 0
/* 805F5570  A3 63 00 68 */	lhz r27, 0x68(r3)
/* 805F5574  41 82 01 4C */	beq lbl_805F56C0
/* 805F5578  38 00 00 01 */	li r0, 1
/* 805F557C  7C 00 E0 30 */	slw r0, r0, r28
/* 805F5580  7C 80 00 39 */	and. r0, r4, r0
/* 805F5584  41 82 01 3C */	beq lbl_805F56C0
/* 805F5588  3B 80 00 00 */	li r28, 0
/* 805F558C  3B 20 00 00 */	li r25, 0
/* 805F5590  3B 60 00 00 */	li r27, 0
/* 805F5594  3A A0 00 00 */	li r21, 0
lbl_805F5598:
/* 805F5598  38 00 00 01 */	li r0, 1
/* 805F559C  A0 7A 05 E0 */	lhz r3, 0x5e0(r26)
/* 805F55A0  7C 00 D8 30 */	slw r0, r0, r27
/* 805F55A4  7C 60 00 39 */	and. r0, r3, r0
/* 805F55A8  41 82 00 A4 */	beq lbl_805F564C
/* 805F55AC  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 805F55B0  38 15 00 68 */	addi r0, r21, 0x68
/* 805F55B4  7F 03 02 2E */	lhzx r24, r3, r0
/* 805F55B8  7F 03 C3 78 */	mr r3, r24
/* 805F55BC  4B FF FE C9 */	bl mTG_check_island_famicom
/* 805F55C0  2C 03 00 00 */	cmpwi r3, 0
/* 805F55C4  41 82 00 84 */	beq lbl_805F5648
/* 805F55C8  20 18 25 1E */	subfic r0, r24, 0x251e
/* 805F55CC  7F A3 EB 78 */	mr r3, r29
/* 805F55D0  20 D8 25 1E */	subfic r6, r24, 0x251e
/* 805F55D4  38 81 00 08 */	addi r4, r1, 8
/* 805F55D8  20 B8 25 1E */	subfic r5, r24, 0x251e
/* 805F55DC  7C 08 00 34 */	cntlzw r8, r0
/* 805F55E0  20 18 25 1E */	subfic r0, r24, 0x251e
/* 805F55E4  7C C7 00 34 */	cntlzw r7, r6
/* 805F55E8  7C A6 00 34 */	cntlzw r6, r5
/* 805F55EC  55 05 D9 7E */	srwi r5, r8, 5
/* 805F55F0  7C 00 00 34 */	cntlzw r0, r0
/* 805F55F4  54 E7 D9 7E */	srwi r7, r7, 5
/* 805F55F8  54 C8 D9 7E */	srwi r8, r6, 5
/* 805F55FC  38 C0 00 00 */	li r6, 0
/* 805F5600  54 09 D9 7E */	srwi r9, r0, 5
/* 805F5604  4B FF D7 E5 */	bl mTG_search_put_pos
/* 805F5608  2C 03 00 00 */	cmpwi r3, 0
/* 805F560C  41 82 00 40 */	beq lbl_805F564C
/* 805F5610  7F C3 F3 78 */	mr r3, r30
/* 805F5614  7F 04 C3 78 */	mr r4, r24
/* 805F5618  38 A1 00 08 */	addi r5, r1, 8
/* 805F561C  7F 86 07 34 */	extsh r6, r28
/* 805F5620  4B FF D8 65 */	bl mTG_common_throw_put_field
/* 805F5624  2C 03 00 00 */	cmpwi r3, 0
/* 805F5628  41 82 00 24 */	beq lbl_805F564C
/* 805F562C  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 805F5630  7F 64 DB 78 */	mr r4, r27
/* 805F5634  38 A0 00 00 */	li r5, 0
/* 805F5638  38 C0 00 00 */	li r6, 0
/* 805F563C  4B DE B7 ED */	bl mPr_SetPossessionItem
/* 805F5640  3B 9C 00 01 */	addi r28, r28, 1
/* 805F5644  48 00 00 08 */	b lbl_805F564C
lbl_805F5648:
/* 805F5648  3B 39 00 01 */	addi r25, r25, 1
lbl_805F564C:
/* 805F564C  3B 7B 00 01 */	addi r27, r27, 1
/* 805F5650  3A B5 00 02 */	addi r21, r21, 2
/* 805F5654  2C 1B 00 0F */	cmpwi r27, 0xf
/* 805F5658  41 80 FF 40 */	blt lbl_805F5598
/* 805F565C  2C 1C 00 00 */	cmpwi r28, 0
/* 805F5660  41 82 00 28 */	beq lbl_805F5688
/* 805F5664  7E C3 B3 78 */	mr r3, r22
/* 805F5668  38 80 00 00 */	li r4, 0
/* 805F566C  38 A0 00 00 */	li r5, 0
/* 805F5670  4B FF A1 45 */	bl mTG_return_tag_init
/* 805F5674  7E C3 B3 78 */	mr r3, r22
/* 805F5678  7E E4 BB 78 */	mr r4, r23
/* 805F567C  38 A0 00 00 */	li r5, 0
/* 805F5680  4B FF D9 95 */	bl mTG_close_window
/* 805F5684  48 00 00 30 */	b lbl_805F56B4
lbl_805F5688:
/* 805F5688  2C 19 00 00 */	cmpwi r25, 0
/* 805F568C  41 82 00 18 */	beq lbl_805F56A4
/* 805F5690  7E C3 B3 78 */	mr r3, r22
/* 805F5694  7E E4 BB 78 */	mr r4, r23
/* 805F5698  38 A0 00 18 */	li r5, 0x18
/* 805F569C  4B FF D7 85 */	bl mTG_open_warning_window
/* 805F56A0  48 00 00 14 */	b lbl_805F56B4
lbl_805F56A4:
/* 805F56A4  7E C3 B3 78 */	mr r3, r22
/* 805F56A8  7E E4 BB 78 */	mr r4, r23
/* 805F56AC  38 A0 00 0B */	li r5, 0xb
/* 805F56B0  4B FF D7 71 */	bl mTG_open_warning_window
lbl_805F56B4:
/* 805F56B4  38 00 00 00 */	li r0, 0
/* 805F56B8  B0 1A 05 E0 */	sth r0, 0x5e0(r26)
/* 805F56BC  48 00 01 A4 */	b lbl_805F5860
lbl_805F56C0:
/* 805F56C0  28 1B 25 1E */	cmplwi r27, 0x251e
/* 805F56C4  40 82 00 50 */	bne lbl_805F5714
/* 805F56C8  4B DB 1A 11 */	bl mFI_CheckInIsland
/* 805F56CC  2C 03 00 00 */	cmpwi r3, 0
/* 805F56D0  40 82 00 10 */	bne lbl_805F56E0
/* 805F56D4  4B DB E4 35 */	bl mLd_PlayerManKindCheck
/* 805F56D8  2C 03 00 00 */	cmpwi r3, 0
/* 805F56DC  41 82 00 38 */	beq lbl_805F5714
lbl_805F56E0:
/* 805F56E0  4B DB 19 F9 */	bl mFI_CheckInIsland
/* 805F56E4  2C 03 00 00 */	cmpwi r3, 0
/* 805F56E8  41 82 00 18 */	beq lbl_805F5700
/* 805F56EC  7E C3 B3 78 */	mr r3, r22
/* 805F56F0  7E E4 BB 78 */	mr r4, r23
/* 805F56F4  38 A0 00 15 */	li r5, 0x15
/* 805F56F8  4B FF D7 29 */	bl mTG_open_warning_window
/* 805F56FC  48 00 01 64 */	b lbl_805F5860
lbl_805F5700:
/* 805F5700  7E C3 B3 78 */	mr r3, r22
/* 805F5704  7E E4 BB 78 */	mr r4, r23
/* 805F5708  38 A0 00 14 */	li r5, 0x14
/* 805F570C  4B FF D7 15 */	bl mTG_open_warning_window
/* 805F5710  48 00 01 50 */	b lbl_805F5860
lbl_805F5714:
/* 805F5714  7F 63 DB 78 */	mr r3, r27
/* 805F5718  38 80 00 00 */	li r4, 0
/* 805F571C  38 A0 00 11 */	li r5, 0x11
/* 805F5720  38 C0 00 00 */	li r6, 0
/* 805F5724  4B DF 31 9D */	bl mSP_SearchItemCategoryPriority
/* 805F5728  2C 03 00 00 */	cmpwi r3, 0
/* 805F572C  40 82 00 20 */	bne lbl_805F574C
/* 805F5730  7F 63 DB 78 */	mr r3, r27
/* 805F5734  38 80 00 00 */	li r4, 0
/* 805F5738  38 A0 00 0F */	li r5, 0xf
/* 805F573C  38 C0 00 00 */	li r6, 0
/* 805F5740  4B DF 31 81 */	bl mSP_SearchItemCategoryPriority
/* 805F5744  2C 03 00 00 */	cmpwi r3, 0
/* 805F5748  41 82 00 24 */	beq lbl_805F576C
lbl_805F574C:
/* 805F574C  4B DB 19 8D */	bl mFI_CheckInIsland
/* 805F5750  2C 03 00 00 */	cmpwi r3, 0
/* 805F5754  41 82 00 18 */	beq lbl_805F576C
/* 805F5758  7E C3 B3 78 */	mr r3, r22
/* 805F575C  7E E4 BB 78 */	mr r4, r23
/* 805F5760  38 A0 00 18 */	li r5, 0x18
/* 805F5764  4B FF D6 BD */	bl mTG_open_warning_window
/* 805F5768  48 00 00 F8 */	b lbl_805F5860
lbl_805F576C:
/* 805F576C  20 1B 25 1E */	subfic r0, r27, 0x251e
/* 805F5770  7F A3 EB 78 */	mr r3, r29
/* 805F5774  20 DB 25 1E */	subfic r6, r27, 0x251e
/* 805F5778  38 81 00 08 */	addi r4, r1, 8
/* 805F577C  20 BB 25 1E */	subfic r5, r27, 0x251e
/* 805F5780  7C 08 00 34 */	cntlzw r8, r0
/* 805F5784  20 1B 25 1E */	subfic r0, r27, 0x251e
/* 805F5788  7C C7 00 34 */	cntlzw r7, r6
/* 805F578C  7C A6 00 34 */	cntlzw r6, r5
/* 805F5790  55 05 D9 7E */	srwi r5, r8, 5
/* 805F5794  7C 00 00 34 */	cntlzw r0, r0
/* 805F5798  54 E7 D9 7E */	srwi r7, r7, 5
/* 805F579C  54 C8 D9 7E */	srwi r8, r6, 5
/* 805F57A0  38 C0 00 00 */	li r6, 0
/* 805F57A4  54 09 D9 7E */	srwi r9, r0, 5
/* 805F57A8  4B FF D6 41 */	bl mTG_search_put_pos
/* 805F57AC  2C 03 00 00 */	cmpwi r3, 0
/* 805F57B0  41 82 00 84 */	beq lbl_805F5834
/* 805F57B4  7F C3 F3 78 */	mr r3, r30
/* 805F57B8  7F 64 DB 78 */	mr r4, r27
/* 805F57BC  38 A1 00 08 */	addi r5, r1, 8
/* 805F57C0  38 C0 00 00 */	li r6, 0
/* 805F57C4  4B FF D6 C1 */	bl mTG_common_throw_put_field
/* 805F57C8  2C 03 00 00 */	cmpwi r3, 0
/* 805F57CC  41 82 00 68 */	beq lbl_805F5834
/* 805F57D0  80 17 00 38 */	lwz r0, 0x38(r23)
/* 805F57D4  2C 00 00 0D */	cmpwi r0, 0xd
/* 805F57D8  40 82 00 24 */	bne lbl_805F57FC
/* 805F57DC  80 17 00 3C */	lwz r0, 0x3c(r23)
/* 805F57E0  7F 84 E3 78 */	mr r4, r28
/* 805F57E4  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 805F57E8  38 C0 00 00 */	li r6, 0
/* 805F57EC  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 805F57F0  4B DE B6 39 */	bl mPr_SetPossessionItem
/* 805F57F4  4B DE 46 51 */	bl mPlib_request_main_wait_from_submenu
/* 805F57F8  48 00 00 18 */	b lbl_805F5810
lbl_805F57FC:
/* 805F57FC  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 805F5800  7F 84 E3 78 */	mr r4, r28
/* 805F5804  38 A0 00 00 */	li r5, 0
/* 805F5808  38 C0 00 00 */	li r6, 0
/* 805F580C  4B DE B6 1D */	bl mPr_SetPossessionItem
lbl_805F5810:
/* 805F5810  7E C3 B3 78 */	mr r3, r22
/* 805F5814  38 80 00 00 */	li r4, 0
/* 805F5818  38 A0 00 00 */	li r5, 0
/* 805F581C  4B FF 9F 99 */	bl mTG_return_tag_init
/* 805F5820  7E C3 B3 78 */	mr r3, r22
/* 805F5824  7E E4 BB 78 */	mr r4, r23
/* 805F5828  38 A0 00 00 */	li r5, 0
/* 805F582C  4B FF D7 E9 */	bl mTG_close_window
/* 805F5830  48 00 00 30 */	b lbl_805F5860
lbl_805F5834:
/* 805F5834  28 1B 25 1E */	cmplwi r27, 0x251e
/* 805F5838  40 82 00 18 */	bne lbl_805F5850
/* 805F583C  7E C3 B3 78 */	mr r3, r22
/* 805F5840  7E E4 BB 78 */	mr r4, r23
/* 805F5844  38 A0 00 13 */	li r5, 0x13
/* 805F5848  4B FF D5 D9 */	bl mTG_open_warning_window
/* 805F584C  48 00 00 14 */	b lbl_805F5860
lbl_805F5850:
/* 805F5850  7E C3 B3 78 */	mr r3, r22
/* 805F5854  7E E4 BB 78 */	mr r4, r23
/* 805F5858  38 A0 00 0B */	li r5, 0xb
/* 805F585C  4B FF D5 C5 */	bl mTG_open_warning_window
lbl_805F5860:
/* 805F5860  39 61 00 50 */	addi r11, r1, 0x50
/* 805F5864  4B AA 56 9D */	bl func_8009AF00
/* 805F5868  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805F586C  7C 08 03 A6 */	mtlr r0
/* 805F5870  38 21 00 50 */	addi r1, r1, 0x50
/* 805F5874  4E 80 00 20 */	blr 
