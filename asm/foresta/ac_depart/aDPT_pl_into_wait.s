lbl_805AD0BC:
/* 805AD0BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805AD0C0  7C 08 02 A6 */	mflr r0
/* 805AD0C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805AD0C8  39 61 00 20 */	addi r11, r1, 0x20
/* 805AD0CC  4B AE DE 09 */	bl func_8009AED4
/* 805AD0D0  3C A0 81 1C */	lis r5, data_811C52F0@ha /* 0x811C52F0@ha */
/* 805AD0D4  7C 7D 1B 78 */	mr r29, r3
/* 805AD0D8  83 E5 52 F0 */	lwz r31, data_811C52F0@l(r5)  /* 0x811C52F0@l */
/* 805AD0DC  7C 9E 23 78 */	mr r30, r4
/* 805AD0E0  7F E3 FB 78 */	mr r3, r31
/* 805AD0E4  4B E2 C5 5D */	bl get_player_actor_withoutCheck
/* 805AD0E8  81 83 13 00 */	lwz r12, 0x1300(r3)
/* 805AD0EC  7F E3 FB 78 */	mr r3, r31
/* 805AD0F0  7D 89 03 A6 */	mtctr r12
/* 805AD0F4  4E 80 04 21 */	bctrl 
/* 805AD0F8  7C 1D 18 40 */	cmplw r29, r3
/* 805AD0FC  40 82 00 24 */	bne lbl_805AD120
/* 805AD100  7F A3 EB 78 */	mr r3, r29
/* 805AD104  7F C4 F3 78 */	mr r4, r30
/* 805AD108  4B FF F8 FD */	bl aDPT_rewrite_out_data
/* 805AD10C  3C 80 80 6C */	lis r4, aDPT_depart_door_data@ha /* 0x806C4AF4@ha */
/* 805AD110  7F C3 F3 78 */	mr r3, r30
/* 805AD114  38 84 4A F4 */	addi r4, r4, aDPT_depart_door_data@l /* 0x806C4AF4@l */
/* 805AD118  38 A0 00 00 */	li r5, 0
/* 805AD11C  4B E4 40 8D */	bl goto_other_scene
lbl_805AD120:
/* 805AD120  39 61 00 20 */	addi r11, r1, 0x20
/* 805AD124  4B AE DD FD */	bl func_8009AF20
/* 805AD128  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805AD12C  7C 08 03 A6 */	mtlr r0
/* 805AD130  38 21 00 20 */	addi r1, r1, 0x20
/* 805AD134  4E 80 00 20 */	blr 
