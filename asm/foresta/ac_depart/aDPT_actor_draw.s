lbl_805AD4E8:
/* 805AD4E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805AD4EC  7C 08 02 A6 */	mflr r0
/* 805AD4F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805AD4F4  39 61 00 20 */	addi r11, r1, 0x20
/* 805AD4F8  4B AE D9 D1 */	bl func_8009AEC8
/* 805AD4FC  7C 7C 1B 78 */	mr r28, r3
/* 805AD500  80 63 01 90 */	lwz r3, 0x190(r3)
/* 805AD504  83 E4 00 00 */	lwz r31, 0(r4)
/* 805AD508  7C 9D 23 78 */	mr r29, r4
/* 805AD50C  88 63 00 01 */	lbz r3, 1(r3)
/* 805AD510  3B DC 01 78 */	addi r30, r28, 0x178
/* 805AD514  80 1F 02 D4 */	lwz r0, 0x2d4(r31)
/* 805AD518  54 63 30 32 */	slwi r3, r3, 6
/* 805AD51C  7C 03 00 51 */	subf. r0, r3, r0
/* 805AD520  90 1F 02 D4 */	stw r0, 0x2d4(r31)
/* 805AD524  7C 1A 03 78 */	mr r26, r0
/* 805AD528  41 82 00 B0 */	beq lbl_805AD5D8
/* 805AD52C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805AD530  38 60 00 28 */	li r3, 0x28
/* 805AD534  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805AD538  3C 84 00 02 */	addis r4, r4, 2
/* 805AD53C  80 84 60 98 */	lwz r4, 0x6098(r4)
/* 805AD540  81 84 00 A4 */	lwz r12, 0xa4(r4)
/* 805AD544  7D 89 03 A6 */	mtctr r12
/* 805AD548  4E 80 04 21 */	bctrl 
/* 805AD54C  7C 7B 1B 78 */	mr r27, r3
/* 805AD550  7F E3 FB 78 */	mr r3, r31
/* 805AD554  4B E3 7C 55 */	bl _texture_z_light_fog_prim_npc
/* 805AD558  80 7D 00 00 */	lwz r3, 0(r29)
/* 805AD55C  4B E3 7B FD */	bl _texture_z_light_fog_prim_xlu
/* 805AD560  81 1F 02 D0 */	lwz r8, 0x2d0(r31)
/* 805AD564  3C A0 DB 06 */	lis r5, 0xDB06 /* 0xDB060020@ha */
/* 805AD568  38 05 00 20 */	addi r0, r5, 0x0020 /* 0xDB060020@l */
/* 805AD56C  3C 80 80 5B */	lis r4, func_805AD310@ha /* 0x805AD310@ha */
/* 805AD570  90 08 00 00 */	stw r0, 0(r8)
/* 805AD574  7D 09 43 78 */	mr r9, r8
/* 805AD578  3C 60 80 5B */	lis r3, aDPT_actor_draw_after@ha /* 0x805AD3CC@ha */
/* 805AD57C  38 C4 D3 10 */	addi r6, r4, func_805AD310@l /* 0x805AD310@l */
/* 805AD580  93 69 00 04 */	stw r27, 4(r9)
/* 805AD584  39 08 00 08 */	addi r8, r8, 8
/* 805AD588  38 E3 D3 CC */	addi r7, r3, aDPT_actor_draw_after@l /* 0x805AD3CC@l */
/* 805AD58C  7F A3 EB 78 */	mr r3, r29
/* 805AD590  91 1F 02 D0 */	stw r8, 0x2d0(r31)
/* 805AD594  7F C4 F3 78 */	mr r4, r30
/* 805AD598  7F 45 D3 78 */	mr r5, r26
/* 805AD59C  7F 88 E3 78 */	mr r8, r28
/* 805AD5A0  4B DC 41 99 */	bl cKF_Si3_draw_R_SV
/* 805AD5A4  7F E3 FB 78 */	mr r3, r31
/* 805AD5A8  4B E3 7B 89 */	bl _texture_z_light_fog_prim_shadow
/* 805AD5AC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805AD5B0  3C C0 80 6C */	lis r6, aDPT_shadow_data@ha /* 0x806C4AD8@ha */
/* 805AD5B4  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 805AD5B8  3C A4 00 02 */	addis r5, r4, 2
/* 805AD5BC  7F A3 EB 78 */	mr r3, r29
/* 805AD5C0  38 86 4A D8 */	addi r4, r6, aDPT_shadow_data@l /* 0x806C4AD8@l */
/* 805AD5C4  80 C5 60 80 */	lwz r6, 0x6080(r5)
/* 805AD5C8  38 A0 00 00 */	li r5, 0
/* 805AD5CC  81 86 00 04 */	lwz r12, 4(r6)
/* 805AD5D0  7D 89 03 A6 */	mtctr r12
/* 805AD5D4  4E 80 04 21 */	bctrl 
lbl_805AD5D8:
/* 805AD5D8  39 61 00 20 */	addi r11, r1, 0x20
/* 805AD5DC  4B AE D9 39 */	bl func_8009AF14
/* 805AD5E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805AD5E4  7C 08 03 A6 */	mtlr r0
/* 805AD5E8  38 21 00 20 */	addi r1, r1, 0x20
/* 805AD5EC  4E 80 00 20 */	blr 
