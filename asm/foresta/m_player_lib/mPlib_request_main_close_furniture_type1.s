lbl_803DA560:
/* 803DA560  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DA564  7C 08 02 A6 */	mflr r0
/* 803DA568  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DA56C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DA570  7C 7F 1B 78 */	mr r31, r3
/* 803DA574  4B FF F0 CD */	bl get_player_actor_withoutCheck
/* 803DA578  81 83 12 94 */	lwz r12, 0x1294(r3)
/* 803DA57C  7F E3 FB 78 */	mr r3, r31
/* 803DA580  38 80 00 17 */	li r4, 0x17
/* 803DA584  7D 89 03 A6 */	mtctr r12
/* 803DA588  4E 80 04 21 */	bctrl 
/* 803DA58C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DA590  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DA594  7C 08 03 A6 */	mtlr r0
/* 803DA598  38 21 00 10 */	addi r1, r1, 0x10
/* 803DA59C  4E 80 00 20 */	blr 
