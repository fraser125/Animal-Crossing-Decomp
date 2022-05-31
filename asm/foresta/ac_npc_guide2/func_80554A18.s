lbl_80554A18:
/* 80554A18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80554A1C  7C 08 02 A6 */	mflr r0
/* 80554A20  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80554A24  3C E0 80 6A */	lis r7, ct_data@ha /* 0x806A642C@ha */
/* 80554A28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80554A2C  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80554A30  3C A5 00 02 */	addis r5, r5, 2
/* 80554A34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80554A38  7C 7F 1B 78 */	mr r31, r3
/* 80554A3C  93 C1 00 08 */	stw r30, 8(r1)
/* 80554A40  7C 9E 23 78 */	mr r30, r4
/* 80554A44  80 C5 60 4C */	lwz r6, 0x604c(r5)
/* 80554A48  38 A7 64 2C */	addi r5, r7, ct_data@l /* 0x806A642C@l */
/* 80554A4C  81 86 00 D0 */	lwz r12, 0xd0(r6)
/* 80554A50  7D 89 03 A6 */	mtctr r12
/* 80554A54  4E 80 04 21 */	bctrl 
/* 80554A58  38 A0 00 00 */	li r5, 0
/* 80554A5C  3C 60 80 65 */	lis r3, data_806495B4@ha /* 0x806495B4@ha */
/* 80554A60  98 BF 08 30 */	stb r5, 0x830(r31)
/* 80554A64  38 00 03 FF */	li r0, 0x3ff
/* 80554A68  C0 03 95 B4 */	lfs f0, data_806495B4@l(r3)  /* 0x806495B4@l */
/* 80554A6C  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000A011@ha */
/* 80554A70  90 1F 08 40 */	stw r0, 0x840(r31)
/* 80554A74  38 00 00 28 */	li r0, 0x28
/* 80554A78  38 C0 00 01 */	li r6, 1
/* 80554A7C  38 7E 1D A8 */	addi r3, r30, 0x1da8
/* 80554A80  90 1F 09 A4 */	stw r0, 0x9a4(r31)
/* 80554A84  38 00 FF FF */	li r0, -1
/* 80554A88  38 84 A0 11 */	addi r4, r4, 0xA011 /* 0x0000A011@l */
/* 80554A8C  90 BF 09 C4 */	stw r5, 0x9c4(r31)
/* 80554A90  38 A0 00 05 */	li r5, 5
/* 80554A94  D0 1F 08 2C */	stfs f0, 0x82c(r31)
/* 80554A98  98 DF 09 AB */	stb r6, 0x9ab(r31)
/* 80554A9C  90 1F 08 F4 */	stw r0, 0x8f4(r31)
/* 80554AA0  4B E2 12 A1 */	bl Actor_info_fgName_search
/* 80554AA4  90 7F 09 C0 */	stw r3, 0x9c0(r31)
/* 80554AA8  3C 60 80 65 */	lis r3, lit_469@ha /* 0x806495B8@ha */
/* 80554AAC  38 83 95 B8 */	addi r4, r3, lit_469@l /* 0x806495B8@l */
/* 80554AB0  38 00 00 01 */	li r0, 1
/* 80554AB4  98 1F 01 08 */	stb r0, 0x108(r31)
/* 80554AB8  7F C3 F3 78 */	mr r3, r30
/* 80554ABC  C0 04 00 00 */	lfs f0, 0(r4)
/* 80554AC0  38 80 00 00 */	li r4, 0
/* 80554AC4  38 A0 00 00 */	li r5, 0
/* 80554AC8  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 80554ACC  4B E8 62 B9 */	bl mPlib_request_main_demo_wait_type1
/* 80554AD0  7F C3 F3 78 */	mr r3, r30
/* 80554AD4  4B E8 4B 6D */	bl get_player_actor_withoutCheck
/* 80554AD8  28 03 00 00 */	cmplwi r3, 0
/* 80554ADC  41 82 00 10 */	beq lbl_80554AEC
/* 80554AE0  80 03 00 20 */	lwz r0, 0x20(r3)
/* 80554AE4  60 00 00 80 */	ori r0, r0, 0x80
/* 80554AE8  90 03 00 20 */	stw r0, 0x20(r3)
lbl_80554AEC:
/* 80554AEC  7F E3 FB 78 */	mr r3, r31
/* 80554AF0  7F C4 F3 78 */	mr r4, r30
/* 80554AF4  38 A0 00 00 */	li r5, 0
/* 80554AF8  48 00 1A 25 */	bl aNG2_setupAction
/* 80554AFC  38 60 00 8D */	li r3, 0x8d
/* 80554B00  48 0D 94 05 */	bl sAdo_SysLevStart
/* 80554B04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80554B08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80554B0C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80554B10  7C 08 03 A6 */	mtlr r0
/* 80554B14  38 21 00 10 */	addi r1, r1, 0x10
/* 80554B18  4E 80 00 20 */	blr 
