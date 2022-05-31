lbl_805F45C4:
/* 805F45C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805F45C8  7C 08 02 A6 */	mflr r0
/* 805F45CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 805F45D0  39 61 00 20 */	addi r11, r1, 0x20
/* 805F45D4  4B AA 68 F9 */	bl func_8009AECC
/* 805F45D8  7C 7B 1B 78 */	mr r27, r3
/* 805F45DC  7C 9C 23 78 */	mr r28, r4
/* 805F45E0  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805F45E4  80 63 09 7C */	lwz r3, 0x97c(r3)
/* 805F45E8  38 63 00 08 */	addi r3, r3, 8
/* 805F45EC  4B FF B5 75 */	bl mTG_get_table_idx
/* 805F45F0  7C 7F 1B 78 */	mr r31, r3
/* 805F45F4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805F45F8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805F45FC  83 BB 01 74 */	lwz r29, 0x174(r27)
/* 805F4600  1C 9F 01 2A */	mulli r4, r31, 0x12a
/* 805F4604  38 00 00 00 */	li r0, 0
/* 805F4608  3C 63 00 02 */	addis r3, r3, 2
/* 805F460C  80 A3 61 3C */	lwz r5, 0x613c(r3)
/* 805F4610  38 7B 00 38 */	addi r3, r27, 0x38
/* 805F4614  3B C4 04 E0 */	addi r30, r4, 0x4e0
/* 805F4618  7F C5 F2 14 */	add r30, r5, r30
/* 805F461C  98 1E 00 2E */	stb r0, 0x2e(r30)
/* 805F4620  7F C4 F3 78 */	mr r4, r30
/* 805F4624  4B DC 83 51 */	bl mMl_copy_mail
/* 805F4628  7F C3 F3 78 */	mr r3, r30
/* 805F462C  4B DC 80 D5 */	bl mMl_clear_mail
/* 805F4630  9B FD 00 02 */	stb r31, 2(r29)
/* 805F4634  38 80 25 00 */	li r4, 0x2500
/* 805F4638  38 60 00 01 */	li r3, 1
/* 805F463C  38 00 00 07 */	li r0, 7
/* 805F4640  B0 9D 00 00 */	sth r4, 0(r29)
/* 805F4644  38 A0 00 00 */	li r5, 0
/* 805F4648  38 C0 00 01 */	li r6, 1
/* 805F464C  B0 7B 01 7A */	sth r3, 0x17a(r27)
/* 805F4650  98 1B 01 63 */	stb r0, 0x163(r27)
/* 805F4654  A0 7D 00 00 */	lhz r3, 0(r29)
/* 805F4658  88 9B 01 63 */	lbz r4, 0x163(r27)
/* 805F465C  4B DE 52 89 */	bl mPlib_request_main_give_from_submenu
/* 805F4660  7F 63 DB 78 */	mr r3, r27
/* 805F4664  7F 84 E3 78 */	mr r4, r28
/* 805F4668  38 A0 00 01 */	li r5, 1
/* 805F466C  4B FF E9 A9 */	bl mTG_close_window
/* 805F4670  39 61 00 20 */	addi r11, r1, 0x20
/* 805F4674  4B AA 68 A5 */	bl func_8009AF18
/* 805F4678  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805F467C  7C 08 03 A6 */	mtlr r0
/* 805F4680  38 21 00 20 */	addi r1, r1, 0x20
/* 805F4684  4E 80 00 20 */	blr 
