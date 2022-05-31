lbl_803DA2FC:
/* 803DA2FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803DA300  7C 08 02 A6 */	mflr r0
/* 803DA304  90 01 00 24 */	stw r0, 0x24(r1)
/* 803DA308  39 61 00 20 */	addi r11, r1, 0x20
/* 803DA30C  4B CC 0B C5 */	bl func_8009AED0
/* 803DA310  7C 7C 1B 78 */	mr r28, r3
/* 803DA314  7C 9D 23 78 */	mr r29, r4
/* 803DA318  7C BE 2B 78 */	mr r30, r5
/* 803DA31C  7C DF 33 78 */	mr r31, r6
/* 803DA320  4B FF F3 21 */	bl get_player_actor_withoutCheck
/* 803DA324  81 83 12 80 */	lwz r12, 0x1280(r3)
/* 803DA328  3C 60 80 64 */	lis r3, lit_961@ha /* 0x80642FDC@ha */
/* 803DA32C  38 E3 2F DC */	addi r7, r3, lit_961@l /* 0x80642FDC@l */
/* 803DA330  7F A4 EB 78 */	mr r4, r29
/* 803DA334  C0 27 00 00 */	lfs f1, 0(r7)
/* 803DA338  7F 83 E3 78 */	mr r3, r28
/* 803DA33C  7F C5 F3 78 */	mr r5, r30
/* 803DA340  7F E6 FB 78 */	mr r6, r31
/* 803DA344  38 E0 00 13 */	li r7, 0x13
/* 803DA348  7D 89 03 A6 */	mtctr r12
/* 803DA34C  4E 80 04 21 */	bctrl 
/* 803DA350  39 61 00 20 */	addi r11, r1, 0x20
/* 803DA354  4B CC 0B C9 */	bl func_8009AF1C
/* 803DA358  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803DA35C  7C 08 03 A6 */	mtlr r0
/* 803DA360  38 21 00 20 */	addi r1, r1, 0x20
/* 803DA364  4E 80 00 20 */	blr 
