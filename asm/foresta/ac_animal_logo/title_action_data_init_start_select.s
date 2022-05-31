lbl_804118BC:
/* 804118BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804118C0  7C 08 02 A6 */	mflr r0
/* 804118C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804118C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804118CC  93 C1 00 08 */	stw r30, 8(r1)
/* 804118D0  7C 7E 1B 78 */	mr r30, r3
/* 804118D4  4B FE C0 C9 */	bl mCD_LoadLand
/* 804118D8  38 60 00 00 */	li r3, 0
/* 804118DC  4B FF 1E 91 */	bl mCPk_InitPak
/* 804118E0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804118E4  38 00 00 00 */	li r0, 0
/* 804118E8  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 804118EC  3C 64 00 02 */	addis r3, r4, 2
/* 804118F0  38 84 00 20 */	addi r4, r4, 0x20
/* 804118F4  98 03 60 03 */	stb r0, 0x6003(r3)
/* 804118F8  90 83 61 3C */	stw r4, 0x613c(r3)
/* 804118FC  4B FE 09 F9 */	bl mTD_rtc_reserve
/* 80411900  4B FE 1A F1 */	bl mTM_clear_renew_is
/* 80411904  4B FB ED 8D */	bl mNpc_GetInAnimalP
/* 80411908  4B FB AB 35 */	bl mNpc_ClearAnimalInfo
/* 8041190C  4B FF FE 69 */	bl decide_next_scene_no
/* 80411910  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80411914  90 7E 20 08 */	stw r3, 0x2008(r30)
/* 80411918  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 8041191C  38 00 00 01 */	li r0, 1
/* 80411920  3F E3 00 02 */	addis r31, r3, 2
/* 80411924  83 DF 61 30 */	lwz r30, 0x6130(r31)
/* 80411928  90 1F 61 30 */	stw r0, 0x6130(r31)
/* 8041192C  4B FE 23 E9 */	bl mTM_rtcTime_limit_check
/* 80411930  93 DF 61 30 */	stw r30, 0x6130(r31)
/* 80411934  4B F8 8F F5 */	bl mEv_ClearEventInfo
/* 80411938  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8041193C  38 C0 FF FF */	li r6, -1
/* 80411940  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80411944  38 80 00 00 */	li r4, 0
/* 80411948  3C A3 00 02 */	addis r5, r3, 2
/* 8041194C  38 00 00 01 */	li r0, 1
/* 80411950  90 C5 66 A4 */	stw r6, 0x66a4(r5)
/* 80411954  3C 63 00 03 */	addis r3, r3, 3
/* 80411958  90 83 85 30 */	stw r4, -0x7ad0(r3)
/* 8041195C  98 05 65 21 */	stb r0, 0x6521(r5)
/* 80411960  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80411964  83 C1 00 08 */	lwz r30, 8(r1)
/* 80411968  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041196C  7C 08 03 A6 */	mtlr r0
/* 80411970  38 21 00 10 */	addi r1, r1, 0x10
/* 80411974  4E 80 00 20 */	blr 
