lbl_805B9E50:
/* 805B9E50  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805B9E54  7C 08 02 A6 */	mflr r0
/* 805B9E58  90 01 00 24 */	stw r0, 0x24(r1)
/* 805B9E5C  39 61 00 20 */	addi r11, r1, 0x20
/* 805B9E60  4B AE 10 75 */	bl func_8009AED4
/* 805B9E64  3C A0 81 1C */	lis r5, data_811C52F0@ha /* 0x811C52F0@ha */
/* 805B9E68  7C 7D 1B 78 */	mr r29, r3
/* 805B9E6C  83 E5 52 F0 */	lwz r31, data_811C52F0@l(r5)  /* 0x811C52F0@l */
/* 805B9E70  7C 9E 23 78 */	mr r30, r4
/* 805B9E74  7F E3 FB 78 */	mr r3, r31
/* 805B9E78  4B E1 F7 C9 */	bl get_player_actor_withoutCheck
/* 805B9E7C  81 83 13 00 */	lwz r12, 0x1300(r3)
/* 805B9E80  7F E3 FB 78 */	mr r3, r31
/* 805B9E84  7D 89 03 A6 */	mtctr r12
/* 805B9E88  4E 80 04 21 */	bctrl 
/* 805B9E8C  7C 1D 18 40 */	cmplw r29, r3
/* 805B9E90  40 82 00 24 */	bne lbl_805B9EB4
/* 805B9E94  7F A3 EB 78 */	mr r3, r29
/* 805B9E98  7F C4 F3 78 */	mr r4, r30
/* 805B9E9C  4B FF F9 B5 */	bl aSHOP_rewrite_out_data
/* 805B9EA0  3C 80 80 6C */	lis r4, aSHOP_shop_door_data@ha /* 0x806C6618@ha */
/* 805B9EA4  7F C3 F3 78 */	mr r3, r30
/* 805B9EA8  38 84 66 18 */	addi r4, r4, aSHOP_shop_door_data@l /* 0x806C6618@l */
/* 805B9EAC  38 A0 00 00 */	li r5, 0
/* 805B9EB0  4B E3 72 F9 */	bl goto_other_scene
lbl_805B9EB4:
/* 805B9EB4  39 61 00 20 */	addi r11, r1, 0x20
/* 805B9EB8  4B AE 10 69 */	bl func_8009AF20
/* 805B9EBC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805B9EC0  7C 08 03 A6 */	mtlr r0
/* 805B9EC4  38 21 00 20 */	addi r1, r1, 0x20
/* 805B9EC8  4E 80 00 20 */	blr 
