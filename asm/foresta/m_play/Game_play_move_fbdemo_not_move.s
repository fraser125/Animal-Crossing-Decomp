lbl_8062A840:
/* 8062A840  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062A844  7C 08 02 A6 */	mflr r0
/* 8062A848  38 80 00 8F */	li r4, 0x8f
/* 8062A84C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062A850  38 00 00 00 */	li r0, 0
/* 8062A854  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8062A858  7C 7F 1B 78 */	mr r31, r3
/* 8062A85C  98 03 00 9C */	stb r0, 0x9c(r3)
/* 8062A860  38 00 00 01 */	li r0, 1
/* 8062A864  98 83 00 9D */	stb r4, 0x9d(r3)
/* 8062A868  98 03 00 9C */	stb r0, 0x9c(r3)
/* 8062A86C  4B DC 50 25 */	bl mSM_submenu_ctrl
/* 8062A870  80 1F 1D F8 */	lwz r0, 0x1df8(r31)
/* 8062A874  2C 00 00 00 */	cmpwi r0, 0
/* 8062A878  40 82 00 24 */	bne lbl_8062A89C
/* 8062A87C  38 00 00 02 */	li r0, 2
/* 8062A880  7F E3 FB 78 */	mr r3, r31
/* 8062A884  98 1F 00 9C */	stb r0, 0x9c(r31)
/* 8062A888  4B D6 FA 49 */	bl mDemo_Main
/* 8062A88C  38 00 00 03 */	li r0, 3
/* 8062A890  38 7F 20 AC */	addi r3, r31, 0x20ac
/* 8062A894  98 1F 00 9C */	stb r0, 0x9c(r31)
/* 8062A898  4B D7 2D 95 */	bl mEv_run
lbl_8062A89C:
/* 8062A89C  38 00 00 04 */	li r0, 4
/* 8062A8A0  98 1F 00 9C */	stb r0, 0x9c(r31)
/* 8062A8A4  4B D6 F8 9D */	bl mDemo_stock_clear
/* 8062A8A8  38 00 00 05 */	li r0, 5
/* 8062A8AC  38 7F 01 10 */	addi r3, r31, 0x110
/* 8062A8B0  98 1F 00 9C */	stb r0, 0x9c(r31)
/* 8062A8B4  4B DC 5E 75 */	bl mSc_dmacopy_data_bank
/* 8062A8B8  38 00 00 06 */	li r0, 6
/* 8062A8BC  38 7F 1D EC */	addi r3, r31, 0x1dec
/* 8062A8C0  98 1F 00 9C */	stb r0, 0x9c(r31)
/* 8062A8C4  4B DC 54 C5 */	bl mSM_submenu_move
/* 8062A8C8  80 1F 1D F8 */	lwz r0, 0x1df8(r31)
/* 8062A8CC  2C 00 00 00 */	cmpwi r0, 0
/* 8062A8D0  40 82 00 94 */	bne lbl_8062A964
/* 8062A8D4  80 9F 20 90 */	lwz r4, 0x2090(r31)
/* 8062A8D8  38 60 00 02 */	li r3, 2
/* 8062A8DC  38 04 00 01 */	addi r0, r4, 1
/* 8062A8E0  90 1F 20 90 */	stw r0, 0x2090(r31)
/* 8062A8E4  4B DD 96 F9 */	bl mVibctl_clr_force_stop
/* 8062A8E8  38 00 00 07 */	li r0, 7
/* 8062A8EC  7F E3 FB 78 */	mr r3, r31
/* 8062A8F0  98 1F 00 9C */	stb r0, 0x9c(r31)
/* 8062A8F4  38 9F 23 28 */	addi r4, r31, 0x2328
/* 8062A8F8  4B D6 AA 91 */	bl CollisionCheck_OC
/* 8062A8FC  38 00 00 08 */	li r0, 8
/* 8062A900  7F E3 FB 78 */	mr r3, r31
/* 8062A904  98 1F 00 9C */	stb r0, 0x9c(r31)
/* 8062A908  38 9F 23 28 */	addi r4, r31, 0x2328
/* 8062A90C  4B D6 A2 11 */	bl CollisionCheck_clear
/* 8062A910  38 00 00 09 */	li r0, 9
/* 8062A914  38 A0 00 00 */	li r5, 0
/* 8062A918  98 1F 00 9C */	stb r0, 0x9c(r31)
/* 8062A91C  38 00 00 90 */	li r0, 0x90
/* 8062A920  7F E3 FB 78 */	mr r3, r31
/* 8062A924  38 9F 1D A8 */	addi r4, r31, 0x1da8
/* 8062A928  98 BF 00 9C */	stb r5, 0x9c(r31)
/* 8062A92C  98 1F 00 9D */	stb r0, 0x9d(r31)
/* 8062A930  4B D4 A6 5D */	bl Actor_info_call_actor
/* 8062A934  38 00 00 00 */	li r0, 0
/* 8062A938  38 60 00 91 */	li r3, 0x91
/* 8062A93C  98 1F 00 9C */	stb r0, 0x9c(r31)
/* 8062A940  38 00 00 01 */	li r0, 1
/* 8062A944  98 7F 00 9D */	stb r3, 0x9d(r31)
/* 8062A948  98 1F 00 9C */	stb r0, 0x9c(r31)
/* 8062A94C  4B D6 32 19 */	bl mCoBG_CalcTimerDecalCircle
/* 8062A950  38 00 00 02 */	li r0, 2
/* 8062A954  7F E3 FB 78 */	mr r3, r31
/* 8062A958  98 1F 00 9C */	stb r0, 0x9c(r31)
/* 8062A95C  4B D9 4C D5 */	bl mMsg_Main
/* 8062A960  48 00 00 0C */	b lbl_8062A96C
lbl_8062A964:
/* 8062A964  38 60 00 02 */	li r3, 2
/* 8062A968  4B DD 96 49 */	bl mVibctl_set_force_stop
lbl_8062A96C:
/* 8062A96C  3C 80 81 1C */	lis r4, game_GameFrame@ha /* 0x811C530C@ha */
/* 8062A970  38 7F 23 18 */	addi r3, r31, 0x2318
/* 8062A974  38 84 53 0C */	addi r4, r4, game_GameFrame@l /* 0x811C530C@l */
/* 8062A978  88 84 00 00 */	lbz r4, 0(r4)
/* 8062A97C  4B D7 68 C9 */	bl fbdemo_fade_move
/* 8062A980  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062A984  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8062A988  7C 08 03 A6 */	mtlr r0
/* 8062A98C  38 21 00 10 */	addi r1, r1, 0x10
/* 8062A990  4E 80 00 20 */	blr 
