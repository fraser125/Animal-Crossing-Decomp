lbl_803DA7B8:
/* 803DA7B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803DA7BC  7C 08 02 A6 */	mflr r0
/* 803DA7C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 803DA7C4  39 61 00 20 */	addi r11, r1, 0x20
/* 803DA7C8  4B CC 07 05 */	bl func_8009AECC
/* 803DA7CC  7C 7B 1B 78 */	mr r27, r3
/* 803DA7D0  7C 9C 23 78 */	mr r28, r4
/* 803DA7D4  7C BD 2B 78 */	mr r29, r5
/* 803DA7D8  7C DE 33 78 */	mr r30, r6
/* 803DA7DC  7C FF 3B 78 */	mr r31, r7
/* 803DA7E0  4B FF EE 61 */	bl get_player_actor_withoutCheck
/* 803DA7E4  81 83 12 AC */	lwz r12, 0x12ac(r3)
/* 803DA7E8  7F 63 DB 78 */	mr r3, r27
/* 803DA7EC  7F 84 E3 78 */	mr r4, r28
/* 803DA7F0  7F A5 EB 78 */	mr r5, r29
/* 803DA7F4  7F C6 F3 78 */	mr r6, r30
/* 803DA7F8  7F E7 FB 78 */	mr r7, r31
/* 803DA7FC  39 00 00 13 */	li r8, 0x13
/* 803DA800  7D 89 03 A6 */	mtctr r12
/* 803DA804  4E 80 04 21 */	bctrl 
/* 803DA808  39 61 00 20 */	addi r11, r1, 0x20
/* 803DA80C  4B CC 07 0D */	bl func_8009AF18
/* 803DA810  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803DA814  7C 08 03 A6 */	mtlr r0
/* 803DA818  38 21 00 20 */	addi r1, r1, 0x20
/* 803DA81C  4E 80 00 20 */	blr 
