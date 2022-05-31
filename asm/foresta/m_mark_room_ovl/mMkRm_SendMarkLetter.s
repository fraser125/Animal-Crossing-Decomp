lbl_804D23B0:
/* 804D23B0  94 21 FE 60 */	stwu r1, -0x1a0(r1)
/* 804D23B4  7C 08 02 A6 */	mflr r0
/* 804D23B8  90 01 01 A4 */	stw r0, 0x1a4(r1)
/* 804D23BC  39 61 01 A0 */	addi r11, r1, 0x1a0
/* 804D23C0  4B BC 8B 05 */	bl func_8009AEC4
/* 804D23C4  7C 7C 1B 78 */	mr r28, r3
/* 804D23C8  7C 99 23 78 */	mr r25, r4
/* 804D23CC  7C BE 2B 78 */	mr r30, r5
/* 804D23D0  7C DD 33 78 */	mr r29, r6
/* 804D23D4  7C FA 3B 78 */	mr r26, r7
/* 804D23D8  7D 1B 43 78 */	mr r27, r8
/* 804D23DC  38 7C 1A 30 */	addi r3, r28, 0x1a30
/* 804D23E0  38 80 00 0A */	li r4, 0xa
/* 804D23E4  4B EE A4 C1 */	bl mMl_chk_mail_free_space
/* 804D23E8  38 00 00 00 */	li r0, 0
/* 804D23EC  7C 7F 1B 78 */	mr r31, r3
/* 804D23F0  B0 01 00 08 */	sth r0, 8(r1)
/* 804D23F4  7F 84 E3 78 */	mr r4, r28
/* 804D23F8  7F 25 CB 78 */	mr r5, r25
/* 804D23FC  7F C6 F3 78 */	mr r6, r30
/* 804D2400  38 61 00 08 */	addi r3, r1, 8
/* 804D2404  4B FF FD 65 */	bl mMkRm_DecideLetterNo
/* 804D2408  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804D240C  7C 7E 1B 78 */	mr r30, r3
/* 804D2410  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 804D2414  7F 25 CB 78 */	mr r5, r25
/* 804D2418  3C 84 00 02 */	addis r4, r4, 2
/* 804D241C  38 61 00 20 */	addi r3, r1, 0x20
/* 804D2420  80 C4 61 20 */	lwz r6, 0x6120(r4)
/* 804D2424  38 E0 00 00 */	li r7, 0
/* 804D2428  80 04 61 24 */	lwz r0, 0x6124(r4)
/* 804D242C  38 80 00 0A */	li r4, 0xa
/* 804D2430  90 C1 00 18 */	stw r6, 0x18(r1)
/* 804D2434  38 C0 00 0A */	li r6, 0xa
/* 804D2438  39 00 00 00 */	li r8, 0
/* 804D243C  39 20 00 01 */	li r9, 1
/* 804D2440  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804D2444  4B ED D0 35 */	bl mFont_UnintToString
/* 804D2448  38 81 00 20 */	addi r4, r1, 0x20
/* 804D244C  38 60 00 00 */	li r3, 0
/* 804D2450  38 A0 00 0A */	li r5, 0xa
/* 804D2454  4B ED F5 05 */	bl mHandbill_Set_free_str
/* 804D2458  7F 43 D3 78 */	mr r3, r26
/* 804D245C  7F 64 DB 78 */	mr r4, r27
/* 804D2460  4B FF FE C1 */	bl mMkRm_GetSetItemNo
/* 804D2464  7C 60 1B 78 */	mr r0, r3
/* 804D2468  38 61 00 2C */	addi r3, r1, 0x2c
/* 804D246C  7C 04 03 78 */	mr r4, r0
/* 804D2470  4B EE 35 35 */	bl mIN_copy_name_str
/* 804D2474  38 61 00 2C */	addi r3, r1, 0x2c
/* 804D2478  38 80 00 10 */	li r4, 0x10
/* 804D247C  38 A0 00 00 */	li r5, 0
/* 804D2480  4B FF FE BD */	bl mMkRm_CountCharactor
/* 804D2484  7C 65 1B 78 */	mr r5, r3
/* 804D2488  38 81 00 2C */	addi r4, r1, 0x2c
/* 804D248C  38 60 00 01 */	li r3, 1
/* 804D2490  4B ED F4 C9 */	bl mHandbill_Set_free_str
/* 804D2494  7F A3 EB 78 */	mr r3, r29
/* 804D2498  38 80 00 10 */	li r4, 0x10
/* 804D249C  38 A0 00 00 */	li r5, 0
/* 804D24A0  4B FF FE 9D */	bl mMkRm_CountCharactor
/* 804D24A4  7C 65 1B 78 */	mr r5, r3
/* 804D24A8  7F A4 EB 78 */	mr r4, r29
/* 804D24AC  38 60 00 02 */	li r3, 2
/* 804D24B0  4B ED F4 A9 */	bl mHandbill_Set_free_str
/* 804D24B4  A0 A1 00 1E */	lhz r5, 0x1e(r1)
/* 804D24B8  38 61 00 10 */	addi r3, r1, 0x10
/* 804D24BC  38 80 00 04 */	li r4, 4
/* 804D24C0  38 C0 00 04 */	li r6, 4
/* 804D24C4  38 E0 00 00 */	li r7, 0
/* 804D24C8  39 00 00 00 */	li r8, 0
/* 804D24CC  39 20 00 00 */	li r9, 0
/* 804D24D0  4B ED CF A9 */	bl mFont_UnintToString
/* 804D24D4  38 81 00 10 */	addi r4, r1, 0x10
/* 804D24D8  38 60 00 03 */	li r3, 3
/* 804D24DC  38 A0 00 04 */	li r5, 4
/* 804D24E0  4B ED F4 79 */	bl mHandbill_Set_free_str
/* 804D24E4  88 A1 00 1D */	lbz r5, 0x1d(r1)
/* 804D24E8  38 61 00 3C */	addi r3, r1, 0x3c
/* 804D24EC  38 80 00 09 */	li r4, 9
/* 804D24F0  38 A5 06 6C */	addi r5, r5, 0x66c
/* 804D24F4  4B F1 C7 D9 */	bl mString_Load_StringFromRom
/* 804D24F8  38 81 00 3C */	addi r4, r1, 0x3c
/* 804D24FC  38 60 00 04 */	li r3, 4
/* 804D2500  38 A0 00 09 */	li r5, 9
/* 804D2504  4B ED F4 55 */	bl mHandbill_Set_free_str
/* 804D2508  88 A1 00 1B */	lbz r5, 0x1b(r1)
/* 804D250C  38 61 00 0C */	addi r3, r1, 0xc
/* 804D2510  38 80 00 04 */	li r4, 4
/* 804D2514  38 A5 06 4D */	addi r5, r5, 0x64d
/* 804D2518  4B F1 C7 B5 */	bl mString_Load_StringFromRom
/* 804D251C  38 81 00 0C */	addi r4, r1, 0xc
/* 804D2520  38 60 00 05 */	li r3, 5
/* 804D2524  38 A0 00 04 */	li r5, 4
/* 804D2528  4B ED F4 31 */	bl mHandbill_Set_free_str
/* 804D252C  38 61 00 48 */	addi r3, r1, 0x48
/* 804D2530  4B EE A1 D1 */	bl mMl_clear_mail
/* 804D2534  7F C7 F3 78 */	mr r7, r30
/* 804D2538  38 61 00 7A */	addi r3, r1, 0x7a
/* 804D253C  38 81 00 14 */	addi r4, r1, 0x14
/* 804D2540  38 A1 01 52 */	addi r5, r1, 0x152
/* 804D2544  38 C1 00 92 */	addi r6, r1, 0x92
/* 804D2548  4B EE 01 ED */	bl mHandbill_Load_HandbillFromRom
/* 804D254C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804D2550  80 E1 00 14 */	lwz r7, 0x14(r1)
/* 804D2554  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804D2558  A0 01 00 08 */	lhz r0, 8(r1)
/* 804D255C  38 80 00 00 */	li r4, 0
/* 804D2560  38 C0 00 06 */	li r6, 6
/* 804D2564  38 A0 00 33 */	li r5, 0x33
/* 804D2568  3C 63 00 02 */	addis r3, r3, 2
/* 804D256C  98 81 00 76 */	stb r4, 0x76(r1)
/* 804D2570  80 83 61 3C */	lwz r4, 0x613c(r3)
/* 804D2574  38 61 00 48 */	addi r3, r1, 0x48
/* 804D2578  98 E1 00 77 */	stb r7, 0x77(r1)
/* 804D257C  98 C1 00 78 */	stb r6, 0x78(r1)
/* 804D2580  98 A1 00 79 */	stb r5, 0x79(r1)
/* 804D2584  B0 01 00 74 */	sth r0, 0x74(r1)
/* 804D2588  4B EE A2 59 */	bl mMl_set_to_plname
/* 804D258C  2C 1F 00 00 */	cmpwi r31, 0
/* 804D2590  41 80 00 28 */	blt lbl_804D25B8
/* 804D2594  1C 7F 01 2A */	mulli r3, r31, 0x12a
/* 804D2598  38 81 00 48 */	addi r4, r1, 0x48
/* 804D259C  38 63 1A 30 */	addi r3, r3, 0x1a30
/* 804D25A0  7C 7C 1A 14 */	add r3, r28, r3
/* 804D25A4  4B EE A3 D1 */	bl mMl_copy_mail
/* 804D25A8  7F 83 E3 78 */	mr r3, r28
/* 804D25AC  7F C4 F3 78 */	mr r4, r30
/* 804D25B0  4B FF FB 81 */	bl mMkRm_ProcAfterSending
/* 804D25B4  48 00 00 2C */	b lbl_804D25E0
lbl_804D25B8:
/* 804D25B8  38 00 00 00 */	li r0, 0
/* 804D25BC  38 61 00 48 */	addi r3, r1, 0x48
/* 804D25C0  98 01 00 5C */	stb r0, 0x5c(r1)
/* 804D25C4  38 80 00 00 */	li r4, 0
/* 804D25C8  4B F0 CA 99 */	bl mPO_receipt_proc
/* 804D25CC  2C 03 00 00 */	cmpwi r3, 0
/* 804D25D0  41 82 00 10 */	beq lbl_804D25E0
/* 804D25D4  7F 83 E3 78 */	mr r3, r28
/* 804D25D8  7F C4 F3 78 */	mr r4, r30
/* 804D25DC  4B FF FB 55 */	bl mMkRm_ProcAfterSending
lbl_804D25E0:
/* 804D25E0  39 61 01 A0 */	addi r11, r1, 0x1a0
/* 804D25E4  4B BC 89 2D */	bl func_8009AF10
/* 804D25E8  80 01 01 A4 */	lwz r0, 0x1a4(r1)
/* 804D25EC  7C 08 03 A6 */	mtlr r0
/* 804D25F0  38 21 01 A0 */	addi r1, r1, 0x1a0
/* 804D25F4  4E 80 00 20 */	blr 
