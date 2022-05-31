lbl_805BD81C:
/* 805BD81C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805BD820  7C 08 02 A6 */	mflr r0
/* 805BD824  90 01 00 24 */	stw r0, 0x24(r1)
/* 805BD828  39 61 00 20 */	addi r11, r1, 0x20
/* 805BD82C  4B AD D6 A9 */	bl func_8009AED4
/* 805BD830  3C A0 81 1C */	lis r5, data_811C52F0@ha /* 0x811C52F0@ha */
/* 805BD834  7C 7D 1B 78 */	mr r29, r3
/* 805BD838  83 E5 52 F0 */	lwz r31, data_811C52F0@l(r5)  /* 0x811C52F0@l */
/* 805BD83C  7C 9E 23 78 */	mr r30, r4
/* 805BD840  7F E3 FB 78 */	mr r3, r31
/* 805BD844  4B E1 BD FD */	bl get_player_actor_withoutCheck
/* 805BD848  81 83 13 00 */	lwz r12, 0x1300(r3)
/* 805BD84C  7F E3 FB 78 */	mr r3, r31
/* 805BD850  7D 89 03 A6 */	mtctr r12
/* 805BD854  4E 80 04 21 */	bctrl 
/* 805BD858  7C 1D 18 40 */	cmplw r29, r3
/* 805BD85C  40 82 00 24 */	bne lbl_805BD880
/* 805BD860  7F A3 EB 78 */	mr r3, r29
/* 805BD864  7F C4 F3 78 */	mr r4, r30
/* 805BD868  4B FF F8 FD */	bl aSPR_rewrite_out_data
/* 805BD86C  3C 80 80 6C */	lis r4, aSPR_super_door_data@ha /* 0x806C6E18@ha */
/* 805BD870  7F C3 F3 78 */	mr r3, r30
/* 805BD874  38 84 6E 18 */	addi r4, r4, aSPR_super_door_data@l /* 0x806C6E18@l */
/* 805BD878  38 A0 00 00 */	li r5, 0
/* 805BD87C  4B E3 39 2D */	bl goto_other_scene
lbl_805BD880:
/* 805BD880  39 61 00 20 */	addi r11, r1, 0x20
/* 805BD884  4B AD D6 9D */	bl func_8009AF20
/* 805BD888  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805BD88C  7C 08 03 A6 */	mtlr r0
/* 805BD890  38 21 00 20 */	addi r1, r1, 0x20
/* 805BD894  4E 80 00 20 */	blr 
