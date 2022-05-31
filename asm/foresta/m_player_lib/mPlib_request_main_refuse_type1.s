lbl_803DA190:
/* 803DA190  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DA194  7C 08 02 A6 */	mflr r0
/* 803DA198  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DA19C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DA1A0  7C 7F 1B 78 */	mr r31, r3
/* 803DA1A4  4B FF F4 9D */	bl get_player_actor_withoutCheck
/* 803DA1A8  81 83 12 74 */	lwz r12, 0x1274(r3)
/* 803DA1AC  7F E3 FB 78 */	mr r3, r31
/* 803DA1B0  38 80 00 22 */	li r4, 0x22
/* 803DA1B4  7D 89 03 A6 */	mtctr r12
/* 803DA1B8  4E 80 04 21 */	bctrl 
/* 803DA1BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DA1C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DA1C4  7C 08 03 A6 */	mtlr r0
/* 803DA1C8  38 21 00 10 */	addi r1, r1, 0x10
/* 803DA1CC  4E 80 00 20 */	blr 
