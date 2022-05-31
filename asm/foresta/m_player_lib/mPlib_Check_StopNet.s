lbl_803DC050:
/* 803DC050  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DC054  7C 08 02 A6 */	mflr r0
/* 803DC058  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803DC05C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DC060  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DC064  93 C1 00 08 */	stw r30, 8(r1)
/* 803DC068  7C 7E 1B 78 */	mr r30, r3
/* 803DC06C  38 64 52 F0 */	addi r3, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 803DC070  80 63 00 00 */	lwz r3, 0(r3)
/* 803DC074  4B FF D5 CD */	bl get_player_actor_withoutCheck
/* 803DC078  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803DC07C  7C 7F 1B 78 */	mr r31, r3
/* 803DC080  38 64 52 F0 */	addi r3, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 803DC084  80 63 00 00 */	lwz r3, 0(r3)
/* 803DC088  4B FF D5 B9 */	bl get_player_actor_withoutCheck
/* 803DC08C  81 83 13 3C */	lwz r12, 0x133c(r3)
/* 803DC090  7F E3 FB 78 */	mr r3, r31
/* 803DC094  7F C4 F3 78 */	mr r4, r30
/* 803DC098  7D 89 03 A6 */	mtctr r12
/* 803DC09C  4E 80 04 21 */	bctrl 
/* 803DC0A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DC0A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DC0A8  83 C1 00 08 */	lwz r30, 8(r1)
/* 803DC0AC  7C 08 03 A6 */	mtlr r0
/* 803DC0B0  38 21 00 10 */	addi r1, r1, 0x10
/* 803DC0B4  4E 80 00 20 */	blr 
