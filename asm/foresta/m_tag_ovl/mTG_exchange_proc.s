lbl_805F79DC:
/* 805F79DC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805F79E0  7C 08 02 A6 */	mflr r0
/* 805F79E4  90 01 00 44 */	stw r0, 0x44(r1)
/* 805F79E8  39 61 00 40 */	addi r11, r1, 0x40
/* 805F79EC  4B AA 34 D1 */	bl func_8009AEBC
/* 805F79F0  3C A0 81 1C */	lis r5, data_811C52F0@ha /* 0x811C52F0@ha */
/* 805F79F4  7C 7A 1B 78 */	mr r26, r3
/* 805F79F8  83 E5 52 F0 */	lwz r31, data_811C52F0@l(r5)  /* 0x811C52F0@l */
/* 805F79FC  7C 9B 23 78 */	mr r27, r4
/* 805F7A00  7F E3 FB 78 */	mr r3, r31
/* 805F7A04  4B DE 1C 3D */	bl get_player_actor_withoutCheck
/* 805F7A08  7C 60 1B 78 */	mr r0, r3
/* 805F7A0C  7F 43 D3 78 */	mr r3, r26
/* 805F7A10  7C 19 03 78 */	mr r25, r0
/* 805F7A14  3B C0 00 31 */	li r30, 0x31
/* 805F7A18  4B FF 7B CD */	bl func_805EF5E4
/* 805F7A1C  2C 03 00 00 */	cmpwi r3, 0
/* 805F7A20  40 82 02 AC */	bne lbl_805F7CCC
/* 805F7A24  80 BA 00 2C */	lwz r5, 0x2c(r26)
/* 805F7A28  7F 43 D3 78 */	mr r3, r26
/* 805F7A2C  7F 64 DB 78 */	mr r4, r27
/* 805F7A30  3B 80 00 00 */	li r28, 0
/* 805F7A34  80 E5 09 80 */	lwz r7, 0x980(r5)
/* 805F7A38  38 A0 00 02 */	li r5, 2
/* 805F7A3C  38 C0 00 00 */	li r6, 0
/* 805F7A40  A0 07 02 34 */	lhz r0, 0x234(r7)
/* 805F7A44  7C 1D 03 78 */	mr r29, r0
/* 805F7A48  54 18 A7 3E */	rlwinm r24, r0, 0x14, 0x1c, 0x1f
/* 805F7A4C  54 17 C7 3E */	rlwinm r23, r0, 0x18, 0x1c, 0x1f
/* 805F7A50  4B FF F3 31 */	bl mTG_mark_main
/* 805F7A54  80 7A 00 2C */	lwz r3, 0x2c(r26)
/* 805F7A58  80 63 09 80 */	lwz r3, 0x980(r3)
/* 805F7A5C  80 03 03 60 */	lwz r0, 0x360(r3)
/* 805F7A60  28 00 00 01 */	cmplwi r0, 1
/* 805F7A64  40 82 00 50 */	bne lbl_805F7AB4
/* 805F7A68  2C 1D 22 3B */	cmpwi r29, 0x223b
/* 805F7A6C  41 82 00 34 */	beq lbl_805F7AA0
/* 805F7A70  40 80 00 14 */	bge lbl_805F7A84
/* 805F7A74  2C 1D 22 39 */	cmpwi r29, 0x2239
/* 805F7A78  41 82 00 18 */	beq lbl_805F7A90
/* 805F7A7C  40 80 00 1C */	bge lbl_805F7A98
/* 805F7A80  48 00 00 30 */	b lbl_805F7AB0
lbl_805F7A84:
/* 805F7A84  2C 1D 22 3D */	cmpwi r29, 0x223d
/* 805F7A88  40 80 00 28 */	bge lbl_805F7AB0
/* 805F7A8C  48 00 00 1C */	b lbl_805F7AA8
lbl_805F7A90:
/* 805F7A90  3B A0 25 1F */	li r29, 0x251f
/* 805F7A94  48 00 00 20 */	b lbl_805F7AB4
lbl_805F7A98:
/* 805F7A98  3B A0 25 20 */	li r29, 0x2520
/* 805F7A9C  48 00 00 18 */	b lbl_805F7AB4
lbl_805F7AA0:
/* 805F7AA0  3B A0 25 21 */	li r29, 0x2521
/* 805F7AA4  48 00 00 10 */	b lbl_805F7AB4
lbl_805F7AA8:
/* 805F7AA8  3B A0 25 22 */	li r29, 0x2522
/* 805F7AAC  48 00 00 08 */	b lbl_805F7AB4
lbl_805F7AB0:
/* 805F7AB0  3B A0 25 1C */	li r29, 0x251c
lbl_805F7AB4:
/* 805F7AB4  38 60 00 03 */	li r3, 3
/* 805F7AB8  4B DE 6C A5 */	bl mPlib_Check_golden_item_get_demo_end
/* 805F7ABC  2C 03 00 00 */	cmpwi r3, 0
/* 805F7AC0  40 82 00 28 */	bne lbl_805F7AE8
/* 805F7AC4  80 1B 00 3C */	lwz r0, 0x3c(r27)
/* 805F7AC8  2C 00 22 3B */	cmpwi r0, 0x223b
/* 805F7ACC  41 80 00 1C */	blt lbl_805F7AE8
/* 805F7AD0  41 81 00 18 */	bgt lbl_805F7AE8
/* 805F7AD4  57 A0 04 3E */	clrlwi r0, r29, 0x10
/* 805F7AD8  28 00 22 3B */	cmplwi r0, 0x223b
/* 805F7ADC  41 80 00 08 */	blt lbl_805F7AE4
/* 805F7AE0  40 81 00 08 */	ble lbl_805F7AE8
lbl_805F7AE4:
/* 805F7AE4  3B 80 00 01 */	li r28, 1
lbl_805F7AE8:
/* 805F7AE8  2C 18 00 02 */	cmpwi r24, 2
/* 805F7AEC  40 82 00 24 */	bne lbl_805F7B10
/* 805F7AF0  2C 17 00 03 */	cmpwi r23, 3
/* 805F7AF4  40 82 00 1C */	bne lbl_805F7B10
/* 805F7AF8  80 1B 00 44 */	lwz r0, 0x44(r27)
/* 805F7AFC  7F 85 E3 78 */	mr r5, r28
/* 805F7B00  7F A4 07 34 */	extsh r4, r29
/* 805F7B04  7C 03 07 34 */	extsh r3, r0
/* 805F7B08  4B DE 1E A9 */	bl mPlib_request_main_release_creature_gyoei_from_submenu
/* 805F7B0C  48 00 01 FC */	b lbl_805F7D08
lbl_805F7B10:
/* 805F7B10  2C 18 00 02 */	cmpwi r24, 2
/* 805F7B14  40 82 00 2C */	bne lbl_805F7B40
/* 805F7B18  2C 17 00 0D */	cmpwi r23, 0xd
/* 805F7B1C  40 82 00 24 */	bne lbl_805F7B40
/* 805F7B20  2C 1C 00 00 */	cmpwi r28, 0
/* 805F7B24  41 82 00 10 */	beq lbl_805F7B34
/* 805F7B28  7F A3 EB 78 */	mr r3, r29
/* 805F7B2C  4B FF FB CD */	bl mTG_insect_release_demo_gold_scoop
/* 805F7B30  48 00 01 D8 */	b lbl_805F7D08
lbl_805F7B34:
/* 805F7B34  7F A3 EB 78 */	mr r3, r29
/* 805F7B38  4B FF FB E5 */	bl mTG_insect_release
/* 805F7B3C  48 00 01 CC */	b lbl_805F7D08
lbl_805F7B40:
/* 805F7B40  57 A0 04 3E */	clrlwi r0, r29, 0x10
/* 805F7B44  28 00 22 44 */	cmplwi r0, 0x2244
/* 805F7B48  41 80 00 1C */	blt lbl_805F7B64
/* 805F7B4C  28 00 22 4B */	cmplwi r0, 0x224b
/* 805F7B50  41 81 00 14 */	bgt lbl_805F7B64
/* 805F7B54  7F A3 EB 78 */	mr r3, r29
/* 805F7B58  7F 84 E3 78 */	mr r4, r28
/* 805F7B5C  4B DE 22 75 */	bl mPlib_request_main_release_creature_balloon_from_submenu
/* 805F7B60  48 00 01 A8 */	b lbl_805F7D08
lbl_805F7B64:
/* 805F7B64  4B DA F5 75 */	bl mFI_CheckInIsland
/* 805F7B68  2C 03 00 00 */	cmpwi r3, 0
/* 805F7B6C  41 82 00 3C */	beq lbl_805F7BA8
/* 805F7B70  7F A3 EB 78 */	mr r3, r29
/* 805F7B74  38 80 00 00 */	li r4, 0
/* 805F7B78  38 A0 00 11 */	li r5, 0x11
/* 805F7B7C  38 C0 00 00 */	li r6, 0
/* 805F7B80  4B DF 0D 41 */	bl mSP_SearchItemCategoryPriority
/* 805F7B84  2C 03 00 00 */	cmpwi r3, 0
/* 805F7B88  40 82 01 30 */	bne lbl_805F7CB8
/* 805F7B8C  7F A3 EB 78 */	mr r3, r29
/* 805F7B90  38 80 00 00 */	li r4, 0
/* 805F7B94  38 A0 00 0F */	li r5, 0xf
/* 805F7B98  38 C0 00 00 */	li r6, 0
/* 805F7B9C  4B DF 0D 25 */	bl mSP_SearchItemCategoryPriority
/* 805F7BA0  2C 03 00 00 */	cmpwi r3, 0
/* 805F7BA4  40 82 01 14 */	bne lbl_805F7CB8
lbl_805F7BA8:
/* 805F7BA8  57 A0 04 3E */	clrlwi r0, r29, 0x10
/* 805F7BAC  7F 23 CB 78 */	mr r3, r25
/* 805F7BB0  20 E0 25 1E */	subfic r7, r0, 0x251e
/* 805F7BB4  38 81 00 08 */	addi r4, r1, 8
/* 805F7BB8  20 A0 25 1E */	subfic r5, r0, 0x251e
/* 805F7BBC  38 C0 00 00 */	li r6, 0
/* 805F7BC0  20 00 25 1E */	subfic r0, r0, 0x251e
/* 805F7BC4  7C E9 00 34 */	cntlzw r9, r7
/* 805F7BC8  7C A7 00 34 */	cntlzw r7, r5
/* 805F7BCC  39 00 00 00 */	li r8, 0
/* 805F7BD0  7C 00 00 34 */	cntlzw r0, r0
/* 805F7BD4  55 25 D9 7E */	srwi r5, r9, 5
/* 805F7BD8  54 E7 D9 7E */	srwi r7, r7, 5
/* 805F7BDC  54 09 D9 7E */	srwi r9, r0, 5
/* 805F7BE0  4B FF B2 09 */	bl mTG_search_put_pos
/* 805F7BE4  2C 03 00 00 */	cmpwi r3, 0
/* 805F7BE8  41 82 00 40 */	beq lbl_805F7C28
/* 805F7BEC  7F E3 FB 78 */	mr r3, r31
/* 805F7BF0  7F A4 EB 78 */	mr r4, r29
/* 805F7BF4  38 A1 00 08 */	addi r5, r1, 8
/* 805F7BF8  38 C0 00 00 */	li r6, 0
/* 805F7BFC  4B FF B2 89 */	bl mTG_common_throw_put_field
/* 805F7C00  2C 03 00 00 */	cmpwi r3, 0
/* 805F7C04  41 82 00 24 */	beq lbl_805F7C28
/* 805F7C08  2C 1C 00 00 */	cmpwi r28, 0
/* 805F7C0C  41 82 00 0C */	beq lbl_805F7C18
/* 805F7C10  4B DE 22 65 */	bl mPlib_request_main_demo_get_golden_item_from_submenu
/* 805F7C14  48 00 00 F4 */	b lbl_805F7D08
lbl_805F7C18:
/* 805F7C18  4B DE 22 2D */	bl mPlib_request_main_wait_from_submenu
/* 805F7C1C  3B C0 FF FF */	li r30, -1
/* 805F7C20  4B DE 22 25 */	bl mPlib_request_main_wait_from_submenu
/* 805F7C24  48 00 00 E4 */	b lbl_805F7D08
lbl_805F7C28:
/* 805F7C28  80 1B 00 40 */	lwz r0, 0x40(r27)
/* 805F7C2C  28 00 00 00 */	cmplwi r0, 0
/* 805F7C30  41 82 00 54 */	beq lbl_805F7C84
/* 805F7C34  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805F7C38  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805F7C3C  3C 63 00 02 */	addis r3, r3, 2
/* 805F7C40  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 805F7C44  A0 03 04 A4 */	lhz r0, 0x4a4(r3)
/* 805F7C48  28 00 22 02 */	cmplwi r0, 0x2202
/* 805F7C4C  41 80 00 08 */	blt lbl_805F7C54
/* 805F7C50  40 81 00 10 */	ble lbl_805F7C60
lbl_805F7C54:
/* 805F7C54  28 00 22 3B */	cmplwi r0, 0x223b
/* 805F7C58  41 80 00 2C */	blt lbl_805F7C84
/* 805F7C5C  41 81 00 28 */	bgt lbl_805F7C84
lbl_805F7C60:
/* 805F7C60  7F A3 EB 78 */	mr r3, r29
/* 805F7C64  4B FF D4 C9 */	bl mTG_island_check_plant_plant
/* 805F7C68  7F A3 EB 78 */	mr r3, r29
/* 805F7C6C  4B FF D5 15 */	bl mTG_island_check_fruit_plant
/* 805F7C70  80 7B 00 40 */	lwz r3, 0x40(r27)
/* 805F7C74  7F A4 EB 78 */	mr r4, r29
/* 805F7C78  7F 85 E3 78 */	mr r5, r28
/* 805F7C7C  4B DE 1C C9 */	bl mPlib_request_main_putin_scoop_from_submenu
/* 805F7C80  48 00 00 88 */	b lbl_805F7D08
lbl_805F7C84:
/* 805F7C84  57 A0 04 3E */	clrlwi r0, r29, 0x10
/* 805F7C88  28 00 25 1E */	cmplwi r0, 0x251e
/* 805F7C8C  40 82 00 18 */	bne lbl_805F7CA4
/* 805F7C90  7F 43 D3 78 */	mr r3, r26
/* 805F7C94  7F 64 DB 78 */	mr r4, r27
/* 805F7C98  38 A0 00 13 */	li r5, 0x13
/* 805F7C9C  4B FF B1 85 */	bl mTG_open_warning_window
/* 805F7CA0  48 00 00 90 */	b lbl_805F7D30
lbl_805F7CA4:
/* 805F7CA4  7F 43 D3 78 */	mr r3, r26
/* 805F7CA8  7F 64 DB 78 */	mr r4, r27
/* 805F7CAC  38 A0 00 0B */	li r5, 0xb
/* 805F7CB0  4B FF B1 71 */	bl mTG_open_warning_window
/* 805F7CB4  48 00 00 7C */	b lbl_805F7D30
lbl_805F7CB8:
/* 805F7CB8  7F 43 D3 78 */	mr r3, r26
/* 805F7CBC  7F 64 DB 78 */	mr r4, r27
/* 805F7CC0  38 A0 00 18 */	li r5, 0x18
/* 805F7CC4  4B FF B1 5D */	bl mTG_open_warning_window
/* 805F7CC8  48 00 00 68 */	b lbl_805F7D30
lbl_805F7CCC:
/* 805F7CCC  3A E0 00 00 */	li r23, 0
/* 805F7CD0  38 60 00 03 */	li r3, 3
/* 805F7CD4  4B DE 6A 89 */	bl mPlib_Check_golden_item_get_demo_end
/* 805F7CD8  2C 03 00 00 */	cmpwi r3, 0
/* 805F7CDC  40 82 00 18 */	bne lbl_805F7CF4
/* 805F7CE0  80 1B 00 3C */	lwz r0, 0x3c(r27)
/* 805F7CE4  2C 00 22 3B */	cmpwi r0, 0x223b
/* 805F7CE8  41 80 00 0C */	blt lbl_805F7CF4
/* 805F7CEC  41 81 00 08 */	bgt lbl_805F7CF4
/* 805F7CF0  3A E0 00 01 */	li r23, 1
lbl_805F7CF4:
/* 805F7CF4  2C 17 00 00 */	cmpwi r23, 0
/* 805F7CF8  41 82 00 0C */	beq lbl_805F7D04
/* 805F7CFC  4B DE 21 79 */	bl mPlib_request_main_demo_get_golden_item_from_submenu
/* 805F7D00  48 00 00 08 */	b lbl_805F7D08
lbl_805F7D04:
/* 805F7D04  4B DE 21 41 */	bl mPlib_request_main_wait_from_submenu
lbl_805F7D08:
/* 805F7D08  80 BA 00 2C */	lwz r5, 0x2c(r26)
/* 805F7D0C  7F 63 DB 78 */	mr r3, r27
/* 805F7D10  38 80 00 00 */	li r4, 0
/* 805F7D14  81 85 09 4C */	lwz r12, 0x94c(r5)
/* 805F7D18  7D 89 03 A6 */	mtctr r12
/* 805F7D1C  4E 80 04 21 */	bctrl 
/* 805F7D20  2C 1E 00 00 */	cmpwi r30, 0
/* 805F7D24  41 80 00 0C */	blt lbl_805F7D30
/* 805F7D28  57 C3 04 3E */	clrlwi r3, r30, 0x10
/* 805F7D2C  48 03 5F D9 */	bl sAdo_SysTrgStart
lbl_805F7D30:
/* 805F7D30  39 61 00 40 */	addi r11, r1, 0x40
/* 805F7D34  4B AA 31 D5 */	bl func_8009AF08
/* 805F7D38  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805F7D3C  7C 08 03 A6 */	mtlr r0
/* 805F7D40  38 21 00 40 */	addi r1, r1, 0x40
/* 805F7D44  4E 80 00 20 */	blr 
