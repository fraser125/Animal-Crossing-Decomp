lbl_803DDB10:
/* 803DDB10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DDB14  7C 08 02 A6 */	mflr r0
/* 803DDB18  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803DDB1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DDB20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DDB24  93 C1 00 08 */	stw r30, 8(r1)
/* 803DDB28  7C 7E 1B 78 */	mr r30, r3
/* 803DDB2C  83 E4 52 F0 */	lwz r31, data_811C52F0@l(r4)  /* 0x811C52F0@l */
/* 803DDB30  7F E3 FB 78 */	mr r3, r31
/* 803DDB34  4B FF BB 0D */	bl get_player_actor_withoutCheck
/* 803DDB38  81 83 13 1C */	lwz r12, 0x131c(r3)
/* 803DDB3C  7F E3 FB 78 */	mr r3, r31
/* 803DDB40  7F C4 F3 78 */	mr r4, r30
/* 803DDB44  7D 89 03 A6 */	mtctr r12
/* 803DDB48  4E 80 04 21 */	bctrl 
/* 803DDB4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DDB50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DDB54  83 C1 00 08 */	lwz r30, 8(r1)
/* 803DDB58  7C 08 03 A6 */	mtlr r0
/* 803DDB5C  38 21 00 10 */	addi r1, r1, 0x10
/* 803DDB60  4E 80 00 20 */	blr 
