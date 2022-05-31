lbl_803DBFE8:
/* 803DBFE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DBFEC  7C 08 02 A6 */	mflr r0
/* 803DBFF0  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803DBFF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DBFF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DBFFC  93 C1 00 08 */	stw r30, 8(r1)
/* 803DC000  7C 7E 1B 78 */	mr r30, r3
/* 803DC004  38 64 52 F0 */	addi r3, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 803DC008  80 63 00 00 */	lwz r3, 0(r3)
/* 803DC00C  4B FF D6 35 */	bl get_player_actor_withoutCheck
/* 803DC010  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803DC014  7C 7F 1B 78 */	mr r31, r3
/* 803DC018  38 64 52 F0 */	addi r3, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 803DC01C  80 63 00 00 */	lwz r3, 0(r3)
/* 803DC020  4B FF D6 21 */	bl get_player_actor_withoutCheck
/* 803DC024  81 83 13 44 */	lwz r12, 0x1344(r3)
/* 803DC028  7F E3 FB 78 */	mr r3, r31
/* 803DC02C  7F C4 F3 78 */	mr r4, r30
/* 803DC030  7D 89 03 A6 */	mtctr r12
/* 803DC034  4E 80 04 21 */	bctrl 
/* 803DC038  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DC03C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DC040  83 C1 00 08 */	lwz r30, 8(r1)
/* 803DC044  7C 08 03 A6 */	mtlr r0
/* 803DC048  38 21 00 10 */	addi r1, r1, 0x10
/* 803DC04C  4E 80 00 20 */	blr 
