lbl_803DA6F8:
/* 803DA6F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803DA6FC  7C 08 02 A6 */	mflr r0
/* 803DA700  90 01 00 24 */	stw r0, 0x24(r1)
/* 803DA704  39 61 00 20 */	addi r11, r1, 0x20
/* 803DA708  4B CC 07 C5 */	bl func_8009AECC
/* 803DA70C  7C 7B 1B 78 */	mr r27, r3
/* 803DA710  7C 9C 23 78 */	mr r28, r4
/* 803DA714  7C BD 2B 78 */	mr r29, r5
/* 803DA718  7C DE 33 78 */	mr r30, r6
/* 803DA71C  7C FF 3B 78 */	mr r31, r7
/* 803DA720  4B FF EF 21 */	bl get_player_actor_withoutCheck
/* 803DA724  81 83 12 A4 */	lwz r12, 0x12a4(r3)
/* 803DA728  7F 63 DB 78 */	mr r3, r27
/* 803DA72C  7F 84 E3 78 */	mr r4, r28
/* 803DA730  7F A5 EB 78 */	mr r5, r29
/* 803DA734  7F C6 F3 78 */	mr r6, r30
/* 803DA738  7F E7 FB 78 */	mr r7, r31
/* 803DA73C  39 00 00 13 */	li r8, 0x13
/* 803DA740  7D 89 03 A6 */	mtctr r12
/* 803DA744  4E 80 04 21 */	bctrl 
/* 803DA748  39 61 00 20 */	addi r11, r1, 0x20
/* 803DA74C  4B CC 07 CD */	bl func_8009AF18
/* 803DA750  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803DA754  7C 08 03 A6 */	mtlr r0
/* 803DA758  38 21 00 20 */	addi r1, r1, 0x20
/* 803DA75C  4E 80 00 20 */	blr 
