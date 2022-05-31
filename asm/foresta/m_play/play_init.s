lbl_8062A5C4:
/* 8062A5C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062A5C8  7C 08 02 A6 */	mflr r0
/* 8062A5CC  3C 80 FF FC */	lis r4, 0xFFFC /* 0xFFFC1800@ha */
/* 8062A5D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062A5D4  38 84 18 00 */	addi r4, r4, 0x1800 /* 0xFFFC1800@l */
/* 8062A5D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8062A5DC  7C 7F 1B 78 */	mr r31, r3
/* 8062A5E0  93 C1 00 08 */	stw r30, 8(r1)
/* 8062A5E4  83 C3 00 00 */	lwz r30, 0(r3)
/* 8062A5E8  4B DD AA 51 */	bl game_resize_hyral
/* 8062A5EC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8062A5F0  38 00 00 00 */	li r0, 0
/* 8062A5F4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8062A5F8  3C 63 00 03 */	addis r3, r3, 3
/* 8062A5FC  98 03 DB E0 */	stb r0, -0x2420(r3)
/* 8062A600  4B D8 0D D5 */	bl mFI_ChangeClimate_ForEventNotice
/* 8062A604  4B DC 92 C1 */	bl mTM_time_init
/* 8062A608  38 60 00 00 */	li r3, 0
/* 8062A60C  48 00 41 8D */	bl sAdo_Set_ongenpos_refuse_fg
/* 8062A610  4B FF F6 ED */	bl event_title_flag_on
/* 8062A614  4B DC 7C 5D */	bl mTD_rtc_set
/* 8062A618  4B DC 8D B5 */	bl mTM_set_season
/* 8062A61C  4B DB 37 85 */	bl mPlib_Clear_controller_data_for_title_demo
/* 8062A620  7F E3 FB 78 */	mr r3, r31
/* 8062A624  4B DC 4F 6D */	bl mSM_submenu_ovlptr_init
/* 8062A628  7F E3 FB 78 */	mr r3, r31
/* 8062A62C  4B D6 FC C5 */	bl mDemo_Init
/* 8062A630  38 7F 20 AC */	addi r3, r31, 0x20ac
/* 8062A634  4B D7 2E 85 */	bl mEv_init
/* 8062A638  7F C4 F3 78 */	mr r4, r30
/* 8062A63C  38 7F 1A 68 */	addi r3, r31, 0x1a68
/* 8062A640  4B DC 97 95 */	bl initView
/* 8062A644  7F E3 FB 78 */	mr r3, r31
/* 8062A648  4B D5 8C 21 */	bl Init_Camera2
/* 8062A64C  7F E3 FB 78 */	mr r3, r31
/* 8062A650  38 9F 23 28 */	addi r4, r31, 0x2328
/* 8062A654  4B D6 A4 9D */	bl CollisionCheck_ct
/* 8062A658  4B D6 29 21 */	bl mCoBG_InitMoveBgData
/* 8062A65C  4B D6 7A 35 */	bl func_80392090
/* 8062A660  4B D6 36 65 */	bl mCoBG_InitDecalCircle
/* 8062A664  38 00 FF FF */	li r0, -1
/* 8062A668  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8062A66C  98 1F 1F A4 */	stb r0, 0x1fa4(r31)
/* 8062A670  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 8062A674  7F E3 FB 78 */	mr r3, r31
/* 8062A678  80 04 00 14 */	lwz r0, 0x14(r4)
/* 8062A67C  7C 04 07 34 */	extsh r4, r0
/* 8062A680  48 00 0E 59 */	bl Gameplay_Scene_Read
/* 8062A684  38 7F 1D EC */	addi r3, r31, 0x1dec
/* 8062A688  4B DC 4F E1 */	bl mSM_submenu_ct
/* 8062A68C  38 00 00 00 */	li r0, 0
/* 8062A690  38 7F 1F B8 */	addi r3, r31, 0x1fb8
/* 8062A694  90 1F 1D EC */	stw r0, 0x1dec(r31)
/* 8062A698  4B DD 9E 4D */	bl PreRender_init
/* 8062A69C  38 7F 1F B8 */	addi r3, r31, 0x1fb8
/* 8062A6A0  38 80 02 80 */	li r4, 0x280
/* 8062A6A4  38 A0 01 E0 */	li r5, 0x1e0
/* 8062A6A8  38 C0 00 00 */	li r6, 0
/* 8062A6AC  38 E0 00 00 */	li r7, 0
/* 8062A6B0  39 00 00 00 */	li r8, 0
/* 8062A6B4  4B DD 9D FD */	bl PreRender_setup_savebuf
/* 8062A6B8  38 7F 1F B8 */	addi r3, r31, 0x1fb8
/* 8062A6BC  38 80 02 80 */	li r4, 0x280
/* 8062A6C0  38 A0 01 E0 */	li r5, 0x1e0
/* 8062A6C4  38 C0 00 00 */	li r6, 0
/* 8062A6C8  38 E0 00 00 */	li r7, 0
/* 8062A6CC  4B DD 9E 3D */	bl PreRender_setup_renderbuf
/* 8062A6D0  38 80 00 00 */	li r4, 0
/* 8062A6D4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8062A6D8  98 9F 20 D2 */	stb r4, 0x20d2(r31)
/* 8062A6DC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8062A6E0  38 00 00 01 */	li r0, 1
/* 8062A6E4  38 A0 00 01 */	li r5, 1
/* 8062A6E8  98 9F 20 D3 */	stb r4, 0x20d3(r31)
/* 8062A6EC  3C 83 00 02 */	addis r4, r3, 2
/* 8062A6F0  98 1F 20 D0 */	stb r0, 0x20d0(r31)
/* 8062A6F4  88 64 61 4F */	lbz r3, 0x614f(r4)
/* 8062A6F8  28 03 00 FF */	cmplwi r3, 0xff
/* 8062A6FC  41 82 00 10 */	beq lbl_8062A70C
/* 8062A700  38 00 00 FF */	li r0, 0xff
/* 8062A704  7C 65 1B 78 */	mr r5, r3
/* 8062A708  98 04 61 4F */	stb r0, 0x614f(r4)
lbl_8062A70C:
/* 8062A70C  98 BF 20 D1 */	stb r5, 0x20d1(r31)
/* 8062A710  38 7F 1D A0 */	addi r3, r31, 0x1da0
/* 8062A714  4B DA E2 39 */	bl func_803D894C
/* 8062A718  7F E3 FB 78 */	mr r3, r31
/* 8062A71C  4B DE 1A 81 */	bl func_8040C19C
/* 8062A720  3C 80 80 63 */	lis r4, play_main@ha /* 0x8062B288@ha */
/* 8062A724  3C 60 80 63 */	lis r3, play_cleanup@ha /* 0x8062A488@ha */
/* 8062A728  38 04 B2 88 */	addi r0, r4, play_main@l /* 0x8062B288@l */
/* 8062A72C  3B DF 23 18 */	addi r30, r31, 0x2318
/* 8062A730  90 1F 00 04 */	stw r0, 4(r31)
/* 8062A734  38 03 A4 88 */	addi r0, r3, play_cleanup@l /* 0x8062A488@l */
/* 8062A738  7F C3 F3 78 */	mr r3, r30
/* 8062A73C  90 1F 00 08 */	stw r0, 8(r31)
/* 8062A740  4B D7 6A D1 */	bl func_803A1210
/* 8062A744  7F C3 F3 78 */	mr r3, r30
/* 8062A748  38 80 00 07 */	li r4, 7
/* 8062A74C  4B D7 6C BD */	bl fbdemo_fade_settype
/* 8062A750  3C 80 A0 A1 */	lis r4, 0xA0A1 /* 0xA0A0A0FF@ha */
/* 8062A754  7F C3 F3 78 */	mr r3, r30
/* 8062A758  38 84 A0 FF */	addi r4, r4, 0xA0FF /* 0xA0A0A0FF@l */
/* 8062A75C  4B D7 6C B5 */	bl fbdemo_fade_setcolor_rgba8888
/* 8062A760  7F C3 F3 78 */	mr r3, r30
/* 8062A764  4B D7 6C 59 */	bl fbdemo_fade_startup
/* 8062A768  38 00 00 00 */	li r0, 0
/* 8062A76C  7F E3 FB 78 */	mr r3, r31
/* 8062A770  90 1F 23 FC */	stw r0, 0x23fc(r31)
/* 8062A774  4B DD AA D1 */	bl game_getFreeBytes
/* 8062A778  7C 60 1B 78 */	mr r0, r3
/* 8062A77C  38 7F 00 78 */	addi r3, r31, 0x78
/* 8062A780  7C 1E 03 78 */	mr r30, r0
/* 8062A784  7F C4 F3 78 */	mr r4, r30
/* 8062A788  4B DD A2 D1 */	bl func_80404A58
/* 8062A78C  38 03 00 0F */	addi r0, r3, 0xf
/* 8062A790  54 04 00 36 */	rlwinm r4, r0, 0, 0, 0x1b
/* 8062A794  7C 03 20 50 */	subf r0, r3, r4
/* 8062A798  7C 83 23 78 */	mr r3, r4
/* 8062A79C  7C 80 F0 50 */	subf r4, r0, r30
/* 8062A7A0  4B D9 1D CD */	bl zelda_InitArena
/* 8062A7A4  3C 60 80 1F */	lis r3, my_malloc_current@ha /* 0x801F68BC@ha */
/* 8062A7A8  38 83 68 BC */	addi r4, r3, my_malloc_current@l /* 0x801F68BC@l */
/* 8062A7AC  80 04 00 00 */	lwz r0, 0(r4)
/* 8062A7B0  28 00 00 00 */	cmplwi r0, 0
/* 8062A7B4  40 82 00 10 */	bne lbl_8062A7C4
/* 8062A7B8  3C 60 80 6D */	lis r3, data_806D4A98@ha /* 0x806D4A98@ha */
/* 8062A7BC  38 03 4A 98 */	addi r0, r3, data_806D4A98@l /* 0x806D4A98@l */
/* 8062A7C0  90 04 00 00 */	stw r0, 0(r4)
lbl_8062A7C4:
/* 8062A7C4  7F E3 FB 78 */	mr r3, r31
/* 8062A7C8  4B D7 94 C9 */	bl mFM_FieldInit
/* 8062A7CC  7F E3 FB 78 */	mr r3, r31
/* 8062A7D0  4B FF FD D1 */	bl VR_Box_ct
/* 8062A7D4  4B D9 D4 2D */	bl mMmd_MakeMuseumDisplayData
/* 8062A7D8  80 BF 20 98 */	lwz r5, 0x2098(r31)
/* 8062A7DC  7F E3 FB 78 */	mr r3, r31
/* 8062A7E0  38 9F 1D A8 */	addi r4, r31, 0x1da8
/* 8062A7E4  4B D4 A3 39 */	bl Actor_info_ct
/* 8062A7E8  3C 80 80 3C */	lis r4, none_proc1@ha /* 0x803BB54C@ha */
/* 8062A7EC  7F E3 FB 78 */	mr r3, r31
/* 8062A7F0  38 04 B5 4C */	addi r0, r4, none_proc1@l /* 0x803BB54C@l */
/* 8062A7F4  90 1F 23 F8 */	stw r0, 0x23f8(r31)
/* 8062A7F8  4B D9 4D 45 */	bl mMsg_ct
/* 8062A7FC  38 7F 20 AC */	addi r3, r31, 0x20ac
/* 8062A800  4B D7 2D 65 */	bl mEv_2nd_init
/* 8062A804  7F E3 FB 78 */	mr r3, r31
/* 8062A808  4B DC 77 09 */	bl mTD_player_keydata_init
/* 8062A80C  7F E3 FB 78 */	mr r3, r31
/* 8062A810  4B D8 6C E9 */	bl func_803B14F8
/* 8062A814  4B DA 08 81 */	bl mNtc_set_auto_nwrite_data
/* 8062A818  4B D4 C8 15 */	bl func_8037702C
/* 8062A81C  4B DC A5 05 */	bl func_803F4D20
/* 8062A820  4B FF F5 01 */	bl event_title_flag_off
/* 8062A824  4B D6 FF 09 */	bl mEA_GetCardDLProgram
/* 8062A828  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062A82C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8062A830  83 C1 00 08 */	lwz r30, 8(r1)
/* 8062A834  7C 08 03 A6 */	mtlr r0
/* 8062A838  38 21 00 10 */	addi r1, r1, 0x10
/* 8062A83C  4E 80 00 20 */	blr 
