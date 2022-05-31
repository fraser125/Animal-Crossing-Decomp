lbl_805B7130:
/* 805B7130  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805B7134  7C 08 02 A6 */	mflr r0
/* 805B7138  90 01 00 24 */	stw r0, 0x24(r1)
/* 805B713C  39 61 00 20 */	addi r11, r1, 0x20
/* 805B7140  4B AE 3D 89 */	bl func_8009AEC8
/* 805B7144  7C 7C 1B 78 */	mr r28, r3
/* 805B7148  80 63 01 90 */	lwz r3, 0x190(r3)
/* 805B714C  83 E4 00 00 */	lwz r31, 0(r4)
/* 805B7150  7C 9D 23 78 */	mr r29, r4
/* 805B7154  88 63 00 01 */	lbz r3, 1(r3)
/* 805B7158  3B DC 01 78 */	addi r30, r28, 0x178
/* 805B715C  80 1F 02 D4 */	lwz r0, 0x2d4(r31)
/* 805B7160  54 63 30 32 */	slwi r3, r3, 6
/* 805B7164  7C 03 00 51 */	subf. r0, r3, r0
/* 805B7168  90 1F 02 D4 */	stw r0, 0x2d4(r31)
/* 805B716C  7C 1A 03 78 */	mr r26, r0
/* 805B7170  41 82 00 C8 */	beq lbl_805B7238
/* 805B7174  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805B7178  38 60 00 5D */	li r3, 0x5d
/* 805B717C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805B7180  3C 84 00 02 */	addis r4, r4, 2
/* 805B7184  80 84 60 98 */	lwz r4, 0x6098(r4)
/* 805B7188  81 84 00 A4 */	lwz r12, 0xa4(r4)
/* 805B718C  7D 89 03 A6 */	mtctr r12
/* 805B7190  4E 80 04 21 */	bctrl 
/* 805B7194  28 1A 00 00 */	cmplwi r26, 0
/* 805B7198  7C 7B 1B 78 */	mr r27, r3
/* 805B719C  41 82 00 9C */	beq lbl_805B7238
/* 805B71A0  7F E3 FB 78 */	mr r3, r31
/* 805B71A4  4B E2 DF 65 */	bl _texture_z_light_fog_prim
/* 805B71A8  81 1F 02 D0 */	lwz r8, 0x2d0(r31)
/* 805B71AC  3C A0 DB 06 */	lis r5, 0xDB06 /* 0xDB060020@ha */
/* 805B71B0  38 05 00 20 */	addi r0, r5, 0x0020 /* 0xDB060020@l */
/* 805B71B4  3C 80 80 5B */	lis r4, func_805B6F78@ha /* 0x805B6F78@ha */
/* 805B71B8  90 08 00 00 */	stw r0, 0(r8)
/* 805B71BC  7D 09 43 78 */	mr r9, r8
/* 805B71C0  3C 60 80 5B */	lis r3, aNW_actor_draw_after@ha /* 0x805B7014@ha */
/* 805B71C4  38 C4 6F 78 */	addi r6, r4, func_805B6F78@l /* 0x805B6F78@l */
/* 805B71C8  93 69 00 04 */	stw r27, 4(r9)
/* 805B71CC  39 08 00 08 */	addi r8, r8, 8
/* 805B71D0  38 E3 70 14 */	addi r7, r3, aNW_actor_draw_after@l /* 0x805B7014@l */
/* 805B71D4  7F A3 EB 78 */	mr r3, r29
/* 805B71D8  91 1F 02 D0 */	stw r8, 0x2d0(r31)
/* 805B71DC  7F C4 F3 78 */	mr r4, r30
/* 805B71E0  7F 45 D3 78 */	mr r5, r26
/* 805B71E4  7F 88 E3 78 */	mr r8, r28
/* 805B71E8  4B DB A5 51 */	bl cKF_Si3_draw_R_SV
/* 805B71EC  3C 60 80 65 */	lis r3, lit_442@ha /* 0x8064A9C8@ha */
/* 805B71F0  3C 80 80 65 */	lis r4, lit_748@ha /* 0x8064A9F4@ha */
/* 805B71F4  38 A3 A9 C8 */	addi r5, r3, lit_442@l /* 0x8064A9C8@l */
/* 805B71F8  C0 44 A9 F4 */	lfs f2, lit_748@l(r4)  /* 0x8064A9F4@l */
/* 805B71FC  C0 25 00 00 */	lfs f1, 0(r5)
/* 805B7200  38 60 00 01 */	li r3, 1
/* 805B7204  FC 60 08 90 */	fmr f3, f1
/* 805B7208  4B E5 50 F9 */	bl Matrix_translate
/* 805B720C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805B7210  3C C0 80 6C */	lis r6, aNW_shadow_data@ha /* 0x806C6064@ha */
/* 805B7214  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 805B7218  3C A4 00 02 */	addis r5, r4, 2
/* 805B721C  7F A3 EB 78 */	mr r3, r29
/* 805B7220  38 86 60 64 */	addi r4, r6, aNW_shadow_data@l /* 0x806C6064@l */
/* 805B7224  80 C5 60 80 */	lwz r6, 0x6080(r5)
/* 805B7228  38 A0 00 00 */	li r5, 0
/* 805B722C  81 86 00 04 */	lwz r12, 4(r6)
/* 805B7230  7D 89 03 A6 */	mtctr r12
/* 805B7234  4E 80 04 21 */	bctrl 
lbl_805B7238:
/* 805B7238  39 61 00 20 */	addi r11, r1, 0x20
/* 805B723C  4B AE 3C D9 */	bl func_8009AF14
/* 805B7240  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805B7244  7C 08 03 A6 */	mtlr r0
/* 805B7248  38 21 00 20 */	addi r1, r1, 0x20
/* 805B724C  4E 80 00 20 */	blr 
