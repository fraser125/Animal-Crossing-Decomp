lbl_803CC568:
/* 803CC568  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803CC56C  7C 08 02 A6 */	mflr r0
/* 803CC570  90 01 00 24 */	stw r0, 0x24(r1)
/* 803CC574  39 61 00 20 */	addi r11, r1, 0x20
/* 803CC578  4B CC E9 5D */	bl func_8009AED4
/* 803CC57C  7C 7D 1B 78 */	mr r29, r3
/* 803CC580  7C 9E 23 78 */	mr r30, r4
/* 803CC584  3B E0 00 00 */	li r31, 0
/* 803CC588  48 00 00 14 */	b lbl_803CC59C
lbl_803CC58C:
/* 803CC58C  7F A3 EB 78 */	mr r3, r29
/* 803CC590  4B FF FE AD */	bl mNpc_ClearAnimalInfo
/* 803CC594  3B BD 09 88 */	addi r29, r29, 0x988
/* 803CC598  3B FF 00 01 */	addi r31, r31, 1
lbl_803CC59C:
/* 803CC59C  7C 1F F0 00 */	cmpw r31, r30
/* 803CC5A0  41 80 FF EC */	blt lbl_803CC58C
/* 803CC5A4  39 61 00 20 */	addi r11, r1, 0x20
/* 803CC5A8  4B CC E9 79 */	bl func_8009AF20
/* 803CC5AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803CC5B0  7C 08 03 A6 */	mtlr r0
/* 803CC5B4  38 21 00 20 */	addi r1, r1, 0x20
/* 803CC5B8  4E 80 00 20 */	blr 
