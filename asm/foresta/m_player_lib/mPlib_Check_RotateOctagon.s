lbl_803DD8B4:
/* 803DD8B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DD8B8  7C 08 02 A6 */	mflr r0
/* 803DD8BC  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803DD8C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DD8C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DD8C8  83 E3 52 F0 */	lwz r31, data_811C52F0@l(r3)  /* 0x811C52F0@l */
/* 803DD8CC  7F E3 FB 78 */	mr r3, r31
/* 803DD8D0  4B FF BD 71 */	bl get_player_actor_withoutCheck
/* 803DD8D4  81 83 13 54 */	lwz r12, 0x1354(r3)
/* 803DD8D8  7F E3 FB 78 */	mr r3, r31
/* 803DD8DC  7D 89 03 A6 */	mtctr r12
/* 803DD8E0  4E 80 04 21 */	bctrl 
/* 803DD8E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DD8E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DD8EC  7C 08 03 A6 */	mtlr r0
/* 803DD8F0  38 21 00 10 */	addi r1, r1, 0x10
/* 803DD8F4  4E 80 00 20 */	blr 
