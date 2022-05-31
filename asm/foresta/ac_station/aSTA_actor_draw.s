lbl_805BBAF0:
/* 805BBAF0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805BBAF4  7C 08 02 A6 */	mflr r0
/* 805BBAF8  90 01 00 34 */	stw r0, 0x34(r1)
/* 805BBAFC  39 61 00 30 */	addi r11, r1, 0x30
/* 805BBB00  4B AD F3 C9 */	bl func_8009AEC8
/* 805BBB04  7C 7B 1B 78 */	mr r27, r3
/* 805BBB08  83 E4 00 00 */	lwz r31, 0(r4)
/* 805BBB0C  80 63 00 28 */	lwz r3, 0x28(r3)
/* 805BBB10  7C 9C 23 78 */	mr r28, r4
/* 805BBB14  80 1B 00 2C */	lwz r0, 0x2c(r27)
/* 805BBB18  3B DB 01 78 */	addi r30, r27, 0x178
/* 805BBB1C  90 61 00 08 */	stw r3, 8(r1)
/* 805BBB20  90 01 00 0C */	stw r0, 0xc(r1)
/* 805BBB24  80 1B 00 30 */	lwz r0, 0x30(r27)
/* 805BBB28  90 01 00 10 */	stw r0, 0x10(r1)
/* 805BBB2C  80 7B 01 90 */	lwz r3, 0x190(r27)
/* 805BBB30  80 1F 02 D4 */	lwz r0, 0x2d4(r31)
/* 805BBB34  88 63 00 01 */	lbz r3, 1(r3)
/* 805BBB38  54 63 30 32 */	slwi r3, r3, 6
/* 805BBB3C  7C 03 00 51 */	subf. r0, r3, r0
/* 805BBB40  90 1F 02 D4 */	stw r0, 0x2d4(r31)
/* 805BBB44  7C 1D 03 78 */	mr r29, r0
/* 805BBB48  41 82 01 14 */	beq lbl_805BBC5C
/* 805BBB4C  3C 60 80 65 */	lis r3, lit_505@ha /* 0x8064AB40@ha */
/* 805BBB50  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 805BBB54  38 83 AB 40 */	addi r4, r3, lit_505@l /* 0x8064AB40@l */
/* 805BBB58  38 7C 1D 90 */	addi r3, r28, 0x1d90
/* 805BBB5C  C0 04 00 00 */	lfs f0, 0(r4)
/* 805BBB60  EC 01 00 2A */	fadds f0, f1, f0
/* 805BBB64  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805BBB68  80 9C 00 00 */	lwz r4, 0(r28)
/* 805BBB6C  4B E0 05 D1 */	bl Global_light_read
/* 805BBB70  80 9C 1D 90 */	lwz r4, 0x1d90(r28)
/* 805BBB74  7C 7A 1B 78 */	mr r26, r3
/* 805BBB78  38 A1 00 08 */	addi r5, r1, 8
/* 805BBB7C  4B E0 03 B5 */	bl LightsN_list_check
/* 805BBB80  80 9C 00 00 */	lwz r4, 0(r28)
/* 805BBB84  7F 43 D3 78 */	mr r3, r26
/* 805BBB88  4B DF FE 71 */	bl LightsN_disp
/* 805BBB8C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805BBB90  80 1B 02 AC */	lwz r0, 0x2ac(r27)
/* 805BBB94  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805BBB98  3C 83 00 02 */	addis r4, r3, 2
/* 805BBB9C  7C 03 07 34 */	extsh r3, r0
/* 805BBBA0  80 84 60 98 */	lwz r4, 0x6098(r4)
/* 805BBBA4  81 84 00 A4 */	lwz r12, 0xa4(r4)
/* 805BBBA8  7D 89 03 A6 */	mtctr r12
/* 805BBBAC  4E 80 04 21 */	bctrl 
/* 805BBBB0  7C 7A 1B 78 */	mr r26, r3
/* 805BBBB4  7F E3 FB 78 */	mr r3, r31
/* 805BBBB8  4B E2 95 F1 */	bl _texture_z_light_fog_prim_npc
/* 805BBBBC  80 FF 02 D0 */	lwz r7, 0x2d0(r31)
/* 805BBBC0  3C A0 DB 06 */	lis r5, 0xDB06 /* 0xDB060020@ha */
/* 805BBBC4  38 05 00 20 */	addi r0, r5, 0x0020 /* 0xDB060020@l */
/* 805BBBC8  3C 80 80 5C */	lis r4, func_805BBA6C@ha /* 0x805BBA6C@ha */
/* 805BBBCC  90 07 00 00 */	stw r0, 0(r7)
/* 805BBBD0  7C E8 3B 78 */	mr r8, r7
/* 805BBBD4  38 C4 BA 6C */	addi r6, r4, func_805BBA6C@l /* 0x805BBA6C@l */
/* 805BBBD8  38 E7 00 08 */	addi r7, r7, 8
/* 805BBBDC  93 48 00 04 */	stw r26, 4(r8)
/* 805BBBE0  7F 83 E3 78 */	mr r3, r28
/* 805BBBE4  7F C4 F3 78 */	mr r4, r30
/* 805BBBE8  7F A5 EB 78 */	mr r5, r29
/* 805BBBEC  90 FF 02 D0 */	stw r7, 0x2d0(r31)
/* 805BBBF0  7F 68 DB 78 */	mr r8, r27
/* 805BBBF4  38 E0 00 00 */	li r7, 0
/* 805BBBF8  4B DB 5B 41 */	bl cKF_Si3_draw_R_SV
/* 805BBBFC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805BBC00  80 9B 02 A8 */	lwz r4, 0x2a8(r27)
/* 805BBC04  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805BBC08  3C A0 80 6C */	lis r5, shadow_low_data@ha /* 0x806C69A0@ha */
/* 805BBC0C  3F 63 00 02 */	addis r27, r3, 2
/* 805BBC10  38 04 FF F3 */	addi r0, r4, -13
/* 805BBC14  80 9B 60 80 */	lwz r4, 0x6080(r27)
/* 805BBC18  54 1A 10 3A */	slwi r26, r0, 2
/* 805BBC1C  38 C5 69 A0 */	addi r6, r5, shadow_low_data@l /* 0x806C69A0@l */
/* 805BBC20  7F 83 E3 78 */	mr r3, r28
/* 805BBC24  81 84 00 04 */	lwz r12, 4(r4)
/* 805BBC28  38 A0 00 00 */	li r5, 0
/* 805BBC2C  7C 86 D0 2E */	lwzx r4, r6, r26
/* 805BBC30  7D 89 03 A6 */	mtctr r12
/* 805BBC34  4E 80 04 21 */	bctrl 
/* 805BBC38  80 9B 60 80 */	lwz r4, 0x6080(r27)
/* 805BBC3C  3C 60 80 6C */	lis r3, shadow_hi_data@ha /* 0x806C69AC@ha */
/* 805BBC40  38 C3 69 AC */	addi r6, r3, shadow_hi_data@l /* 0x806C69AC@l */
/* 805BBC44  7F 83 E3 78 */	mr r3, r28
/* 805BBC48  81 84 00 04 */	lwz r12, 4(r4)
/* 805BBC4C  38 A0 00 01 */	li r5, 1
/* 805BBC50  7C 86 D0 2E */	lwzx r4, r6, r26
/* 805BBC54  7D 89 03 A6 */	mtctr r12
/* 805BBC58  4E 80 04 21 */	bctrl 
lbl_805BBC5C:
/* 805BBC5C  39 61 00 30 */	addi r11, r1, 0x30
/* 805BBC60  4B AD F2 B5 */	bl func_8009AF14
/* 805BBC64  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805BBC68  7C 08 03 A6 */	mtlr r0
/* 805BBC6C  38 21 00 30 */	addi r1, r1, 0x30
/* 805BBC70  4E 80 00 20 */	blr 
