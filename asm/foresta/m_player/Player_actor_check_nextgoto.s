lbl_804E027C:
/* 804E027C  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 804E0280  7C 08 02 A6 */	mflr r0
/* 804E0284  90 01 00 84 */	stw r0, 0x84(r1)
/* 804E0288  39 61 00 80 */	addi r11, r1, 0x80
/* 804E028C  4B BB AC 49 */	bl func_8009AED4
/* 804E0290  A3 C3 13 94 */	lhz r30, 0x1394(r3)
/* 804E0294  7C 7F 1B 78 */	mr r31, r3
/* 804E0298  7C 9D 23 78 */	mr r29, r4
/* 804E029C  57 C0 A7 3E */	rlwinm r0, r30, 0x14, 0x1c, 0x1f
/* 804E02A0  2C 00 00 04 */	cmpwi r0, 4
/* 804E02A4  40 82 01 E0 */	bne lbl_804E0484
/* 804E02A8  7F C4 F3 78 */	mr r4, r30
/* 804E02AC  4B FF FE F5 */	bl Player_actor_check_bg_for_next_goto
/* 804E02B0  2C 03 00 00 */	cmpwi r3, 0
/* 804E02B4  41 82 01 D0 */	beq lbl_804E0484
/* 804E02B8  4B EB AC 01 */	bl mEv_CheckTitleDemo
/* 804E02BC  2C 03 00 00 */	cmpwi r3, 0
/* 804E02C0  41 81 01 C4 */	bgt lbl_804E0484
/* 804E02C4  88 1D 20 D3 */	lbz r0, 0x20d3(r29)
/* 804E02C8  28 00 00 00 */	cmplwi r0, 0
/* 804E02CC  40 82 01 B8 */	bne lbl_804E0484
/* 804E02D0  28 1E 40 80 */	cmplwi r30, 0x4080
/* 804E02D4  41 80 00 40 */	blt lbl_804E0314
/* 804E02D8  28 1E 40 81 */	cmplwi r30, 0x4081
/* 804E02DC  40 80 00 38 */	bge lbl_804E0314
/* 804E02E0  3C 60 80 4E */	lis r3, Player_actor_set_nextgoto_info_type0@ha /* 0x804E0070@ha */
/* 804E02E4  7F E4 FB 78 */	mr r4, r31
/* 804E02E8  38 A3 00 70 */	addi r5, r3, Player_actor_set_nextgoto_info_type0@l /* 0x804E0070@l */
/* 804E02EC  38 60 00 02 */	li r3, 2
/* 804E02F0  4B EB 9E 6D */	bl mDemo_Request
/* 804E02F4  88 1F 13 A4 */	lbz r0, 0x13a4(r31)
/* 804E02F8  7C 00 07 75 */	extsb. r0, r0
/* 804E02FC  41 82 01 88 */	beq lbl_804E0484
/* 804E0300  38 60 00 0E */	li r3, 0xe
/* 804E0304  4B E9 C5 1D */	bl mBGMPsComp_scene_mode
/* 804E0308  38 00 00 00 */	li r0, 0
/* 804E030C  98 1F 13 A4 */	stb r0, 0x13a4(r31)
/* 804E0310  48 00 01 74 */	b lbl_804E0484
lbl_804E0314:
/* 804E0314  28 1E 40 00 */	cmplwi r30, 0x4000
/* 804E0318  41 80 01 6C */	blt lbl_804E0484
/* 804E031C  28 1E 40 80 */	cmplwi r30, 0x4080
/* 804E0320  40 80 01 64 */	bge lbl_804E0484
/* 804E0324  80 BF 00 28 */	lwz r5, 0x28(r31)
/* 804E0328  38 61 00 50 */	addi r3, r1, 0x50
/* 804E032C  80 9F 00 2C */	lwz r4, 0x2c(r31)
/* 804E0330  90 A1 00 50 */	stw r5, 0x50(r1)
/* 804E0334  90 81 00 54 */	stw r4, 0x54(r1)
/* 804E0338  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 804E033C  90 01 00 58 */	stw r0, 0x58(r1)
/* 804E0340  90 A1 00 5C */	stw r5, 0x5c(r1)
/* 804E0344  90 81 00 60 */	stw r4, 0x60(r1)
/* 804E0348  90 01 00 64 */	stw r0, 0x64(r1)
/* 804E034C  4B EC 63 C1 */	bl mFI_GetUnitCol
/* 804E0350  A0 03 00 00 */	lhz r0, 0(r3)
/* 804E0354  38 61 00 5C */	addi r3, r1, 0x5c
/* 804E0358  54 1E DE FE */	rlwinm r30, r0, 0x1b, 0x1b, 0x1f
/* 804E035C  4B EC 63 B1 */	bl mFI_GetUnitCol
/* 804E0360  88 03 00 00 */	lbz r0, 0(r3)
/* 804E0364  54 00 F6 FE */	rlwinm r0, r0, 0x1e, 0x1b, 0x1f
/* 804E0368  7C 00 F0 00 */	cmpw r0, r30
/* 804E036C  40 82 00 E8 */	bne lbl_804E0454
/* 804E0370  80 BF 00 28 */	lwz r5, 0x28(r31)
/* 804E0374  38 61 00 38 */	addi r3, r1, 0x38
/* 804E0378  80 9F 00 2C */	lwz r4, 0x2c(r31)
/* 804E037C  90 A1 00 38 */	stw r5, 0x38(r1)
/* 804E0380  90 81 00 3C */	stw r4, 0x3c(r1)
/* 804E0384  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 804E0388  90 01 00 40 */	stw r0, 0x40(r1)
/* 804E038C  90 A1 00 44 */	stw r5, 0x44(r1)
/* 804E0390  90 81 00 48 */	stw r4, 0x48(r1)
/* 804E0394  90 01 00 4C */	stw r0, 0x4c(r1)
/* 804E0398  4B EC 63 75 */	bl mFI_GetUnitCol
/* 804E039C  88 03 00 01 */	lbz r0, 1(r3)
/* 804E03A0  38 61 00 44 */	addi r3, r1, 0x44
/* 804E03A4  54 1E 06 FE */	clrlwi r30, r0, 0x1b
/* 804E03A8  4B EC 63 65 */	bl mFI_GetUnitCol
/* 804E03AC  88 03 00 00 */	lbz r0, 0(r3)
/* 804E03B0  54 00 F6 FE */	rlwinm r0, r0, 0x1e, 0x1b, 0x1f
/* 804E03B4  7C 00 F0 40 */	cmplw r0, r30
/* 804E03B8  40 82 00 9C */	bne lbl_804E0454
/* 804E03BC  80 BF 00 28 */	lwz r5, 0x28(r31)
/* 804E03C0  38 61 00 20 */	addi r3, r1, 0x20
/* 804E03C4  80 9F 00 2C */	lwz r4, 0x2c(r31)
/* 804E03C8  90 A1 00 20 */	stw r5, 0x20(r1)
/* 804E03CC  90 81 00 24 */	stw r4, 0x24(r1)
/* 804E03D0  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 804E03D4  90 01 00 28 */	stw r0, 0x28(r1)
/* 804E03D8  90 A1 00 2C */	stw r5, 0x2c(r1)
/* 804E03DC  90 81 00 30 */	stw r4, 0x30(r1)
/* 804E03E0  90 01 00 34 */	stw r0, 0x34(r1)
/* 804E03E4  4B EC 63 29 */	bl mFI_GetUnitCol
/* 804E03E8  88 03 00 02 */	lbz r0, 2(r3)
/* 804E03EC  38 61 00 2C */	addi r3, r1, 0x2c
/* 804E03F0  54 1E EE FE */	rlwinm r30, r0, 0x1d, 0x1b, 0x1f
/* 804E03F4  4B EC 63 19 */	bl mFI_GetUnitCol
/* 804E03F8  88 03 00 00 */	lbz r0, 0(r3)
/* 804E03FC  54 00 F6 FE */	rlwinm r0, r0, 0x1e, 0x1b, 0x1f
/* 804E0400  7C 00 F0 40 */	cmplw r0, r30
/* 804E0404  40 82 00 50 */	bne lbl_804E0454
/* 804E0408  80 BF 00 28 */	lwz r5, 0x28(r31)
/* 804E040C  38 61 00 08 */	addi r3, r1, 8
/* 804E0410  80 9F 00 2C */	lwz r4, 0x2c(r31)
/* 804E0414  90 A1 00 08 */	stw r5, 8(r1)
/* 804E0418  90 81 00 0C */	stw r4, 0xc(r1)
/* 804E041C  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 804E0420  90 01 00 10 */	stw r0, 0x10(r1)
/* 804E0424  90 A1 00 14 */	stw r5, 0x14(r1)
/* 804E0428  90 81 00 18 */	stw r4, 0x18(r1)
/* 804E042C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804E0430  4B EC 62 DD */	bl mFI_GetUnitCol
/* 804E0434  A0 03 00 02 */	lhz r0, 2(r3)
/* 804E0438  38 61 00 14 */	addi r3, r1, 0x14
/* 804E043C  54 1E D6 FE */	rlwinm r30, r0, 0x1a, 0x1b, 0x1f
/* 804E0440  4B EC 62 CD */	bl mFI_GetUnitCol
/* 804E0444  88 03 00 00 */	lbz r0, 0(r3)
/* 804E0448  54 00 F6 FE */	rlwinm r0, r0, 0x1e, 0x1b, 0x1f
/* 804E044C  7C 00 F0 00 */	cmpw r0, r30
/* 804E0450  41 82 00 20 */	beq lbl_804E0470
lbl_804E0454:
/* 804E0454  4B EC 48 79 */	bl mFI_GetFieldId
/* 804E0458  54 60 04 26 */	rlwinm r0, r3, 0, 0x10, 0x13
/* 804E045C  2C 00 60 00 */	cmpwi r0, 0x6000
/* 804E0460  40 82 00 10 */	bne lbl_804E0470
/* 804E0464  4B F9 27 21 */	bl aMR_SaveWaltzTempo2
/* 804E0468  38 60 01 0E */	li r3, 0x10e
/* 804E046C  4B E9 B6 A1 */	bl mBGMPsComp_make_ps_wipe
lbl_804E0470:
/* 804E0470  3C 60 80 4E */	lis r3, Player_actor_set_nextgoto_info_type1@ha /* 0x804E00F8@ha */
/* 804E0474  7F E4 FB 78 */	mr r4, r31
/* 804E0478  38 A3 00 F8 */	addi r5, r3, Player_actor_set_nextgoto_info_type1@l /* 0x804E00F8@l */
/* 804E047C  38 60 00 02 */	li r3, 2
/* 804E0480  4B EB 9C DD */	bl mDemo_Request
lbl_804E0484:
/* 804E0484  39 61 00 80 */	addi r11, r1, 0x80
/* 804E0488  4B BB AA 99 */	bl func_8009AF20
/* 804E048C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 804E0490  7C 08 03 A6 */	mtlr r0
/* 804E0494  38 21 00 80 */	addi r1, r1, 0x80
/* 804E0498  4E 80 00 20 */	blr 
