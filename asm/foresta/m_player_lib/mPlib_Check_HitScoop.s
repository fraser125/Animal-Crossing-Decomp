lbl_803DC180:
/* 803DC180  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DC184  7C 08 02 A6 */	mflr r0
/* 803DC188  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803DC18C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DC190  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DC194  93 C1 00 08 */	stw r30, 8(r1)
/* 803DC198  7C 7E 1B 78 */	mr r30, r3
/* 803DC19C  38 64 52 F0 */	addi r3, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 803DC1A0  80 63 00 00 */	lwz r3, 0(r3)
/* 803DC1A4  4B FF D4 9D */	bl get_player_actor_withoutCheck
/* 803DC1A8  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803DC1AC  7C 7F 1B 78 */	mr r31, r3
/* 803DC1B0  38 64 52 F0 */	addi r3, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 803DC1B4  80 63 00 00 */	lwz r3, 0(r3)
/* 803DC1B8  4B FF D4 89 */	bl get_player_actor_withoutCheck
/* 803DC1BC  81 83 13 48 */	lwz r12, 0x1348(r3)
/* 803DC1C0  7F E3 FB 78 */	mr r3, r31
/* 803DC1C4  7F C4 F3 78 */	mr r4, r30
/* 803DC1C8  7D 89 03 A6 */	mtctr r12
/* 803DC1CC  4E 80 04 21 */	bctrl 
/* 803DC1D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DC1D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DC1D8  83 C1 00 08 */	lwz r30, 8(r1)
/* 803DC1DC  7C 08 03 A6 */	mtlr r0
/* 803DC1E0  38 21 00 10 */	addi r1, r1, 0x10
/* 803DC1E4  4E 80 00 20 */	blr 
