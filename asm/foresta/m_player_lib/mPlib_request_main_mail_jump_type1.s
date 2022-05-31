lbl_803DA9A8:
/* 803DA9A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803DA9AC  7C 08 02 A6 */	mflr r0
/* 803DA9B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 803DA9B4  39 61 00 20 */	addi r11, r1, 0x20
/* 803DA9B8  4B CC 05 1D */	bl func_8009AED4
/* 803DA9BC  7C 7D 1B 78 */	mr r29, r3
/* 803DA9C0  7C 9E 23 78 */	mr r30, r4
/* 803DA9C4  7C BF 2B 78 */	mr r31, r5
/* 803DA9C8  4B FF EC 79 */	bl get_player_actor_withoutCheck
/* 803DA9CC  81 83 12 BC */	lwz r12, 0x12bc(r3)
/* 803DA9D0  7F A3 EB 78 */	mr r3, r29
/* 803DA9D4  7F C4 F3 78 */	mr r4, r30
/* 803DA9D8  7F E5 FB 78 */	mr r5, r31
/* 803DA9DC  38 C0 00 09 */	li r6, 9
/* 803DA9E0  7D 89 03 A6 */	mtctr r12
/* 803DA9E4  4E 80 04 21 */	bctrl 
/* 803DA9E8  39 61 00 20 */	addi r11, r1, 0x20
/* 803DA9EC  4B CC 05 35 */	bl func_8009AF20
/* 803DA9F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803DA9F4  7C 08 03 A6 */	mtlr r0
/* 803DA9F8  38 21 00 20 */	addi r1, r1, 0x20
/* 803DA9FC  4E 80 00 20 */	blr 
