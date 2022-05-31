lbl_805939E0:
/* 805939E0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805939E4  7C 08 02 A6 */	mflr r0
/* 805939E8  90 01 00 34 */	stw r0, 0x34(r1)
/* 805939EC  39 61 00 30 */	addi r11, r1, 0x30
/* 805939F0  4B B0 74 E1 */	bl func_8009AED0
/* 805939F4  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805939F8  7C 9D 23 78 */	mr r29, r4
/* 805939FC  38 85 85 38 */	addi r4, r5, common_data@l /* 0x81138538@l */
/* 80593A00  7C 7C 1B 78 */	mr r28, r3
/* 80593A04  3C 64 00 02 */	addis r3, r4, 2
/* 80593A08  38 80 25 30 */	li r4, 0x2530
/* 80593A0C  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 80593A10  38 A0 00 00 */	li r5, 0
/* 80593A14  4B E4 CD 5D */	bl mPr_GetPossessionItemIdxWithCond
/* 80593A18  2C 03 FF FF */	cmpwi r3, -1
/* 80593A1C  40 82 00 40 */	bne lbl_80593A5C
/* 80593A20  4B AC 92 D5 */	bl fqrand
/* 80593A24  3C 60 80 65 */	lis r3, lit_676@ha /* 0x80649D00@ha */
/* 80593A28  C0 03 9D 00 */	lfs f0, lit_676@l(r3)  /* 0x80649D00@l */
/* 80593A2C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80593A30  FC 00 00 1E */	fctiwz f0, f0
/* 80593A34  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80593A38  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80593A3C  4B E2 BC 6D */	bl func_803BF6A8
/* 80593A40  38 9F 3C 02 */	addi r4, r31, 0x3c02
/* 80593A44  4B E2 C5 81 */	bl mMsg_Set_continue_msg_num
/* 80593A48  7F 83 E3 78 */	mr r3, r28
/* 80593A4C  7F A4 EB 78 */	mr r4, r29
/* 80593A50  38 A0 00 00 */	li r5, 0
/* 80593A54  48 00 03 31 */	bl aETKY_SetupTalkStat
/* 80593A58  48 00 00 64 */	b lbl_80593ABC
lbl_80593A5C:
/* 80593A5C  8B FC 09 B0 */	lbz r31, 0x9b0(r28)
/* 80593A60  3C 60 80 65 */	lis r3, data_80649CB4@ha /* 0x80649CB4@ha */
/* 80593A64  38 83 9C B4 */	addi r4, r3, data_80649CB4@l /* 0x80649CB4@l */
/* 80593A68  57 E0 0D FC */	rlwinm r0, r31, 1, 0x17, 0x1e
/* 80593A6C  38 61 00 08 */	addi r3, r1, 8
/* 80593A70  7C 84 02 2E */	lhzx r4, r4, r0
/* 80593A74  7C 9E 23 78 */	mr r30, r4
/* 80593A78  4B E2 1F 2D */	bl mIN_copy_name_str
/* 80593A7C  4B E2 BC 2D */	bl func_803BF6A8
/* 80593A80  38 9F 3C 11 */	addi r4, r31, 0x3c11
/* 80593A84  4B E2 C5 41 */	bl mMsg_Set_continue_msg_num
/* 80593A88  7F C3 F3 78 */	mr r3, r30
/* 80593A8C  4B E2 20 8D */	bl mIN_get_item_article
/* 80593A90  7C 7F 1B 78 */	mr r31, r3
/* 80593A94  4B E2 BC 15 */	bl func_803BF6A8
/* 80593A98  7F E7 FB 78 */	mr r7, r31
/* 80593A9C  38 A1 00 08 */	addi r5, r1, 8
/* 80593AA0  38 80 00 00 */	li r4, 0
/* 80593AA4  38 C0 00 10 */	li r6, 0x10
/* 80593AA8  4B E2 C3 A9 */	bl mMsg_Set_item_str_art
/* 80593AAC  7F 83 E3 78 */	mr r3, r28
/* 80593AB0  7F A4 EB 78 */	mr r4, r29
/* 80593AB4  38 A0 00 06 */	li r5, 6
/* 80593AB8  48 00 02 CD */	bl aETKY_SetupTalkStat
lbl_80593ABC:
/* 80593ABC  39 61 00 30 */	addi r11, r1, 0x30
/* 80593AC0  4B B0 74 5D */	bl func_8009AF1C
/* 80593AC4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80593AC8  7C 08 03 A6 */	mtlr r0
/* 80593ACC  38 21 00 30 */	addi r1, r1, 0x30
/* 80593AD0  4E 80 00 20 */	blr 
