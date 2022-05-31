lbl_803DA500:
/* 803DA500  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803DA504  7C 08 02 A6 */	mflr r0
/* 803DA508  90 01 00 24 */	stw r0, 0x24(r1)
/* 803DA50C  39 61 00 20 */	addi r11, r1, 0x20
/* 803DA510  4B CC 09 C1 */	bl func_8009AED0
/* 803DA514  7C 7C 1B 78 */	mr r28, r3
/* 803DA518  7C 9D 23 78 */	mr r29, r4
/* 803DA51C  7C BE 2B 78 */	mr r30, r5
/* 803DA520  7C DF 33 78 */	mr r31, r6
/* 803DA524  4B FF F1 1D */	bl get_player_actor_withoutCheck
/* 803DA528  81 83 12 90 */	lwz r12, 0x1290(r3)
/* 803DA52C  7F 83 E3 78 */	mr r3, r28
/* 803DA530  7F A4 EB 78 */	mr r4, r29
/* 803DA534  7F C5 F3 78 */	mr r5, r30
/* 803DA538  7F E6 FB 78 */	mr r6, r31
/* 803DA53C  38 E0 00 02 */	li r7, 2
/* 803DA540  7D 89 03 A6 */	mtctr r12
/* 803DA544  4E 80 04 21 */	bctrl 
/* 803DA548  39 61 00 20 */	addi r11, r1, 0x20
/* 803DA54C  4B CC 09 D1 */	bl func_8009AF1C
/* 803DA550  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803DA554  7C 08 03 A6 */	mtlr r0
/* 803DA558  38 21 00 20 */	addi r1, r1, 0x20
/* 803DA55C  4E 80 00 20 */	blr 
