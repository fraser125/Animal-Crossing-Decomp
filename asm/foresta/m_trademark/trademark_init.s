lbl_8062BDF0:
/* 8062BDF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062BDF4  7C 08 02 A6 */	mflr r0
/* 8062BDF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062BDFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8062BE00  7C 7F 1B 78 */	mr r31, r3
/* 8062BE04  93 C1 00 08 */	stw r30, 8(r1)
/* 8062BE08  83 C3 00 00 */	lwz r30, 0(r3)
/* 8062BE0C  4B D6 9C 31 */	bl func_80395A3C
/* 8062BE10  38 60 00 00 */	li r3, 0
/* 8062BE14  4B D7 F5 41 */	bl mFI_SetClimate
/* 8062BE18  3C 80 80 63 */	lis r4, trademark_main@ha /* 0x8062BCE8@ha */
/* 8062BE1C  3C 60 80 63 */	lis r3, trademark_cleanup@ha /* 0x8062BD78@ha */
/* 8062BE20  38 04 BC E8 */	addi r0, r4, trademark_main@l /* 0x8062BCE8@l */
/* 8062BE24  7F C4 F3 78 */	mr r4, r30
/* 8062BE28  90 1F 00 04 */	stw r0, 4(r31)
/* 8062BE2C  38 03 BD 78 */	addi r0, r3, trademark_cleanup@l /* 0x8062BD78@l */
/* 8062BE30  38 7F 00 E0 */	addi r3, r31, 0xe0
/* 8062BE34  90 1F 00 08 */	stw r0, 8(r31)
/* 8062BE38  4B DC 7F 9D */	bl initView
/* 8062BE3C  7F E3 FB 78 */	mr r3, r31
/* 8062BE40  4B DE 03 5D */	bl func_8040C19C
/* 8062BE44  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FF00@ha */
/* 8062BE48  3C 60 80 65 */	lis r3, data_8064D0D4@ha /* 0x8064D0D4@ha */
/* 8062BE4C  38 04 FF 00 */	addi r0, r4, 0xFF00 /* 0x0000FF00@l */
/* 8062BE50  3D 1F 00 02 */	addis r8, r31, 2
/* 8062BE54  90 08 5A 58 */	stw r0, 0x5a58(r8)
/* 8062BE58  38 A3 D0 D4 */	addi r5, r3, data_8064D0D4@l /* 0x8064D0D4@l */
/* 8062BE5C  38 E0 00 00 */	li r7, 0
/* 8062BE60  3C 60 80 65 */	lis r3, lit_601@ha /* 0x8064D0D8@ha */
/* 8062BE64  B0 E8 5A 5E */	sth r7, 0x5a5e(r8)
/* 8062BE68  38 83 D0 D8 */	addi r4, r3, lit_601@l /* 0x8064D0D8@l */
/* 8062BE6C  38 00 00 3C */	li r0, 0x3c
/* 8062BE70  38 C0 00 10 */	li r6, 0x10
/* 8062BE74  B0 08 5A 5C */	sth r0, 0x5a5c(r8)
/* 8062BE78  38 00 13 D0 */	li r0, 0x13d0
/* 8062BE7C  C0 25 00 00 */	lfs f1, 0(r5)
/* 8062BE80  3C 60 80 6D */	lis r3, data_806D4858@ha /* 0x806D4858@ha */
/* 8062BE84  B0 C8 5A 60 */	sth r6, 0x5a60(r8)
/* 8062BE88  C0 04 00 00 */	lfs f0, 0(r4)
/* 8062BE8C  90 FF 02 54 */	stw r7, 0x254(r31)
/* 8062BE90  90 FF 02 10 */	stw r7, 0x210(r31)
/* 8062BE94  98 E8 5A 66 */	stb r7, 0x5a66(r8)
/* 8062BE98  D0 3F 02 00 */	stfs f1, 0x200(r31)
/* 8062BE9C  D0 3F 02 04 */	stfs f1, 0x204(r31)
/* 8062BEA0  D0 3F 02 08 */	stfs f1, 0x208(r31)
/* 8062BEA4  D0 1F 02 0C */	stfs f0, 0x20c(r31)
/* 8062BEA8  B0 E8 5A 62 */	sth r7, 0x5a62(r8)
/* 8062BEAC  B0 08 5A 64 */	sth r0, 0x5a64(r8)
/* 8062BEB0  98 E8 5A 67 */	stb r7, 0x5a67(r8)
/* 8062BEB4  98 E8 5A 68 */	stb r7, 0x5a68(r8)
/* 8062BEB8  98 E8 5A 69 */	stb r7, 0x5a69(r8)
/* 8062BEBC  80 03 48 58 */	lwz r0, data_806D4858@l(r3)  /* 0x806D4858@l */
/* 8062BEC0  2C 00 00 00 */	cmpwi r0, 0
/* 8062BEC4  41 82 00 0C */	beq lbl_8062BED0
/* 8062BEC8  38 00 00 05 */	li r0, 5
/* 8062BECC  98 08 5A 66 */	stb r0, 0x5a66(r8)
lbl_8062BED0:
/* 8062BED0  38 60 00 01 */	li r3, 1
/* 8062BED4  4B DD 8F 61 */	bl SetGameFrame
/* 8062BED8  38 60 00 00 */	li r3, 0
/* 8062BEDC  4B D4 44 35 */	bl func_80370310
/* 8062BEE0  38 60 00 01 */	li r3, 1
/* 8062BEE4  4B 9D A9 D1 */	bl JW_SetLogoMode
/* 8062BEE8  4B D9 35 F1 */	bl mMsg_aram_init
/* 8062BEEC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8062BEF0  38 80 00 00 */	li r4, 0
/* 8062BEF4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8062BEF8  38 00 FF FF */	li r0, -1
/* 8062BEFC  3C 63 00 02 */	addis r3, r3, 2
/* 8062BF00  98 83 60 03 */	stb r4, 0x6003(r3)
/* 8062BF04  90 83 60 08 */	stw r4, 0x6008(r3)
/* 8062BF08  90 03 66 A4 */	stw r0, 0x66a4(r3)
/* 8062BF0C  4B DA 59 4D */	bl mNpc_ClearCacheName
/* 8062BF10  4B DA 47 59 */	bl mNpc_ClearInAnimal
/* 8062BF14  4B DA 4E B5 */	bl mNpc_FirstClearGoodbyMail
/* 8062BF18  4B DB 71 B9 */	bl mQst_ClearGrabItemInfo
/* 8062BF1C  4B DA 84 B9 */	bl mNpc_ClearIslandNpcRoomData
/* 8062BF20  4B DC E9 AD */	bl mCD_InitAll
/* 8062BF24  4B D8 7C AD */	bl func_803B3BD0
/* 8062BF28  4B D4 C9 A5 */	bl mBI_ct
/* 8062BF2C  4B D8 34 79 */	bl func_803AF3A4
/* 8062BF30  38 60 00 00 */	li r3, 0
/* 8062BF34  4B D5 08 ED */	bl mBGMPsComp_scene_mode
/* 8062BF38  4B DD 7F 49 */	bl mVibctl_init0
/* 8062BF3C  4B D8 08 09 */	bl mFRm_clear_err_info
/* 8062BF40  4B DC 5F 89 */	bl mTD_demono_get
/* 8062BF44  4B D6 EF 85 */	bl mEv_SetTitleDemo
/* 8062BF48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062BF4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8062BF50  83 C1 00 08 */	lwz r30, 8(r1)
/* 8062BF54  7C 08 03 A6 */	mtlr r0
/* 8062BF58  38 21 00 10 */	addi r1, r1, 0x10
/* 8062BF5C  4E 80 00 20 */	blr 
