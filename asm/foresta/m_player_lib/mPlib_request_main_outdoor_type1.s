lbl_803DA760:
/* 803DA760  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803DA764  7C 08 02 A6 */	mflr r0
/* 803DA768  90 01 00 24 */	stw r0, 0x24(r1)
/* 803DA76C  39 61 00 20 */	addi r11, r1, 0x20
/* 803DA770  4B CC 07 65 */	bl func_8009AED4
/* 803DA774  7C 7D 1B 78 */	mr r29, r3
/* 803DA778  7C 9E 23 78 */	mr r30, r4
/* 803DA77C  7C BF 2B 78 */	mr r31, r5
/* 803DA780  4B FF EE C1 */	bl get_player_actor_withoutCheck
/* 803DA784  81 83 12 A8 */	lwz r12, 0x12a8(r3)
/* 803DA788  7F A3 EB 78 */	mr r3, r29
/* 803DA78C  7F C4 F3 78 */	mr r4, r30
/* 803DA790  7F E5 FB 78 */	mr r5, r31
/* 803DA794  38 C0 00 2B */	li r6, 0x2b
/* 803DA798  7D 89 03 A6 */	mtctr r12
/* 803DA79C  4E 80 04 21 */	bctrl 
/* 803DA7A0  39 61 00 20 */	addi r11, r1, 0x20
/* 803DA7A4  4B CC 07 7D */	bl func_8009AF20
/* 803DA7A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803DA7AC  7C 08 03 A6 */	mtlr r0
/* 803DA7B0  38 21 00 20 */	addi r1, r1, 0x20
/* 803DA7B4  4E 80 00 20 */	blr 
