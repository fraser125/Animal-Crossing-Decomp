lbl_803DAA98:
/* 803DAA98  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803DAA9C  7C 08 02 A6 */	mflr r0
/* 803DAAA0  90 01 00 24 */	stw r0, 0x24(r1)
/* 803DAAA4  39 61 00 20 */	addi r11, r1, 0x20
/* 803DAAA8  4B CC 04 2D */	bl func_8009AED4
/* 803DAAAC  3C C0 81 1C */	lis r6, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803DAAB0  7C 7D 1B 78 */	mr r29, r3
/* 803DAAB4  38 66 52 F0 */	addi r3, r6, data_811C52F0@l /* 0x811C52F0@l */
/* 803DAAB8  7C 9E 23 78 */	mr r30, r4
/* 803DAABC  80 63 00 00 */	lwz r3, 0(r3)
/* 803DAAC0  7C BF 2B 78 */	mr r31, r5
/* 803DAAC4  4B FF EB 7D */	bl get_player_actor_withoutCheck
/* 803DAAC8  81 83 12 E8 */	lwz r12, 0x12e8(r3)
/* 803DAACC  7F A3 EB 78 */	mr r3, r29
/* 803DAAD0  7F C4 F3 78 */	mr r4, r30
/* 803DAAD4  7F E5 FB 78 */	mr r5, r31
/* 803DAAD8  38 C0 00 09 */	li r6, 9
/* 803DAADC  7D 89 03 A6 */	mtctr r12
/* 803DAAE0  4E 80 04 21 */	bctrl 
/* 803DAAE4  39 61 00 20 */	addi r11, r1, 0x20
/* 803DAAE8  4B CC 04 39 */	bl func_8009AF20
/* 803DAAEC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803DAAF0  7C 08 03 A6 */	mtlr r0
/* 803DAAF4  38 21 00 20 */	addi r1, r1, 0x20
/* 803DAAF8  4E 80 00 20 */	blr 
