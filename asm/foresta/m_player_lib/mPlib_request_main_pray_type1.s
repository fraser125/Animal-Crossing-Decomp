lbl_803DA950:
/* 803DA950  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803DA954  7C 08 02 A6 */	mflr r0
/* 803DA958  90 01 00 24 */	stw r0, 0x24(r1)
/* 803DA95C  39 61 00 20 */	addi r11, r1, 0x20
/* 803DA960  4B CC 05 75 */	bl func_8009AED4
/* 803DA964  7C 7D 1B 78 */	mr r29, r3
/* 803DA968  7C 9E 23 78 */	mr r30, r4
/* 803DA96C  7C BF 2B 78 */	mr r31, r5
/* 803DA970  4B FF EC D1 */	bl get_player_actor_withoutCheck
/* 803DA974  81 83 12 B8 */	lwz r12, 0x12b8(r3)
/* 803DA978  7F A3 EB 78 */	mr r3, r29
/* 803DA97C  7F C4 F3 78 */	mr r4, r30
/* 803DA980  7F E5 FB 78 */	mr r5, r31
/* 803DA984  38 C0 00 13 */	li r6, 0x13
/* 803DA988  7D 89 03 A6 */	mtctr r12
/* 803DA98C  4E 80 04 21 */	bctrl 
/* 803DA990  39 61 00 20 */	addi r11, r1, 0x20
/* 803DA994  4B CC 05 8D */	bl func_8009AF20
/* 803DA998  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803DA99C  7C 08 03 A6 */	mtlr r0
/* 803DA9A0  38 21 00 20 */	addi r1, r1, 0x20
/* 803DA9A4  4E 80 00 20 */	blr 
