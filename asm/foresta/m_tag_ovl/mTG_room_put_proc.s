lbl_805F5878:
/* 805F5878  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 805F587C  7C 08 02 A6 */	mflr r0
/* 805F5880  90 01 00 64 */	stw r0, 0x64(r1)
/* 805F5884  39 61 00 60 */	addi r11, r1, 0x60
/* 805F5888  4B AA 56 31 */	bl func_8009AEB8
/* 805F588C  3C A0 81 1C */	lis r5, data_811C52F0@ha /* 0x811C52F0@ha */
/* 805F5890  7C 78 1B 78 */	mr r24, r3
/* 805F5894  83 C5 52 F0 */	lwz r30, data_811C52F0@l(r5)  /* 0x811C52F0@l */
/* 805F5898  7C 99 23 78 */	mr r25, r4
/* 805F589C  7F C3 F3 78 */	mr r3, r30
/* 805F58A0  4B DE 3D A1 */	bl get_player_actor_withoutCheck
/* 805F58A4  80 98 00 2C */	lwz r4, 0x2c(r24)
/* 805F58A8  7C 7D 1B 78 */	mr r29, r3
/* 805F58AC  80 64 09 7C */	lwz r3, 0x97c(r4)
/* 805F58B0  38 63 00 08 */	addi r3, r3, 8
/* 805F58B4  4B FF A2 AD */	bl mTG_get_table_idx
/* 805F58B8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805F58BC  7C 7C 1B 78 */	mr r28, r3
/* 805F58C0  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 805F58C4  3F E5 00 02 */	addis r31, r5, 2
/* 805F58C8  57 80 08 3C */	slwi r0, r28, 1
/* 805F58CC  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 805F58D0  38 80 00 01 */	li r4, 1
/* 805F58D4  7C 63 02 14 */	add r3, r3, r0
/* 805F58D8  A0 63 00 68 */	lhz r3, 0x68(r3)
/* 805F58DC  4B DF 09 C9 */	bl mRmTp_Item1ItemNo2FtrItemNo_AtPlayerRoom
/* 805F58E0  80 98 00 2C */	lwz r4, 0x2c(r24)
/* 805F58E4  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 805F58E8  2C 00 00 02 */	cmpwi r0, 2
/* 805F58EC  7C 7B 1B 78 */	mr r27, r3
/* 805F58F0  83 44 09 88 */	lwz r26, 0x988(r4)
/* 805F58F4  41 82 00 F4 */	beq lbl_805F59E8
/* 805F58F8  40 80 00 10 */	bge lbl_805F5908
/* 805F58FC  2C 00 00 01 */	cmpwi r0, 1
/* 805F5900  40 80 00 10 */	bge lbl_805F5910
/* 805F5904  48 00 03 74 */	b lbl_805F5C78
lbl_805F5908:
/* 805F5908  2C 00 00 04 */	cmpwi r0, 4
/* 805F590C  40 80 03 6C */	bge lbl_805F5C78
lbl_805F5910:
/* 805F5910  4B DB 17 C9 */	bl mFI_CheckInIsland
/* 805F5914  2C 03 00 00 */	cmpwi r3, 0
/* 805F5918  41 82 00 3C */	beq lbl_805F5954
/* 805F591C  7F 63 DB 78 */	mr r3, r27
/* 805F5920  38 80 00 00 */	li r4, 0
/* 805F5924  38 A0 00 11 */	li r5, 0x11
/* 805F5928  38 C0 00 00 */	li r6, 0
/* 805F592C  4B DF 2F 95 */	bl mSP_SearchItemCategoryPriority
/* 805F5930  2C 03 00 00 */	cmpwi r3, 0
/* 805F5934  40 82 00 A0 */	bne lbl_805F59D4
/* 805F5938  7F 63 DB 78 */	mr r3, r27
/* 805F593C  38 80 00 00 */	li r4, 0
/* 805F5940  38 A0 00 0F */	li r5, 0xf
/* 805F5944  38 C0 00 00 */	li r6, 0
/* 805F5948  4B DF 2F 79 */	bl mSP_SearchItemCategoryPriority
/* 805F594C  2C 03 00 00 */	cmpwi r3, 0
/* 805F5950  40 82 00 84 */	bne lbl_805F59D4
lbl_805F5954:
/* 805F5954  7F C3 F3 78 */	mr r3, r30
/* 805F5958  7F 64 DB 78 */	mr r4, r27
/* 805F595C  4B FF DA E9 */	bl mTG_drop_furniture
/* 805F5960  2C 03 00 00 */	cmpwi r3, 0
/* 805F5964  41 80 00 40 */	blt lbl_805F59A4
/* 805F5968  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 805F596C  7F 84 E3 78 */	mr r4, r28
/* 805F5970  38 A0 00 00 */	li r5, 0
/* 805F5974  38 C0 00 00 */	li r6, 0
/* 805F5978  4B DE B4 B1 */	bl mPr_SetPossessionItem
/* 805F597C  7F 03 C3 78 */	mr r3, r24
/* 805F5980  38 80 00 00 */	li r4, 0
/* 805F5984  38 A0 00 00 */	li r5, 0
/* 805F5988  4B FF 9E 2D */	bl mTG_return_tag_init
/* 805F598C  7F 03 C3 78 */	mr r3, r24
/* 805F5990  7F 24 CB 78 */	mr r4, r25
/* 805F5994  38 A0 00 00 */	li r5, 0
/* 805F5998  4B FF D6 7D */	bl mTG_close_window
/* 805F599C  4B DC 93 41 */	bl mMkRm_ReportChangePlayerRoom
/* 805F59A0  48 00 02 D8 */	b lbl_805F5C78
lbl_805F59A4:
/* 805F59A4  2C 03 FF FF */	cmpwi r3, -1
/* 805F59A8  40 82 00 18 */	bne lbl_805F59C0
/* 805F59AC  7F 03 C3 78 */	mr r3, r24
/* 805F59B0  7F 24 CB 78 */	mr r4, r25
/* 805F59B4  38 A0 00 09 */	li r5, 9
/* 805F59B8  4B FF D4 69 */	bl mTG_open_warning_window
/* 805F59BC  48 00 02 BC */	b lbl_805F5C78
lbl_805F59C0:
/* 805F59C0  7F 03 C3 78 */	mr r3, r24
/* 805F59C4  7F 24 CB 78 */	mr r4, r25
/* 805F59C8  38 A0 00 0A */	li r5, 0xa
/* 805F59CC  4B FF D4 55 */	bl mTG_open_warning_window
/* 805F59D0  48 00 02 A8 */	b lbl_805F5C78
lbl_805F59D4:
/* 805F59D4  7F 03 C3 78 */	mr r3, r24
/* 805F59D8  7F 24 CB 78 */	mr r4, r25
/* 805F59DC  38 A0 00 18 */	li r5, 0x18
/* 805F59E0  4B FF D4 41 */	bl mTG_open_warning_window
/* 805F59E4  48 00 02 94 */	b lbl_805F5C78
lbl_805F59E8:
/* 805F59E8  38 61 00 28 */	addi r3, r1, 0x28
/* 805F59EC  38 9D 00 28 */	addi r4, r29, 0x28
/* 805F59F0  4B DC 54 CD */	bl xyz_t_move
/* 805F59F4  A0 7A 05 E0 */	lhz r3, 0x5e0(r26)
/* 805F59F8  28 03 00 00 */	cmplwi r3, 0
/* 805F59FC  41 82 01 04 */	beq lbl_805F5B00
/* 805F5A00  38 00 00 01 */	li r0, 1
/* 805F5A04  7C 00 E0 30 */	slw r0, r0, r28
/* 805F5A08  7C 60 00 39 */	and. r0, r3, r0
/* 805F5A0C  41 82 00 F4 */	beq lbl_805F5B00
/* 805F5A10  3A E0 00 00 */	li r23, 0
/* 805F5A14  3B 80 00 00 */	li r28, 0
/* 805F5A18  3B 60 00 00 */	li r27, 0
lbl_805F5A1C:
/* 805F5A1C  38 00 00 01 */	li r0, 1
/* 805F5A20  A0 7A 05 E0 */	lhz r3, 0x5e0(r26)
/* 805F5A24  7C 00 E0 30 */	slw r0, r0, r28
/* 805F5A28  7C 60 00 39 */	and. r0, r3, r0
/* 805F5A2C  41 82 00 80 */	beq lbl_805F5AAC
/* 805F5A30  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 805F5A34  38 1B 00 68 */	addi r0, r27, 0x68
/* 805F5A38  38 80 00 01 */	li r4, 1
/* 805F5A3C  7C 63 02 2E */	lhzx r3, r3, r0
/* 805F5A40  4B DF 08 65 */	bl mRmTp_Item1ItemNo2FtrItemNo_AtPlayerRoom
/* 805F5A44  7C 60 1B 78 */	mr r0, r3
/* 805F5A48  7F A3 EB 78 */	mr r3, r29
/* 805F5A4C  7C 16 03 78 */	mr r22, r0
/* 805F5A50  7E E7 BB 78 */	mr r7, r23
/* 805F5A54  38 81 00 28 */	addi r4, r1, 0x28
/* 805F5A58  38 A0 00 00 */	li r5, 0
/* 805F5A5C  38 C0 00 00 */	li r6, 0
/* 805F5A60  39 00 00 00 */	li r8, 0
/* 805F5A64  39 20 00 00 */	li r9, 0
/* 805F5A68  4B FF D3 81 */	bl mTG_search_put_pos
/* 805F5A6C  2C 03 00 00 */	cmpwi r3, 0
/* 805F5A70  41 82 00 3C */	beq lbl_805F5AAC
/* 805F5A74  7F C3 F3 78 */	mr r3, r30
/* 805F5A78  7E C4 B3 78 */	mr r4, r22
/* 805F5A7C  7E E7 BB 78 */	mr r7, r23
/* 805F5A80  38 A1 00 28 */	addi r5, r1, 0x28
/* 805F5A84  38 C0 00 00 */	li r6, 0
/* 805F5A88  4B FF D4 D1 */	bl mTG_common_throw_put_room
/* 805F5A8C  2C 03 00 00 */	cmpwi r3, 0
/* 805F5A90  41 82 00 1C */	beq lbl_805F5AAC
/* 805F5A94  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 805F5A98  7F 84 E3 78 */	mr r4, r28
/* 805F5A9C  38 A0 00 00 */	li r5, 0
/* 805F5AA0  38 C0 00 00 */	li r6, 0
/* 805F5AA4  4B DE B3 85 */	bl mPr_SetPossessionItem
/* 805F5AA8  3A F7 00 01 */	addi r23, r23, 1
lbl_805F5AAC:
/* 805F5AAC  3B 9C 00 01 */	addi r28, r28, 1
/* 805F5AB0  3B 7B 00 02 */	addi r27, r27, 2
/* 805F5AB4  2C 1C 00 0F */	cmpwi r28, 0xf
/* 805F5AB8  41 80 FF 64 */	blt lbl_805F5A1C
/* 805F5ABC  2C 17 00 00 */	cmpwi r23, 0
/* 805F5AC0  40 81 00 2C */	ble lbl_805F5AEC
/* 805F5AC4  7F 03 C3 78 */	mr r3, r24
/* 805F5AC8  38 80 00 00 */	li r4, 0
/* 805F5ACC  38 A0 00 00 */	li r5, 0
/* 805F5AD0  4B FF 9C E5 */	bl mTG_return_tag_init
/* 805F5AD4  4B DC 92 09 */	bl mMkRm_ReportChangePlayerRoom
/* 805F5AD8  7F 03 C3 78 */	mr r3, r24
/* 805F5ADC  7F 24 CB 78 */	mr r4, r25
/* 805F5AE0  38 A0 00 00 */	li r5, 0
/* 805F5AE4  4B FF D5 31 */	bl mTG_close_window
/* 805F5AE8  48 00 01 90 */	b lbl_805F5C78
lbl_805F5AEC:
/* 805F5AEC  7F 03 C3 78 */	mr r3, r24
/* 805F5AF0  7F 24 CB 78 */	mr r4, r25
/* 805F5AF4  38 A0 00 0B */	li r5, 0xb
/* 805F5AF8  4B FF D3 29 */	bl mTG_open_warning_window
/* 805F5AFC  48 00 01 7C */	b lbl_805F5C78
lbl_805F5B00:
/* 805F5B00  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805F5B04  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805F5B08  3F 43 00 02 */	addis r26, r3, 2
/* 805F5B0C  80 1A 60 8C */	lwz r0, 0x608c(r26)
/* 805F5B10  28 00 00 00 */	cmplwi r0, 0
/* 805F5B14  41 82 00 D0 */	beq lbl_805F5BE4
/* 805F5B18  A8 BD 00 DE */	lha r5, 0xde(r29)
/* 805F5B1C  38 61 00 1C */	addi r3, r1, 0x1c
/* 805F5B20  38 81 00 28 */	addi r4, r1, 0x28
/* 805F5B24  4B FF DB 69 */	bl mTG_get_unit_front_player
/* 805F5B28  38 61 00 1C */	addi r3, r1, 0x1c
/* 805F5B2C  4B FF DC 1D */	bl mTG_check_free_2nd_layer
/* 805F5B30  2C 03 00 00 */	cmpwi r3, 0
/* 805F5B34  41 82 00 B0 */	beq lbl_805F5BE4
/* 805F5B38  80 E1 00 1C */	lwz r7, 0x1c(r1)
/* 805F5B3C  38 61 00 0C */	addi r3, r1, 0xc
/* 805F5B40  80 C1 00 20 */	lwz r6, 0x20(r1)
/* 805F5B44  38 81 00 08 */	addi r4, r1, 8
/* 805F5B48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805F5B4C  38 A1 00 10 */	addi r5, r1, 0x10
/* 805F5B50  90 E1 00 10 */	stw r7, 0x10(r1)
/* 805F5B54  90 C1 00 14 */	stw r6, 0x14(r1)
/* 805F5B58  90 01 00 18 */	stw r0, 0x18(r1)
/* 805F5B5C  4B DA F8 0D */	bl mFI_Wpos2UtNum
/* 805F5B60  2C 03 00 00 */	cmpwi r3, 0
/* 805F5B64  41 82 00 80 */	beq lbl_805F5BE4
/* 805F5B68  80 9A 60 8C */	lwz r4, 0x608c(r26)
/* 805F5B6C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 805F5B70  81 84 00 30 */	lwz r12, 0x30(r4)
/* 805F5B74  80 81 00 08 */	lwz r4, 8(r1)
/* 805F5B78  7D 89 03 A6 */	mtctr r12
/* 805F5B7C  4E 80 04 21 */	bctrl 
/* 805F5B80  2C 03 00 00 */	cmpwi r3, 0
/* 805F5B84  41 82 00 60 */	beq lbl_805F5BE4
/* 805F5B88  7F C3 F3 78 */	mr r3, r30
/* 805F5B8C  7F 64 DB 78 */	mr r4, r27
/* 805F5B90  38 A1 00 1C */	addi r5, r1, 0x1c
/* 805F5B94  38 C0 00 01 */	li r6, 1
/* 805F5B98  38 E0 00 00 */	li r7, 0
/* 805F5B9C  4B FF D3 BD */	bl mTG_common_throw_put_room
/* 805F5BA0  2C 03 00 00 */	cmpwi r3, 0
/* 805F5BA4  41 82 00 40 */	beq lbl_805F5BE4
/* 805F5BA8  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 805F5BAC  7F 84 E3 78 */	mr r4, r28
/* 805F5BB0  38 A0 00 00 */	li r5, 0
/* 805F5BB4  38 C0 00 00 */	li r6, 0
/* 805F5BB8  4B DE B2 71 */	bl mPr_SetPossessionItem
/* 805F5BBC  7F 03 C3 78 */	mr r3, r24
/* 805F5BC0  38 80 00 00 */	li r4, 0
/* 805F5BC4  38 A0 00 00 */	li r5, 0
/* 805F5BC8  4B FF 9B ED */	bl mTG_return_tag_init
/* 805F5BCC  7F 03 C3 78 */	mr r3, r24
/* 805F5BD0  7F 24 CB 78 */	mr r4, r25
/* 805F5BD4  38 A0 00 00 */	li r5, 0
/* 805F5BD8  4B FF D4 3D */	bl mTG_close_window
/* 805F5BDC  4B DC 91 01 */	bl mMkRm_ReportChangePlayerRoom
/* 805F5BE0  48 00 00 98 */	b lbl_805F5C78
lbl_805F5BE4:
/* 805F5BE4  7F A3 EB 78 */	mr r3, r29
/* 805F5BE8  38 81 00 28 */	addi r4, r1, 0x28
/* 805F5BEC  38 A0 00 00 */	li r5, 0
/* 805F5BF0  38 C0 00 00 */	li r6, 0
/* 805F5BF4  38 E0 00 00 */	li r7, 0
/* 805F5BF8  39 00 00 00 */	li r8, 0
/* 805F5BFC  39 20 00 00 */	li r9, 0
/* 805F5C00  4B FF D1 E9 */	bl mTG_search_put_pos
/* 805F5C04  2C 03 00 00 */	cmpwi r3, 0
/* 805F5C08  41 82 00 60 */	beq lbl_805F5C68
/* 805F5C0C  7F C3 F3 78 */	mr r3, r30
/* 805F5C10  7F 64 DB 78 */	mr r4, r27
/* 805F5C14  38 A1 00 28 */	addi r5, r1, 0x28
/* 805F5C18  38 C0 00 00 */	li r6, 0
/* 805F5C1C  38 E0 00 00 */	li r7, 0
/* 805F5C20  4B FF D3 39 */	bl mTG_common_throw_put_room
/* 805F5C24  2C 03 00 00 */	cmpwi r3, 0
/* 805F5C28  41 82 00 40 */	beq lbl_805F5C68
/* 805F5C2C  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 805F5C30  7F 84 E3 78 */	mr r4, r28
/* 805F5C34  38 A0 00 00 */	li r5, 0
/* 805F5C38  38 C0 00 00 */	li r6, 0
/* 805F5C3C  4B DE B1 ED */	bl mPr_SetPossessionItem
/* 805F5C40  7F 03 C3 78 */	mr r3, r24
/* 805F5C44  38 80 00 00 */	li r4, 0
/* 805F5C48  38 A0 00 00 */	li r5, 0
/* 805F5C4C  4B FF 9B 69 */	bl mTG_return_tag_init
/* 805F5C50  4B DC 90 8D */	bl mMkRm_ReportChangePlayerRoom
/* 805F5C54  7F 03 C3 78 */	mr r3, r24
/* 805F5C58  7F 24 CB 78 */	mr r4, r25
/* 805F5C5C  38 A0 00 00 */	li r5, 0
/* 805F5C60  4B FF D3 B5 */	bl mTG_close_window
/* 805F5C64  48 00 00 14 */	b lbl_805F5C78
lbl_805F5C68:
/* 805F5C68  7F 03 C3 78 */	mr r3, r24
/* 805F5C6C  7F 24 CB 78 */	mr r4, r25
/* 805F5C70  38 A0 00 0B */	li r5, 0xb
/* 805F5C74  4B FF D1 AD */	bl mTG_open_warning_window
lbl_805F5C78:
/* 805F5C78  39 61 00 60 */	addi r11, r1, 0x60
/* 805F5C7C  4B AA 52 89 */	bl func_8009AF04
/* 805F5C80  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805F5C84  7C 08 03 A6 */	mtlr r0
/* 805F5C88  38 21 00 60 */	addi r1, r1, 0x60
/* 805F5C8C  4E 80 00 20 */	blr 
