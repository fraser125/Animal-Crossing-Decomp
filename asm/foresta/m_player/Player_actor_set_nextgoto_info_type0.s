lbl_804E0070:
/* 804E0070  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804E0074  7C 08 02 A6 */	mflr r0
/* 804E0078  90 01 00 24 */	stw r0, 0x24(r1)
/* 804E007C  39 61 00 20 */	addi r11, r1, 0x20
/* 804E0080  4B BB AE 55 */	bl func_8009AED4
/* 804E0084  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 804E0088  7C 7D 1B 78 */	mr r29, r3
/* 804E008C  83 C4 52 F0 */	lwz r30, data_811C52F0@l(r4)  /* 0x811C52F0@l */
/* 804E0090  7F C3 F3 78 */	mr r3, r30
/* 804E0094  4B EF 95 AD */	bl get_player_actor_withoutCheck
/* 804E0098  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804E009C  7C 7F 1B 78 */	mr r31, r3
/* 804E00A0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 804E00A4  7F C3 F3 78 */	mr r3, r30
/* 804E00A8  3C 84 00 03 */	addis r4, r4, 3
/* 804E00AC  38 A0 00 01 */	li r5, 1
/* 804E00B0  38 84 85 44 */	addi r4, r4, -31420
/* 804E00B4  4B F1 10 F5 */	bl goto_other_scene
/* 804E00B8  2C 03 00 01 */	cmpwi r3, 1
/* 804E00BC  41 82 00 10 */	beq lbl_804E00CC
/* 804E00C0  7F A3 EB 78 */	mr r3, r29
/* 804E00C4  4B EB A1 DD */	bl mDemo_End
/* 804E00C8  48 00 00 10 */	b lbl_804E00D8
lbl_804E00CC:
/* 804E00CC  4B F9 2A B9 */	bl aMR_SaveWaltzTempo2
/* 804E00D0  38 60 01 95 */	li r3, 0x195
/* 804E00D4  4B E9 BA 39 */	bl mBGMPsComp_make_ps_wipe
lbl_804E00D8:
/* 804E00D8  38 00 00 01 */	li r0, 1
/* 804E00DC  39 61 00 20 */	addi r11, r1, 0x20
/* 804E00E0  98 1F 13 A4 */	stb r0, 0x13a4(r31)
/* 804E00E4  4B BB AE 3D */	bl func_8009AF20
/* 804E00E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804E00EC  7C 08 03 A6 */	mtlr r0
/* 804E00F0  38 21 00 20 */	addi r1, r1, 0x20
/* 804E00F4  4E 80 00 20 */	blr 
