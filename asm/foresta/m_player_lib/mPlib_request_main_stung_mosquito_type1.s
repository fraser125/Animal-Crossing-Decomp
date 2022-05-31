lbl_803DAA40:
/* 803DAA40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DAA44  7C 08 02 A6 */	mflr r0
/* 803DAA48  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803DAA4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DAA50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DAA54  93 C1 00 08 */	stw r30, 8(r1)
/* 803DAA58  7C 7E 1B 78 */	mr r30, r3
/* 803DAA5C  83 E4 52 F0 */	lwz r31, data_811C52F0@l(r4)  /* 0x811C52F0@l */
/* 803DAA60  7F E3 FB 78 */	mr r3, r31
/* 803DAA64  4B FF EB DD */	bl get_player_actor_withoutCheck
/* 803DAA68  81 83 12 E4 */	lwz r12, 0x12e4(r3)
/* 803DAA6C  7F E3 FB 78 */	mr r3, r31
/* 803DAA70  7F C4 F3 78 */	mr r4, r30
/* 803DAA74  38 A0 00 19 */	li r5, 0x19
/* 803DAA78  7D 89 03 A6 */	mtctr r12
/* 803DAA7C  4E 80 04 21 */	bctrl 
/* 803DAA80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DAA84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DAA88  83 C1 00 08 */	lwz r30, 8(r1)
/* 803DAA8C  7C 08 03 A6 */	mtlr r0
/* 803DAA90  38 21 00 10 */	addi r1, r1, 0x10
/* 803DAA94  4E 80 00 20 */	blr 
