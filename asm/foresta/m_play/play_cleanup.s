lbl_8062A488:
/* 8062A488  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062A48C  7C 08 02 A6 */	mflr r0
/* 8062A490  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062A494  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8062A498  7C 7F 1B 78 */	mr r31, r3
/* 8062A49C  4B D9 50 E1 */	bl mMsg_dt
/* 8062A4A0  4B D4 CD A5 */	bl banti_dt
/* 8062A4A4  80 9F 00 00 */	lwz r4, 0(r31)
/* 8062A4A8  38 00 00 00 */	li r0, 0
/* 8062A4AC  38 7F 1F B8 */	addi r3, r31, 0x1fb8
/* 8062A4B0  90 04 03 4C */	stw r0, 0x34c(r4)
/* 8062A4B4  80 9F 00 00 */	lwz r4, 0(r31)
/* 8062A4B8  90 04 03 50 */	stw r0, 0x350(r4)
/* 8062A4BC  90 1F 1D EC */	stw r0, 0x1dec(r31)
/* 8062A4C0  4B DD A0 79 */	bl PreRender_cleanup
/* 8062A4C4  7F E3 FB 78 */	mr r3, r31
/* 8062A4C8  38 9F 23 28 */	addi r4, r31, 0x2328
/* 8062A4CC  4B D6 A6 4D */	bl CollisionCheck_dt
/* 8062A4D0  88 1F 20 D2 */	lbz r0, 0x20d2(r31)
/* 8062A4D4  28 00 00 03 */	cmplwi r0, 3
/* 8062A4D8  40 82 00 18 */	bne lbl_8062A4F0
/* 8062A4DC  3C 60 81 23 */	lis r3, fbdemo@ha /* 0x81233960@ha */
/* 8062A4E0  38 63 39 60 */	addi r3, r3, fbdemo@l /* 0x81233960@l */
/* 8062A4E4  4B D7 61 21 */	bl fbdemo_cleanup
/* 8062A4E8  38 00 00 00 */	li r0, 0
/* 8062A4EC  98 1F 20 D2 */	stb r0, 0x20d2(r31)
lbl_8062A4F0:
/* 8062A4F0  88 1F 20 D3 */	lbz r0, 0x20d3(r31)
/* 8062A4F4  28 00 00 03 */	cmplwi r0, 3
/* 8062A4F8  40 82 00 0C */	bne lbl_8062A504
/* 8062A4FC  7F E3 FB 78 */	mr r3, r31
/* 8062A500  4B FF F8 7D */	bl Game_play_fbdemo_wipe_destroy
lbl_8062A504:
/* 8062A504  7F E4 FB 78 */	mr r4, r31
/* 8062A508  38 7F 1D A8 */	addi r3, r31, 0x1da8
/* 8062A50C  4B D4 AA 11 */	bl Actor_info_dt
/* 8062A510  38 7F 20 AC */	addi r3, r31, 0x20ac
/* 8062A514  4B D7 32 F5 */	bl mEv_finish
/* 8062A518  4B DA 46 9D */	bl mNpc_ClearEventNpc
/* 8062A51C  4B DA 48 D5 */	bl mNpc_ClearMaskNpc
/* 8062A520  38 7F 1D EC */	addi r3, r31, 0x1dec
/* 8062A524  4B DC 51 B5 */	bl mSM_submenu_dt
/* 8062A528  38 00 FF FF */	li r0, -1
/* 8062A52C  38 7F 1D EC */	addi r3, r31, 0x1dec
/* 8062A530  98 1F 1F A4 */	stb r0, 0x1fa4(r31)
/* 8062A534  4B DC 50 79 */	bl mSM_submenu_ovlptr_cleanup
/* 8062A538  7F E3 FB 78 */	mr r3, r31
/* 8062A53C  4B DA ED F9 */	bl mPlib_Object_Exchange_keep_Player_dt
/* 8062A540  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8062A544  38 60 00 00 */	li r3, 0
/* 8062A548  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8062A54C  3C 84 00 02 */	addis r4, r4, 2
/* 8062A550  88 84 60 03 */	lbz r4, 0x6003(r4)
/* 8062A554  4B D8 72 CD */	bl mHsRm_GetHuusuiRoom
/* 8062A558  4B D7 9A 31 */	bl mFM_Field_dt
/* 8062A55C  4B DD 8C A5 */	bl mCD_toNextLand
/* 8062A560  4B D7 02 99 */	bl mEA_CleanCardDLProgram
/* 8062A564  3C 80 80 1F */	lis r4, my_malloc_current@ha /* 0x801F68BC@ha */
/* 8062A568  3C 60 80 6D */	lis r3, data_806D4A98@ha /* 0x806D4A98@ha */
/* 8062A56C  38 A4 68 BC */	addi r5, r4, my_malloc_current@l /* 0x801F68BC@l */
/* 8062A570  80 85 00 00 */	lwz r4, 0(r5)
/* 8062A574  38 03 4A 98 */	addi r0, r3, data_806D4A98@l /* 0x806D4A98@l */
/* 8062A578  7C 04 00 40 */	cmplw r4, r0
/* 8062A57C  40 82 00 0C */	bne lbl_8062A588
/* 8062A580  38 00 00 00 */	li r0, 0
/* 8062A584  90 05 00 00 */	stw r0, 0(r5)
lbl_8062A588:
/* 8062A588  4B D9 20 4D */	bl zelda_CleanupArena
/* 8062A58C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062A590  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8062A594  7C 08 03 A6 */	mtlr r0
/* 8062A598  38 21 00 10 */	addi r1, r1, 0x10
/* 8062A59C  4E 80 00 20 */	blr 
