lbl_803DA8F8:
/* 803DA8F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803DA8FC  7C 08 02 A6 */	mflr r0
/* 803DA900  90 01 00 24 */	stw r0, 0x24(r1)
/* 803DA904  39 61 00 20 */	addi r11, r1, 0x20
/* 803DA908  4B CC 05 CD */	bl func_8009AED4
/* 803DA90C  7C 7D 1B 78 */	mr r29, r3
/* 803DA910  7C 9E 23 78 */	mr r30, r4
/* 803DA914  7C BF 2B 78 */	mr r31, r5
/* 803DA918  4B FF ED 29 */	bl get_player_actor_withoutCheck
/* 803DA91C  81 83 12 B4 */	lwz r12, 0x12b4(r3)
/* 803DA920  7F A3 EB 78 */	mr r3, r29
/* 803DA924  7F C4 F3 78 */	mr r4, r30
/* 803DA928  7F E5 FB 78 */	mr r5, r31
/* 803DA92C  38 C0 00 13 */	li r6, 0x13
/* 803DA930  7D 89 03 A6 */	mtctr r12
/* 803DA934  4E 80 04 21 */	bctrl 
/* 803DA938  39 61 00 20 */	addi r11, r1, 0x20
/* 803DA93C  4B CC 05 E5 */	bl func_8009AF20
/* 803DA940  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803DA944  7C 08 03 A6 */	mtlr r0
/* 803DA948  38 21 00 20 */	addi r1, r1, 0x20
/* 803DA94C  4E 80 00 20 */	blr 
