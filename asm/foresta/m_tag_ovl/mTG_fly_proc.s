lbl_805F78EC:
/* 805F78EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805F78F0  7C 08 02 A6 */	mflr r0
/* 805F78F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805F78F8  39 61 00 20 */	addi r11, r1, 0x20
/* 805F78FC  4B AA 35 D1 */	bl func_8009AECC
/* 805F7900  7C 7E 1B 78 */	mr r30, r3
/* 805F7904  7C 9F 23 78 */	mr r31, r4
/* 805F7908  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805F790C  80 63 09 7C */	lwz r3, 0x97c(r3)
/* 805F7910  38 63 00 08 */	addi r3, r3, 8
/* 805F7914  4B FF 82 4D */	bl mTG_get_table_idx
/* 805F7918  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805F791C  54 60 08 3C */	slwi r0, r3, 1
/* 805F7920  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 805F7924  7C 7C 1B 78 */	mr r28, r3
/* 805F7928  3F A5 00 02 */	addis r29, r5, 2
/* 805F792C  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 805F7930  80 BD 61 3C */	lwz r5, 0x613c(r29)
/* 805F7934  38 64 52 F0 */	addi r3, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 805F7938  80 63 00 00 */	lwz r3, 0(r3)
/* 805F793C  7C 85 02 14 */	add r4, r5, r0
/* 805F7940  A3 64 00 68 */	lhz r27, 0x68(r4)
/* 805F7944  4B DE 1C FD */	bl get_player_actor_withoutCheck
/* 805F7948  80 7E 01 74 */	lwz r3, 0x174(r30)
/* 805F794C  38 00 00 01 */	li r0, 1
/* 805F7950  9B 83 00 02 */	stb r28, 2(r3)
/* 805F7954  B3 63 00 00 */	sth r27, 0(r3)
/* 805F7958  B0 1E 01 7A */	sth r0, 0x17a(r30)
/* 805F795C  80 1F 00 38 */	lwz r0, 0x38(r31)
/* 805F7960  2C 00 00 0D */	cmpwi r0, 0xd
/* 805F7964  40 82 00 20 */	bne lbl_805F7984
/* 805F7968  80 1F 00 3C */	lwz r0, 0x3c(r31)
/* 805F796C  7F 84 E3 78 */	mr r4, r28
/* 805F7970  80 7D 61 3C */	lwz r3, 0x613c(r29)
/* 805F7974  38 C0 00 00 */	li r6, 0
/* 805F7978  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 805F797C  4B DE 94 AD */	bl mPr_SetPossessionItem
/* 805F7980  48 00 00 18 */	b lbl_805F7998
lbl_805F7984:
/* 805F7984  80 7D 61 3C */	lwz r3, 0x613c(r29)
/* 805F7988  7F 84 E3 78 */	mr r4, r28
/* 805F798C  38 A0 00 00 */	li r5, 0
/* 805F7990  38 C0 00 00 */	li r6, 0
/* 805F7994  4B DE 94 95 */	bl mPr_SetPossessionItem
lbl_805F7998:
/* 805F7998  7F C3 F3 78 */	mr r3, r30
/* 805F799C  38 80 00 00 */	li r4, 0
/* 805F79A0  38 A0 00 00 */	li r5, 0
/* 805F79A4  4B FF 7E 11 */	bl mTG_return_tag_init
/* 805F79A8  7F C3 F3 78 */	mr r3, r30
/* 805F79AC  7F E4 FB 78 */	mr r4, r31
/* 805F79B0  38 A0 00 01 */	li r5, 1
/* 805F79B4  4B FF B6 61 */	bl mTG_close_window
/* 805F79B8  7F 63 DB 78 */	mr r3, r27
/* 805F79BC  38 80 00 00 */	li r4, 0
/* 805F79C0  4B DE 24 11 */	bl mPlib_request_main_release_creature_balloon_from_submenu
/* 805F79C4  39 61 00 20 */	addi r11, r1, 0x20
/* 805F79C8  4B AA 35 51 */	bl func_8009AF18
/* 805F79CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805F79D0  7C 08 03 A6 */	mtlr r0
/* 805F79D4  38 21 00 20 */	addi r1, r1, 0x20
/* 805F79D8  4E 80 00 20 */	blr 
