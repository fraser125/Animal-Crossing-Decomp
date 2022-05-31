lbl_805E2500:
/* 805E2500  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805E2504  7C 08 02 A6 */	mflr r0
/* 805E2508  90 01 00 24 */	stw r0, 0x24(r1)
/* 805E250C  39 61 00 20 */	addi r11, r1, 0x20
/* 805E2510  4B AB 89 C1 */	bl func_8009AED0
/* 805E2514  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805E2518  7C 9E 23 78 */	mr r30, r4
/* 805E251C  80 84 00 00 */	lwz r4, 0(r4)
/* 805E2520  80 63 09 88 */	lwz r3, 0x988(r3)
/* 805E2524  80 04 02 D4 */	lwz r0, 0x2d4(r4)
/* 805E2528  3B E3 02 24 */	addi r31, r3, 0x224
/* 805E252C  80 63 02 3C */	lwz r3, 0x23c(r3)
/* 805E2530  88 63 00 01 */	lbz r3, 1(r3)
/* 805E2534  54 63 30 32 */	slwi r3, r3, 6
/* 805E2538  7C 03 00 51 */	subf. r0, r3, r0
/* 805E253C  90 04 02 D4 */	stw r0, 0x2d4(r4)
/* 805E2540  7C 1D 03 78 */	mr r29, r0
/* 805E2544  41 82 00 58 */	beq lbl_805E259C
/* 805E2548  83 9E 00 00 */	lwz r28, 0(r30)
/* 805E254C  3C 60 80 66 */	lis r3, data_8065F050@ha /* 0x8065F050@ha */
/* 805E2550  3C 80 80 6D */	lis r4, dummy_eye@ha /* 0x806CD460@ha */
/* 805E2554  3C A0 80 6D */	lis r5, dummy_light_direction@ha /* 0x806CD46C@ha */
/* 805E2558  80 FC 02 D0 */	lwz r7, 0x2d0(r28)
/* 805E255C  38 63 F0 50 */	addi r3, r3, data_8065F050@l /* 0x8065F050@l */
/* 805E2560  38 84 D4 60 */	addi r4, r4, dummy_eye@l /* 0x806CD460@l */
/* 805E2564  38 A5 D4 6C */	addi r5, r5, dummy_light_direction@l /* 0x806CD46C@l */
/* 805E2568  7F 86 E3 78 */	mr r6, r28
/* 805E256C  39 01 00 08 */	addi r8, r1, 8
/* 805E2570  4B D9 38 0D */	bl HiliteReflect_new
/* 805E2574  3C A0 80 5E */	lis r5, mIV_pl_shape_item_draw_balloon_Before@ha /* 0x805E2450@ha */
/* 805E2578  3C 80 80 5E */	lis r4, mIV_pl_shape_item_draw_balloon_After@ha /* 0x805E24A8@ha */
/* 805E257C  90 7C 02 D0 */	stw r3, 0x2d0(r28)
/* 805E2580  38 C5 24 50 */	addi r6, r5, mIV_pl_shape_item_draw_balloon_Before@l /* 0x805E2450@l */
/* 805E2584  38 E4 24 A8 */	addi r7, r4, mIV_pl_shape_item_draw_balloon_After@l /* 0x805E24A8@l */
/* 805E2588  7F C3 F3 78 */	mr r3, r30
/* 805E258C  7F E4 FB 78 */	mr r4, r31
/* 805E2590  7F A5 EB 78 */	mr r5, r29
/* 805E2594  39 00 00 00 */	li r8, 0
/* 805E2598  4B D8 F1 A1 */	bl cKF_Si3_draw_R_SV
lbl_805E259C:
/* 805E259C  39 61 00 20 */	addi r11, r1, 0x20
/* 805E25A0  4B AB 89 7D */	bl func_8009AF1C
/* 805E25A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805E25A8  7C 08 03 A6 */	mtlr r0
/* 805E25AC  38 21 00 20 */	addi r1, r1, 0x20
/* 805E25B0  4E 80 00 20 */	blr 
