lbl_803DDC90:
/* 803DDC90  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803DDC94  7C 08 02 A6 */	mflr r0
/* 803DDC98  90 01 00 24 */	stw r0, 0x24(r1)
/* 803DDC9C  39 61 00 20 */	addi r11, r1, 0x20
/* 803DDCA0  4B CB D2 35 */	bl func_8009AED4
/* 803DDCA4  3C A0 81 1C */	lis r5, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803DDCA8  7C 7D 1B 78 */	mr r29, r3
/* 803DDCAC  83 E5 52 F0 */	lwz r31, data_811C52F0@l(r5)  /* 0x811C52F0@l */
/* 803DDCB0  7C 9E 23 78 */	mr r30, r4
/* 803DDCB4  7F E3 FB 78 */	mr r3, r31
/* 803DDCB8  4B FF B9 89 */	bl get_player_actor_withoutCheck
/* 803DDCBC  81 83 13 78 */	lwz r12, 0x1378(r3)
/* 803DDCC0  7F E3 FB 78 */	mr r3, r31
/* 803DDCC4  7F A4 EB 78 */	mr r4, r29
/* 803DDCC8  7F C5 F3 78 */	mr r5, r30
/* 803DDCCC  7D 89 03 A6 */	mtctr r12
/* 803DDCD0  4E 80 04 21 */	bctrl 
/* 803DDCD4  39 61 00 20 */	addi r11, r1, 0x20
/* 803DDCD8  4B CB D2 49 */	bl func_8009AF20
/* 803DDCDC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803DDCE0  7C 08 03 A6 */	mtlr r0
/* 803DDCE4  38 21 00 20 */	addi r1, r1, 0x20
/* 803DDCE8  4E 80 00 20 */	blr 
