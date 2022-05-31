lbl_803DE6C0:
/* 803DE6C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DE6C4  7C 08 02 A6 */	mflr r0
/* 803DE6C8  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803DE6CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DE6D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DE6D4  7C 7F 1B 78 */	mr r31, r3
/* 803DE6D8  38 64 52 F0 */	addi r3, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 803DE6DC  80 63 00 00 */	lwz r3, 0(r3)
/* 803DE6E0  4B FF AF 61 */	bl get_player_actor_withoutCheck
/* 803DE6E4  B3 E3 12 48 */	sth r31, 0x1248(r3)
/* 803DE6E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DE6EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DE6F0  7C 08 03 A6 */	mtlr r0
/* 803DE6F4  38 21 00 10 */	addi r1, r1, 0x10
/* 803DE6F8  4E 80 00 20 */	blr 
