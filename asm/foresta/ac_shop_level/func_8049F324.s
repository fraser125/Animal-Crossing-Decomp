lbl_8049F324:
/* 8049F324  94 21 FE 80 */	stwu r1, -0x180(r1)
/* 8049F328  7C 08 02 A6 */	mflr r0
/* 8049F32C  90 01 01 84 */	stw r0, 0x184(r1)
/* 8049F330  39 61 01 80 */	addi r11, r1, 0x180
/* 8049F334  4B BF BB 8D */	bl func_8009AEC0
/* 8049F338  80 A4 00 00 */	lwz r5, 0(r4)
/* 8049F33C  7C 78 1B 78 */	mr r24, r3
/* 8049F340  80 04 00 04 */	lwz r0, 4(r4)
/* 8049F344  38 61 00 10 */	addi r3, r1, 0x10
/* 8049F348  38 80 00 01 */	li r4, 1
/* 8049F34C  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8049F350  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049F354  4B F6 7C 69 */	bl lbRTC_Sub_DD
/* 8049F358  3C 80 80 69 */	lis r4, renewal_chirashi_bunmen@ha /* 0x8068E444@ha */
/* 8049F35C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8049F360  57 1C 17 3A */	rlwinm r28, r24, 2, 0x1c, 0x1d
/* 8049F364  3B 40 00 00 */	li r26, 0
/* 8049F368  3B A4 E4 44 */	addi r29, r4, renewal_chirashi_bunmen@l /* 0x8068E444@l */
/* 8049F36C  3B C3 85 38 */	addi r30, r3, common_data@l /* 0x81138538@l */
/* 8049F370  3B 20 00 00 */	li r25, 0
lbl_8049F374:
/* 8049F374  7F 43 D3 78 */	mr r3, r26
/* 8049F378  4B F1 42 9D */	bl mHS_get_pl_no_detail
/* 8049F37C  7F 7E CA 14 */	add r27, r30, r25
/* 8049F380  7C 60 1B 78 */	mr r0, r3
/* 8049F384  3C 7B 00 01 */	addis r3, r27, 1
/* 8049F388  38 80 00 0A */	li r4, 0xa
/* 8049F38C  7C 18 03 78 */	mr r24, r0
/* 8049F390  38 63 B7 18 */	addi r3, r3, -18664
/* 8049F394  4B F1 D5 11 */	bl mMl_chk_mail_free_space
/* 8049F398  7C 7F 1B 79 */	or. r31, r3, r3
/* 8049F39C  41 80 00 FC */	blt lbl_8049F498
/* 8049F3A0  2C 18 FF FF */	cmpwi r24, -1
/* 8049F3A4  41 82 00 F4 */	beq lbl_8049F498
/* 8049F3A8  7F 03 C3 78 */	mr r3, r24
/* 8049F3AC  4B EF F4 0D */	bl mEv_ArbeitPlayer
/* 8049F3B0  2C 03 00 00 */	cmpwi r3, 0
/* 8049F3B4  40 82 00 E4 */	bne lbl_8049F498
/* 8049F3B8  88 A1 00 15 */	lbz r5, 0x15(r1)
/* 8049F3BC  38 61 00 20 */	addi r3, r1, 0x20
/* 8049F3C0  38 80 00 09 */	li r4, 9
/* 8049F3C4  38 A5 06 6C */	addi r5, r5, 0x66c
/* 8049F3C8  4B F4 F9 05 */	bl mString_Load_StringFromRom
/* 8049F3CC  38 81 00 20 */	addi r4, r1, 0x20
/* 8049F3D0  38 60 00 00 */	li r3, 0
/* 8049F3D4  38 A0 00 09 */	li r5, 9
/* 8049F3D8  4B F1 25 81 */	bl mHandbill_Set_free_str
/* 8049F3DC  88 A1 00 13 */	lbz r5, 0x13(r1)
/* 8049F3E0  38 61 00 08 */	addi r3, r1, 8
/* 8049F3E4  38 80 00 04 */	li r4, 4
/* 8049F3E8  38 A5 06 4D */	addi r5, r5, 0x64d
/* 8049F3EC  4B F4 F8 E1 */	bl mString_Load_StringFromRom
/* 8049F3F0  38 81 00 08 */	addi r4, r1, 8
/* 8049F3F4  38 60 00 01 */	li r3, 1
/* 8049F3F8  38 A0 00 04 */	li r5, 4
/* 8049F3FC  4B F1 25 5D */	bl mHandbill_Set_free_str
/* 8049F400  A0 81 00 16 */	lhz r4, 0x16(r1)
/* 8049F404  38 61 00 18 */	addi r3, r1, 0x18
/* 8049F408  4B F4 F9 D1 */	bl mString_Load_YearStringFromRom
/* 8049F40C  7C 65 1B 78 */	mr r5, r3
/* 8049F410  38 81 00 18 */	addi r4, r1, 0x18
/* 8049F414  38 60 00 02 */	li r3, 2
/* 8049F418  4B F1 25 41 */	bl mHandbill_Set_free_str
/* 8049F41C  38 61 00 2C */	addi r3, r1, 0x2c
/* 8049F420  4B F1 D2 E1 */	bl mMl_clear_mail
/* 8049F424  7C FD E0 2E */	lwzx r7, r29, r28
/* 8049F428  38 61 00 5E */	addi r3, r1, 0x5e
/* 8049F42C  38 81 00 0C */	addi r4, r1, 0xc
/* 8049F430  38 A1 01 36 */	addi r5, r1, 0x136
/* 8049F434  38 C1 00 76 */	addi r6, r1, 0x76
/* 8049F438  4B F1 32 FD */	bl mHandbill_Load_HandbillFromRom
/* 8049F43C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8049F440  1C 98 24 40 */	mulli r4, r24, 0x2440
/* 8049F444  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8049F448  38 E0 00 00 */	li r7, 0
/* 8049F44C  98 01 00 5B */	stb r0, 0x5b(r1)
/* 8049F450  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 8049F454  38 C0 00 37 */	li r6, 0x37
/* 8049F458  38 A0 00 02 */	li r5, 2
/* 8049F45C  98 E1 00 5A */	stb r7, 0x5a(r1)
/* 8049F460  7C 80 22 14 */	add r4, r0, r4
/* 8049F464  38 61 00 2C */	addi r3, r1, 0x2c
/* 8049F468  98 C1 00 5D */	stb r6, 0x5d(r1)
/* 8049F46C  38 84 00 20 */	addi r4, r4, 0x20
/* 8049F470  98 A1 00 5C */	stb r5, 0x5c(r1)
/* 8049F474  4B F4 0C AD */	bl mPr_CopyPersonalID
/* 8049F478  1C 7F 01 2A */	mulli r3, r31, 0x12a
/* 8049F47C  38 00 00 00 */	li r0, 0
/* 8049F480  98 01 00 40 */	stb r0, 0x40(r1)
/* 8049F484  38 81 00 2C */	addi r4, r1, 0x2c
/* 8049F488  3C 63 00 01 */	addis r3, r3, 1
/* 8049F48C  38 63 B7 18 */	addi r3, r3, -18664
/* 8049F490  7C 7B 1A 14 */	add r3, r27, r3
/* 8049F494  4B F1 D4 E1 */	bl mMl_copy_mail
lbl_8049F498:
/* 8049F498  3B 5A 00 01 */	addi r26, r26, 1
/* 8049F49C  3B 39 26 B0 */	addi r25, r25, 0x26b0
/* 8049F4A0  2C 1A 00 04 */	cmpwi r26, 4
/* 8049F4A4  41 80 FE D0 */	blt lbl_8049F374
/* 8049F4A8  39 61 01 80 */	addi r11, r1, 0x180
/* 8049F4AC  4B BF BA 61 */	bl func_8009AF0C
/* 8049F4B0  80 01 01 84 */	lwz r0, 0x184(r1)
/* 8049F4B4  7C 08 03 A6 */	mtlr r0
/* 8049F4B8  38 21 01 80 */	addi r1, r1, 0x180
/* 8049F4BC  4E 80 00 20 */	blr 
