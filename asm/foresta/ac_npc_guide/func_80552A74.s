lbl_80552A74:
/* 80552A74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80552A78  7C 08 02 A6 */	mflr r0
/* 80552A7C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80552A80  3C E0 80 6A */	lis r7, ct_data@ha /* 0x806A612C@ha */
/* 80552A84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80552A88  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80552A8C  3C A5 00 02 */	addis r5, r5, 2
/* 80552A90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80552A94  7C 7F 1B 78 */	mr r31, r3
/* 80552A98  93 C1 00 08 */	stw r30, 8(r1)
/* 80552A9C  7C 9E 23 78 */	mr r30, r4
/* 80552AA0  80 C5 60 4C */	lwz r6, 0x604c(r5)
/* 80552AA4  38 A7 61 2C */	addi r5, r7, ct_data@l /* 0x806A612C@l */
/* 80552AA8  81 86 00 D0 */	lwz r12, 0xd0(r6)
/* 80552AAC  7D 89 03 A6 */	mtctr r12
/* 80552AB0  4E 80 04 21 */	bctrl 
/* 80552AB4  38 A0 00 00 */	li r5, 0
/* 80552AB8  3C 60 80 65 */	lis r3, data_80649534@ha /* 0x80649534@ha */
/* 80552ABC  98 BF 08 30 */	stb r5, 0x830(r31)
/* 80552AC0  38 00 03 FF */	li r0, 0x3ff
/* 80552AC4  C0 03 95 34 */	lfs f0, data_80649534@l(r3)  /* 0x80649534@l */
/* 80552AC8  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000A011@ha */
/* 80552ACC  90 1F 08 40 */	stw r0, 0x840(r31)
/* 80552AD0  38 00 00 28 */	li r0, 0x28
/* 80552AD4  38 C0 00 01 */	li r6, 1
/* 80552AD8  38 7E 1D A8 */	addi r3, r30, 0x1da8
/* 80552ADC  90 1F 09 A4 */	stw r0, 0x9a4(r31)
/* 80552AE0  38 00 FF FF */	li r0, -1
/* 80552AE4  38 84 A0 11 */	addi r4, r4, 0xA011 /* 0x0000A011@l */
/* 80552AE8  90 BF 09 C4 */	stw r5, 0x9c4(r31)
/* 80552AEC  38 A0 00 05 */	li r5, 5
/* 80552AF0  D0 1F 08 2C */	stfs f0, 0x82c(r31)
/* 80552AF4  98 DF 09 AB */	stb r6, 0x9ab(r31)
/* 80552AF8  90 1F 08 F4 */	stw r0, 0x8f4(r31)
/* 80552AFC  4B E2 32 45 */	bl Actor_info_fgName_search
/* 80552B00  90 7F 09 C0 */	stw r3, 0x9c0(r31)
/* 80552B04  3C 60 80 65 */	lis r3, lit_482@ha /* 0x80649538@ha */
/* 80552B08  38 83 95 38 */	addi r4, r3, lit_482@l /* 0x80649538@l */
/* 80552B0C  38 00 00 01 */	li r0, 1
/* 80552B10  98 1F 01 08 */	stb r0, 0x108(r31)
/* 80552B14  7F C3 F3 78 */	mr r3, r30
/* 80552B18  C0 04 00 00 */	lfs f0, 0(r4)
/* 80552B1C  38 80 00 00 */	li r4, 0
/* 80552B20  38 A0 00 00 */	li r5, 0
/* 80552B24  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 80552B28  4B E8 82 5D */	bl mPlib_request_main_demo_wait_type1
/* 80552B2C  7F C3 F3 78 */	mr r3, r30
/* 80552B30  4B E8 6B 11 */	bl get_player_actor_withoutCheck
/* 80552B34  28 03 00 00 */	cmplwi r3, 0
/* 80552B38  41 82 00 10 */	beq lbl_80552B48
/* 80552B3C  80 03 00 20 */	lwz r0, 0x20(r3)
/* 80552B40  60 00 00 80 */	ori r0, r0, 0x80
/* 80552B44  90 03 00 20 */	stw r0, 0x20(r3)
lbl_80552B48:
/* 80552B48  7F E3 FB 78 */	mr r3, r31
/* 80552B4C  7F C4 F3 78 */	mr r4, r30
/* 80552B50  38 A0 00 00 */	li r5, 0
/* 80552B54  48 00 1D B5 */	bl aNGD_setupAction
/* 80552B58  38 60 00 8D */	li r3, 0x8d
/* 80552B5C  48 0D B3 A9 */	bl sAdo_SysLevStart
/* 80552B60  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80552B64  38 00 00 00 */	li r0, 0
/* 80552B68  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 80552B6C  38 60 00 01 */	li r3, 1
/* 80552B70  3C 84 00 02 */	addis r4, r4, 2
/* 80552B74  98 04 65 22 */	stb r0, 0x6522(r4)
/* 80552B78  48 0D B9 79 */	bl sAdo_TrgSeEcho
/* 80552B7C  38 60 00 01 */	li r3, 1
/* 80552B80  48 0D B9 91 */	bl sAdo_LevSeEcho
/* 80552B84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80552B88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80552B8C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80552B90  7C 08 03 A6 */	mtlr r0
/* 80552B94  38 21 00 10 */	addi r1, r1, 0x10
/* 80552B98  4E 80 00 20 */	blr 
