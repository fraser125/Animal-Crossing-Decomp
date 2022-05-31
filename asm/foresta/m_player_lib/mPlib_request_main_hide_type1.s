lbl_803DA608:
/* 803DA608  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DA60C  7C 08 02 A6 */	mflr r0
/* 803DA610  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DA614  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DA618  7C 7F 1B 78 */	mr r31, r3
/* 803DA61C  4B FF F0 25 */	bl get_player_actor_withoutCheck
/* 803DA620  81 83 12 9C */	lwz r12, 0x129c(r3)
/* 803DA624  7F E3 FB 78 */	mr r3, r31
/* 803DA628  38 80 00 2B */	li r4, 0x2b
/* 803DA62C  7D 89 03 A6 */	mtctr r12
/* 803DA630  4E 80 04 21 */	bctrl 
/* 803DA634  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DA638  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DA63C  7C 08 03 A6 */	mtlr r0
/* 803DA640  38 21 00 10 */	addi r1, r1, 0x10
/* 803DA644  4E 80 00 20 */	blr 
