lbl_803DDFEC:
/* 803DDFEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DDFF0  7C 08 02 A6 */	mflr r0
/* 803DDFF4  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803DDFF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DDFFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DE000  93 C1 00 08 */	stw r30, 8(r1)
/* 803DE004  7C 7E 1B 78 */	mr r30, r3
/* 803DE008  38 64 52 F0 */	addi r3, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 803DE00C  80 63 00 00 */	lwz r3, 0(r3)
/* 803DE010  4B FF B6 31 */	bl get_player_actor_withoutCheck
/* 803DE014  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803DE018  7C 7F 1B 78 */	mr r31, r3
/* 803DE01C  38 64 52 F0 */	addi r3, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 803DE020  80 63 00 00 */	lwz r3, 0(r3)
/* 803DE024  4B FF B6 1D */	bl get_player_actor_withoutCheck
/* 803DE028  81 83 13 68 */	lwz r12, 0x1368(r3)
/* 803DE02C  7F E3 FB 78 */	mr r3, r31
/* 803DE030  7F C4 F3 78 */	mr r4, r30
/* 803DE034  7D 89 03 A6 */	mtctr r12
/* 803DE038  4E 80 04 21 */	bctrl 
/* 803DE03C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DE040  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DE044  83 C1 00 08 */	lwz r30, 8(r1)
/* 803DE048  7C 08 03 A6 */	mtlr r0
/* 803DE04C  38 21 00 10 */	addi r1, r1, 0x10
/* 803DE050  4E 80 00 20 */	blr 
