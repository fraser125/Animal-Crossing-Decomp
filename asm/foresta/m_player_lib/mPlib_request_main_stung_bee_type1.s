lbl_803DAA00:
/* 803DAA00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DAA04  7C 08 02 A6 */	mflr r0
/* 803DAA08  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DAA0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DAA10  7C 7F 1B 78 */	mr r31, r3
/* 803DAA14  4B FF EC 2D */	bl get_player_actor_withoutCheck
/* 803DAA18  81 83 12 D4 */	lwz r12, 0x12d4(r3)
/* 803DAA1C  7F E3 FB 78 */	mr r3, r31
/* 803DAA20  38 80 00 19 */	li r4, 0x19
/* 803DAA24  7D 89 03 A6 */	mtctr r12
/* 803DAA28  4E 80 04 21 */	bctrl 
/* 803DAA2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DAA30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DAA34  7C 08 03 A6 */	mtlr r0
/* 803DAA38  38 21 00 10 */	addi r1, r1, 0x10
/* 803DAA3C  4E 80 00 20 */	blr 
