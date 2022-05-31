lbl_804F2A80:
/* 804F2A80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F2A84  7C 08 02 A6 */	mflr r0
/* 804F2A88  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F2A8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F2A90  7C 9F 23 78 */	mr r31, r4
/* 804F2A94  93 C1 00 08 */	stw r30, 8(r1)
/* 804F2A98  7C 7E 1B 78 */	mr r30, r3
/* 804F2A9C  4B FE DE A5 */	bl Player_actor_Get_ItemKind_from_submenu
/* 804F2AA0  3C A0 80 64 */	lis r5, lit_604@ha /* 0x80646568@ha */
/* 804F2AA4  7C 64 07 74 */	extsb r4, r3
/* 804F2AA8  C0 05 65 68 */	lfs f0, lit_604@l(r5)  /* 0x80646568@l */
/* 804F2AAC  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804F2AB0  38 C3 83 54 */	addi r6, r3, lit_7381@l /* 0x80648354@l */
/* 804F2AB4  3C A0 80 64 */	lis r5, lit_950@ha /* 0x806468F4@ha */
/* 804F2AB8  C0 26 00 00 */	lfs f1, 0(r6)
/* 804F2ABC  7F C3 F3 78 */	mr r3, r30
/* 804F2AC0  C0 45 68 F4 */	lfs f2, lit_950@l(r5)  /* 0x806468F4@l */
/* 804F2AC4  38 A0 00 07 */	li r5, 7
/* 804F2AC8  D0 1E 0D 18 */	stfs f0, 0xd18(r30)
/* 804F2ACC  38 C0 00 03 */	li r6, 3
/* 804F2AD0  38 E0 00 01 */	li r7, 1
/* 804F2AD4  4B FE 75 49 */	bl Player_actor_SetupItem_Base2
/* 804F2AD8  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804F2ADC  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804F2AE0  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804F2AE4  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804F2AE8  C0 25 00 00 */	lfs f1, 0(r5)
/* 804F2AEC  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804F2AF0  C0 83 83 54 */	lfs f4, lit_7381@l(r3)  /* 0x80648354@l */
/* 804F2AF4  7F C3 F3 78 */	mr r3, r30
/* 804F2AF8  FC 40 08 90 */	fmr f2, f1
/* 804F2AFC  7F E4 FB 78 */	mr r4, r31
/* 804F2B00  38 A0 00 1E */	li r5, 0x1e
/* 804F2B04  38 C0 00 1E */	li r6, 0x1e
/* 804F2B08  38 E0 00 00 */	li r7, 0
/* 804F2B0C  39 00 00 00 */	li r8, 0
/* 804F2B10  4B FE 3D 01 */	bl Player_actor_InitAnimation_Base2
/* 804F2B14  7F C3 F3 78 */	mr r3, r30
/* 804F2B18  7F E4 FB 78 */	mr r4, r31
/* 804F2B1C  4B FE 2D DD */	bl Player_actor_setup_main_Base
/* 804F2B20  7F C3 F3 78 */	mr r3, r30
/* 804F2B24  4B FE 4E 59 */	bl Player_actor_Reset_Item_net_catch_request_table
/* 804F2B28  38 00 00 00 */	li r0, 0
/* 804F2B2C  7F C3 F3 78 */	mr r3, r30
/* 804F2B30  90 1E 0E 70 */	stw r0, 0xe70(r30)
/* 804F2B34  98 1E 0E 74 */	stb r0, 0xe74(r30)
/* 804F2B38  98 1E 0E 75 */	stb r0, 0xe75(r30)
/* 804F2B3C  4B FE C8 D1 */	bl Player_actor_sound_AMI_FURI
/* 804F2B40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F2B44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F2B48  83 C1 00 08 */	lwz r30, 8(r1)
/* 804F2B4C  7C 08 03 A6 */	mtlr r0
/* 804F2B50  38 21 00 10 */	addi r1, r1, 0x10
/* 804F2B54  4E 80 00 20 */	blr 
