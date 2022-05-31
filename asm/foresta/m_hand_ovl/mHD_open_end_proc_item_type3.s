lbl_805DE33C:
/* 805DE33C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805DE340  7C 08 02 A6 */	mflr r0
/* 805DE344  90 01 00 24 */	stw r0, 0x24(r1)
/* 805DE348  39 61 00 20 */	addi r11, r1, 0x20
/* 805DE34C  4B AB CB 85 */	bl func_8009AED0
/* 805DE350  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805DE354  7C 7F 1B 78 */	mr r31, r3
/* 805DE358  80 65 09 80 */	lwz r3, 0x980(r5)
/* 805DE35C  80 85 09 7C */	lwz r4, 0x97c(r5)
/* 805DE360  A0 63 02 34 */	lhz r3, 0x234(r3)
/* 805DE364  3B 84 00 08 */	addi r28, r4, 8
/* 805DE368  28 03 FE 20 */	cmplwi r3, 0xfe20
/* 805DE36C  54 60 C7 3E */	rlwinm r0, r3, 0x18, 0x1c, 0x1f
/* 805DE370  41 82 00 14 */	beq lbl_805DE384
/* 805DE374  28 03 24 00 */	cmplwi r3, 0x2400
/* 805DE378  41 80 00 D4 */	blt lbl_805DE44C
/* 805DE37C  28 03 24 FF */	cmplwi r3, 0x24ff
/* 805DE380  40 80 00 CC */	bge lbl_805DE44C
lbl_805DE384:
/* 805DE384  3C 80 80 65 */	lis r4, lit_825@ha /* 0x8064B2F4@ha */
/* 805DE388  80 65 09 88 */	lwz r3, 0x988(r5)
/* 805DE38C  C0 24 B2 F4 */	lfs f1, lit_825@l(r4)  /* 0x8064B2F4@l */
/* 805DE390  4B D9 20 F9 */	bl cKF_FrameControl_passCheck_now
/* 805DE394  2C 03 00 00 */	cmpwi r3, 0
/* 805DE398  41 82 01 30 */	beq lbl_805DE4C8
/* 805DE39C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805DE3A0  7F E3 FB 78 */	mr r3, r31
/* 805DE3A4  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 805DE3A8  7F 84 E3 78 */	mr r4, r28
/* 805DE3AC  3F A5 00 02 */	addis r29, r5, 2
/* 805DE3B0  38 C0 00 00 */	li r6, 0
/* 805DE3B4  83 DD 61 3C */	lwz r30, 0x613c(r29)
/* 805DE3B8  38 BE 10 8A */	addi r5, r30, 0x108a
/* 805DE3BC  4B FF F3 AD */	bl mHD_drop_item
/* 805DE3C0  A0 9E 10 8A */	lhz r4, 0x108a(r30)
/* 805DE3C4  28 04 FE 20 */	cmplwi r4, 0xfe20
/* 805DE3C8  40 82 00 38 */	bne lbl_805DE400
/* 805DE3CC  80 9F 00 2C */	lwz r4, 0x2c(r31)
/* 805DE3D0  7F 83 E3 78 */	mr r3, r28
/* 805DE3D4  80 84 09 7C */	lwz r4, 0x97c(r4)
/* 805DE3D8  81 84 02 EC */	lwz r12, 0x2ec(r4)
/* 805DE3DC  7D 89 03 A6 */	mtctr r12
/* 805DE3E0  4E 80 04 21 */	bctrl 
/* 805DE3E4  7C 64 1B 78 */	mr r4, r3
/* 805DE3E8  7F E3 FB 78 */	mr r3, r31
/* 805DE3EC  48 00 B4 35 */	bl mNW_get_image_no
/* 805DE3F0  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 805DE3F4  38 03 01 00 */	addi r0, r3, 0x100
/* 805DE3F8  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 805DE3FC  48 00 00 30 */	b lbl_805DE42C
lbl_805DE400:
/* 805DE400  28 04 24 00 */	cmplwi r4, 0x2400
/* 805DE404  38 00 00 00 */	li r0, 0
/* 805DE408  41 80 00 10 */	blt lbl_805DE418
/* 805DE40C  28 04 24 FF */	cmplwi r4, 0x24ff
/* 805DE410  40 80 00 08 */	bge lbl_805DE418
/* 805DE414  38 00 00 01 */	li r0, 1
lbl_805DE418:
/* 805DE418  20 60 00 00 */	subfic r3, r0, 0
/* 805DE41C  38 04 DC 00 */	addi r0, r4, -9216
/* 805DE420  7C 63 19 10 */	subfe r3, r3, r3
/* 805DE424  7C 00 18 38 */	and r0, r0, r3
/* 805DE428  54 00 04 3E */	clrlwi r0, r0, 0x10
lbl_805DE42C:
/* 805DE42C  B0 1E 10 88 */	sth r0, 0x1088(r30)
/* 805DE430  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 805DE434  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 805DE438  80 9D 61 3C */	lwz r4, 0x613c(r29)
/* 805DE43C  80 63 00 00 */	lwz r3, 0(r3)
/* 805DE440  A0 84 10 88 */	lhz r4, 0x1088(r4)
/* 805DE444  4B DF B0 35 */	bl mPlib_change_player_cloth
/* 805DE448  48 00 00 80 */	b lbl_805DE4C8
lbl_805DE44C:
/* 805DE44C  2C 00 00 08 */	cmpwi r0, 8
/* 805DE450  40 82 00 28 */	bne lbl_805DE478
/* 805DE454  80 A5 09 88 */	lwz r5, 0x988(r5)
/* 805DE458  38 03 D8 00 */	addi r0, r3, -10240
/* 805DE45C  7F E3 FB 78 */	mr r3, r31
/* 805DE460  7F 84 E3 78 */	mr r4, r28
/* 805DE464  98 05 03 E2 */	stb r0, 0x3e2(r5)
/* 805DE468  38 A0 00 00 */	li r5, 0
/* 805DE46C  38 C0 00 00 */	li r6, 0
/* 805DE470  4B FF F2 F9 */	bl mHD_drop_item
/* 805DE474  48 00 00 54 */	b lbl_805DE4C8
lbl_805DE478:
/* 805DE478  2C 00 00 0F */	cmpwi r0, 0xf
/* 805DE47C  40 82 00 28 */	bne lbl_805DE4A4
/* 805DE480  80 A5 09 88 */	lwz r5, 0x988(r5)
/* 805DE484  38 00 00 08 */	li r0, 8
/* 805DE488  7F E3 FB 78 */	mr r3, r31
/* 805DE48C  7F 84 E3 78 */	mr r4, r28
/* 805DE490  98 05 03 E2 */	stb r0, 0x3e2(r5)
/* 805DE494  38 A0 00 00 */	li r5, 0
/* 805DE498  38 C0 00 00 */	li r6, 0
/* 805DE49C  4B FF F2 CD */	bl mHD_drop_item
/* 805DE4A0  48 00 00 28 */	b lbl_805DE4C8
lbl_805DE4A4:
/* 805DE4A4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805DE4A8  7F E3 FB 78 */	mr r3, r31
/* 805DE4AC  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 805DE4B0  7F 84 E3 78 */	mr r4, r28
/* 805DE4B4  3C A5 00 02 */	addis r5, r5, 2
/* 805DE4B8  38 C0 00 00 */	li r6, 0
/* 805DE4BC  80 A5 61 3C */	lwz r5, 0x613c(r5)
/* 805DE4C0  38 A5 04 A4 */	addi r5, r5, 0x4a4
/* 805DE4C4  4B FF F2 A5 */	bl mHD_drop_item
lbl_805DE4C8:
/* 805DE4C8  39 61 00 20 */	addi r11, r1, 0x20
/* 805DE4CC  4B AB CA 51 */	bl func_8009AF1C
/* 805DE4D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805DE4D4  7C 08 03 A6 */	mtlr r0
/* 805DE4D8  38 21 00 20 */	addi r1, r1, 0x20
/* 805DE4DC  4E 80 00 20 */	blr 
