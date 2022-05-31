lbl_805F7740:
/* 805F7740  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805F7744  7C 08 02 A6 */	mflr r0
/* 805F7748  90 01 00 24 */	stw r0, 0x24(r1)
/* 805F774C  39 61 00 20 */	addi r11, r1, 0x20
/* 805F7750  4B AA 37 79 */	bl func_8009AEC8
/* 805F7754  7C 7C 1B 78 */	mr r28, r3
/* 805F7758  7C 9D 23 78 */	mr r29, r4
/* 805F775C  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805F7760  80 63 09 7C */	lwz r3, 0x97c(r3)
/* 805F7764  38 63 00 08 */	addi r3, r3, 8
/* 805F7768  4B FF 83 F9 */	bl mTG_get_table_idx
/* 805F776C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805F7770  54 60 08 3C */	slwi r0, r3, 1
/* 805F7774  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 805F7778  7C 7E 1B 78 */	mr r30, r3
/* 805F777C  3F E5 00 02 */	addis r31, r5, 2
/* 805F7780  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 805F7784  80 BF 61 3C */	lwz r5, 0x613c(r31)
/* 805F7788  38 64 52 F0 */	addi r3, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 805F778C  80 63 00 00 */	lwz r3, 0(r3)
/* 805F7790  7C 85 02 14 */	add r4, r5, r0
/* 805F7794  A3 44 00 68 */	lhz r26, 0x68(r4)
/* 805F7798  4B DE 1E A9 */	bl get_player_actor_withoutCheck
/* 805F779C  80 9C 01 74 */	lwz r4, 0x174(r28)
/* 805F77A0  38 00 00 01 */	li r0, 1
/* 805F77A4  7C 7B 1B 78 */	mr r27, r3
/* 805F77A8  9B C4 00 02 */	stb r30, 2(r4)
/* 805F77AC  B3 44 00 00 */	sth r26, 0(r4)
/* 805F77B0  B0 1C 01 7A */	sth r0, 0x17a(r28)
/* 805F77B4  80 1D 00 38 */	lwz r0, 0x38(r29)
/* 805F77B8  2C 00 00 0D */	cmpwi r0, 0xd
/* 805F77BC  40 82 00 28 */	bne lbl_805F77E4
/* 805F77C0  80 1D 00 3C */	lwz r0, 0x3c(r29)
/* 805F77C4  7F C4 F3 78 */	mr r4, r30
/* 805F77C8  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 805F77CC  38 C0 00 00 */	li r6, 0
/* 805F77D0  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 805F77D4  4B DE 96 55 */	bl mPr_SetPossessionItem
/* 805F77D8  80 1D 00 44 */	lwz r0, 0x44(r29)
/* 805F77DC  7C 1B 07 34 */	extsh r27, r0
/* 805F77E0  48 00 00 1C */	b lbl_805F77FC
lbl_805F77E4:
/* 805F77E4  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 805F77E8  7F C4 F3 78 */	mr r4, r30
/* 805F77EC  38 A0 00 00 */	li r5, 0
/* 805F77F0  38 C0 00 00 */	li r6, 0
/* 805F77F4  4B DE 96 35 */	bl mPr_SetPossessionItem
/* 805F77F8  AB 7B 00 DE */	lha r27, 0xde(r27)
lbl_805F77FC:
/* 805F77FC  7F 83 E3 78 */	mr r3, r28
/* 805F7800  38 80 00 00 */	li r4, 0
/* 805F7804  38 A0 00 00 */	li r5, 0
/* 805F7808  4B FF 7F AD */	bl mTG_return_tag_init
/* 805F780C  7F 83 E3 78 */	mr r3, r28
/* 805F7810  7F A4 EB 78 */	mr r4, r29
/* 805F7814  38 A0 00 01 */	li r5, 1
/* 805F7818  4B FF B7 FD */	bl mTG_close_window
/* 805F781C  57 40 C7 3E */	rlwinm r0, r26, 0x18, 0x1c, 0x1f
/* 805F7820  2C 00 00 03 */	cmpwi r0, 3
/* 805F7824  40 82 00 2C */	bne lbl_805F7850
/* 805F7828  80 9C 00 2C */	lwz r4, 0x2c(r28)
/* 805F782C  38 7C 01 68 */	addi r3, r28, 0x168
/* 805F7830  80 84 09 88 */	lwz r4, 0x988(r4)
/* 805F7834  38 84 03 D4 */	addi r4, r4, 0x3d4
/* 805F7838  4B DC 36 85 */	bl xyz_t_move
/* 805F783C  7F 63 DB 78 */	mr r3, r27
/* 805F7840  7F 44 07 34 */	extsh r4, r26
/* 805F7844  38 A0 00 00 */	li r5, 0
/* 805F7848  4B DE 21 69 */	bl mPlib_request_main_release_creature_gyoei_from_submenu
/* 805F784C  48 00 00 88 */	b lbl_805F78D4
lbl_805F7850:
/* 805F7850  28 1A 2D 28 */	cmplwi r26, 0x2d28
/* 805F7854  41 80 00 78 */	blt lbl_805F78CC
/* 805F7858  28 1A 2D 2C */	cmplwi r26, 0x2d2c
/* 805F785C  41 81 00 70 */	bgt lbl_805F78CC
/* 805F7860  28 1A 2D 28 */	cmplwi r26, 0x2d28
/* 805F7864  38 00 00 00 */	li r0, 0
/* 805F7868  41 80 00 10 */	blt lbl_805F7878
/* 805F786C  28 1A 2D 2C */	cmplwi r26, 0x2d2c
/* 805F7870  41 81 00 08 */	bgt lbl_805F7878
/* 805F7874  38 00 00 01 */	li r0, 1
lbl_805F7878:
/* 805F7878  20 60 00 00 */	subfic r3, r0, 0
/* 805F787C  38 1A D2 D9 */	addi r0, r26, -11559
/* 805F7880  7C 63 19 10 */	subfe r3, r3, r3
/* 805F7884  7C 03 18 38 */	and r3, r0, r3
/* 805F7888  2C 03 00 02 */	cmpwi r3, 2
/* 805F788C  41 80 00 20 */	blt lbl_805F78AC
/* 805F7890  38 03 2D 26 */	addi r0, r3, 0x2d26
/* 805F7894  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 805F7898  7F C4 F3 78 */	mr r4, r30
/* 805F789C  38 C0 00 00 */	li r6, 0
/* 805F78A0  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 805F78A4  4B DE 95 85 */	bl mPr_SetPossessionItem
/* 805F78A8  48 00 00 18 */	b lbl_805F78C0
lbl_805F78AC:
/* 805F78AC  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 805F78B0  7F C4 F3 78 */	mr r4, r30
/* 805F78B4  38 A0 00 00 */	li r5, 0
/* 805F78B8  38 C0 00 00 */	li r6, 0
/* 805F78BC  4B DE 95 6D */	bl mPr_SetPossessionItem
lbl_805F78C0:
/* 805F78C0  38 60 2D 28 */	li r3, 0x2d28
/* 805F78C4  4B FF FE 59 */	bl mTG_insect_release
/* 805F78C8  48 00 00 0C */	b lbl_805F78D4
lbl_805F78CC:
/* 805F78CC  7F 43 D3 78 */	mr r3, r26
/* 805F78D0  4B FF FE 4D */	bl mTG_insect_release
lbl_805F78D4:
/* 805F78D4  39 61 00 20 */	addi r11, r1, 0x20
/* 805F78D8  4B AA 36 3D */	bl func_8009AF14
/* 805F78DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805F78E0  7C 08 03 A6 */	mtlr r0
/* 805F78E4  38 21 00 20 */	addi r1, r1, 0x20
/* 805F78E8  4E 80 00 20 */	blr 
