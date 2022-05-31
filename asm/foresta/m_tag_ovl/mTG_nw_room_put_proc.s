lbl_805F805C:
/* 805F805C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805F8060  7C 08 02 A6 */	mflr r0
/* 805F8064  90 01 00 24 */	stw r0, 0x24(r1)
/* 805F8068  39 61 00 20 */	addi r11, r1, 0x20
/* 805F806C  4B AA 2E 61 */	bl func_8009AECC
/* 805F8070  7C 7B 1B 78 */	mr r27, r3
/* 805F8074  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 805F8078  80 DB 00 2C */	lwz r6, 0x2c(r27)
/* 805F807C  7C 9C 23 78 */	mr r28, r4
/* 805F8080  83 C3 52 F0 */	lwz r30, data_811C52F0@l(r3)  /* 0x811C52F0@l */
/* 805F8084  7C BD 2B 78 */	mr r29, r5
/* 805F8088  83 E6 09 88 */	lwz r31, 0x988(r6)
/* 805F808C  7F C3 F3 78 */	mr r3, r30
/* 805F8090  4B DE 15 B1 */	bl get_player_actor_withoutCheck
/* 805F8094  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 805F8098  80 63 09 7C */	lwz r3, 0x97c(r3)
/* 805F809C  38 63 00 08 */	addi r3, r3, 8
/* 805F80A0  4B FF 7A C1 */	bl mTG_get_table_idx
/* 805F80A4  7C 60 1B 78 */	mr r0, r3
/* 805F80A8  7F 63 DB 78 */	mr r3, r27
/* 805F80AC  7C 04 03 78 */	mr r4, r0
/* 805F80B0  4B FF 17 71 */	bl mNW_get_image_no
/* 805F80B4  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 805F80B8  7F C3 F3 78 */	mr r3, r30
/* 805F80BC  7F A4 EB 78 */	mr r4, r29
/* 805F80C0  4B FF B4 45 */	bl mTG_nw_drop_furniture
/* 805F80C4  2C 03 00 00 */	cmpwi r3, 0
/* 805F80C8  41 80 00 3C */	blt lbl_805F8104
/* 805F80CC  28 1F 00 00 */	cmplwi r31, 0
/* 805F80D0  41 82 00 0C */	beq lbl_805F80DC
/* 805F80D4  38 00 00 01 */	li r0, 1
/* 805F80D8  98 1F 05 EA */	stb r0, 0x5ea(r31)
lbl_805F80DC:
/* 805F80DC  7F 63 DB 78 */	mr r3, r27
/* 805F80E0  38 80 00 00 */	li r4, 0
/* 805F80E4  38 A0 00 00 */	li r5, 0
/* 805F80E8  4B FF 76 CD */	bl mTG_return_tag_init
/* 805F80EC  7F 63 DB 78 */	mr r3, r27
/* 805F80F0  7F 84 E3 78 */	mr r4, r28
/* 805F80F4  38 A0 00 00 */	li r5, 0
/* 805F80F8  4B FF AF 1D */	bl mTG_close_window
/* 805F80FC  4B DC 6B E1 */	bl mMkRm_ReportChangePlayerRoom
/* 805F8100  48 00 00 30 */	b lbl_805F8130
lbl_805F8104:
/* 805F8104  2C 03 FF FF */	cmpwi r3, -1
/* 805F8108  40 82 00 18 */	bne lbl_805F8120
/* 805F810C  7F 63 DB 78 */	mr r3, r27
/* 805F8110  7F 84 E3 78 */	mr r4, r28
/* 805F8114  38 A0 00 09 */	li r5, 9
/* 805F8118  4B FF AD 09 */	bl mTG_open_warning_window
/* 805F811C  48 00 00 14 */	b lbl_805F8130
lbl_805F8120:
/* 805F8120  7F 63 DB 78 */	mr r3, r27
/* 805F8124  7F 84 E3 78 */	mr r4, r28
/* 805F8128  38 A0 00 0A */	li r5, 0xa
/* 805F812C  4B FF AC F5 */	bl mTG_open_warning_window
lbl_805F8130:
/* 805F8130  39 61 00 20 */	addi r11, r1, 0x20
/* 805F8134  4B AA 2D E5 */	bl func_8009AF18
/* 805F8138  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805F813C  7C 08 03 A6 */	mtlr r0
/* 805F8140  38 21 00 20 */	addi r1, r1, 0x20
/* 805F8144  4E 80 00 20 */	blr 
