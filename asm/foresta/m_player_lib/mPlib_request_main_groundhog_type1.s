lbl_803DA648:
/* 803DA648  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DA64C  7C 08 02 A6 */	mflr r0
/* 803DA650  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DA654  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DA658  7C 7F 1B 78 */	mr r31, r3
/* 803DA65C  4B FF EF E5 */	bl get_player_actor_withoutCheck
/* 803DA660  81 83 12 A0 */	lwz r12, 0x12a0(r3)
/* 803DA664  7F E3 FB 78 */	mr r3, r31
/* 803DA668  38 80 00 2B */	li r4, 0x2b
/* 803DA66C  7D 89 03 A6 */	mtctr r12
/* 803DA670  4E 80 04 21 */	bctrl 
/* 803DA674  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DA678  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DA67C  7C 08 03 A6 */	mtlr r0
/* 803DA680  38 21 00 10 */	addi r1, r1, 0x10
/* 803DA684  4E 80 00 20 */	blr 
