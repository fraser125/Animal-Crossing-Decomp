lbl_805AB2E0:
/* 805AB2E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805AB2E4  7C 08 02 A6 */	mflr r0
/* 805AB2E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805AB2EC  39 61 00 20 */	addi r11, r1, 0x20
/* 805AB2F0  4B AE FB E5 */	bl func_8009AED4
/* 805AB2F4  3C A0 81 1C */	lis r5, data_811C52F0@ha /* 0x811C52F0@ha */
/* 805AB2F8  7C 7D 1B 78 */	mr r29, r3
/* 805AB2FC  83 E5 52 F0 */	lwz r31, data_811C52F0@l(r5)  /* 0x811C52F0@l */
/* 805AB300  7C 9E 23 78 */	mr r30, r4
/* 805AB304  7F E3 FB 78 */	mr r3, r31
/* 805AB308  4B E2 E3 39 */	bl get_player_actor_withoutCheck
/* 805AB30C  81 83 13 00 */	lwz r12, 0x1300(r3)
/* 805AB310  7F E3 FB 78 */	mr r3, r31
/* 805AB314  7D 89 03 A6 */	mtctr r12
/* 805AB318  4E 80 04 21 */	bctrl 
/* 805AB31C  7C 1D 18 40 */	cmplw r29, r3
/* 805AB320  40 82 00 24 */	bne lbl_805AB344
/* 805AB324  7F A3 EB 78 */	mr r3, r29
/* 805AB328  7F C4 F3 78 */	mr r4, r30
/* 805AB32C  4B FF F8 FD */	bl aCNV_rewrite_out_data
/* 805AB330  3C 80 80 6C */	lis r4, aCNV_conveni_door_data@ha /* 0x806C47A4@ha */
/* 805AB334  7F C3 F3 78 */	mr r3, r30
/* 805AB338  38 84 47 A4 */	addi r4, r4, aCNV_conveni_door_data@l /* 0x806C47A4@l */
/* 805AB33C  38 A0 00 00 */	li r5, 0
/* 805AB340  4B E4 5E 69 */	bl goto_other_scene
lbl_805AB344:
/* 805AB344  39 61 00 20 */	addi r11, r1, 0x20
/* 805AB348  4B AE FB D9 */	bl func_8009AF20
/* 805AB34C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805AB350  7C 08 03 A6 */	mtlr r0
/* 805AB354  38 21 00 20 */	addi r1, r1, 0x20
/* 805AB358  4E 80 00 20 */	blr 
