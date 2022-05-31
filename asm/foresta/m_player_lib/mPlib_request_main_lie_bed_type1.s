lbl_803DA5A0:
/* 803DA5A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803DA5A4  7C 08 02 A6 */	mflr r0
/* 803DA5A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803DA5AC  39 61 00 20 */	addi r11, r1, 0x20
/* 803DA5B0  4B CC 09 1D */	bl func_8009AECC
/* 803DA5B4  7C 7B 1B 78 */	mr r27, r3
/* 803DA5B8  7C 9C 23 78 */	mr r28, r4
/* 803DA5BC  7C BD 2B 78 */	mr r29, r5
/* 803DA5C0  7C DE 33 78 */	mr r30, r6
/* 803DA5C4  7C FF 3B 78 */	mr r31, r7
/* 803DA5C8  4B FF F0 79 */	bl get_player_actor_withoutCheck
/* 803DA5CC  81 83 12 98 */	lwz r12, 0x1298(r3)
/* 803DA5D0  7F 63 DB 78 */	mr r3, r27
/* 803DA5D4  7F 84 E3 78 */	mr r4, r28
/* 803DA5D8  7F A5 EB 78 */	mr r5, r29
/* 803DA5DC  7F C6 F3 78 */	mr r6, r30
/* 803DA5E0  7F E7 FB 78 */	mr r7, r31
/* 803DA5E4  39 00 00 09 */	li r8, 9
/* 803DA5E8  7D 89 03 A6 */	mtctr r12
/* 803DA5EC  4E 80 04 21 */	bctrl 
/* 803DA5F0  39 61 00 20 */	addi r11, r1, 0x20
/* 803DA5F4  4B CC 09 25 */	bl func_8009AF18
/* 803DA5F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803DA5FC  7C 08 03 A6 */	mtlr r0
/* 803DA600  38 21 00 20 */	addi r1, r1, 0x20
/* 803DA604  4E 80 00 20 */	blr 
