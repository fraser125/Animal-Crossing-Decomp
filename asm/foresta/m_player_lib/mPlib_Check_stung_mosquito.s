lbl_803DE66C:
/* 803DE66C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DE670  7C 08 02 A6 */	mflr r0
/* 803DE674  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803DE678  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DE67C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DE680  93 C1 00 08 */	stw r30, 8(r1)
/* 803DE684  7C 7E 1B 78 */	mr r30, r3
/* 803DE688  83 E4 52 F0 */	lwz r31, data_811C52F0@l(r4)  /* 0x811C52F0@l */
/* 803DE68C  7F E3 FB 78 */	mr r3, r31
/* 803DE690  4B FF AF B1 */	bl get_player_actor_withoutCheck
/* 803DE694  81 83 13 88 */	lwz r12, 0x1388(r3)
/* 803DE698  7F E3 FB 78 */	mr r3, r31
/* 803DE69C  7F C4 F3 78 */	mr r4, r30
/* 803DE6A0  7D 89 03 A6 */	mtctr r12
/* 803DE6A4  4E 80 04 21 */	bctrl 
/* 803DE6A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DE6AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DE6B0  83 C1 00 08 */	lwz r30, 8(r1)
/* 803DE6B4  7C 08 03 A6 */	mtlr r0
/* 803DE6B8  38 21 00 10 */	addi r1, r1, 0x10
/* 803DE6BC  4E 80 00 20 */	blr 
