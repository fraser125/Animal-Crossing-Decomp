lbl_803DC0B8:
/* 803DC0B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DC0BC  7C 08 02 A6 */	mflr r0
/* 803DC0C0  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803DC0C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DC0C8  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 803DC0CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DC0D0  80 63 00 00 */	lwz r3, 0(r3)
/* 803DC0D4  4B FF D5 6D */	bl get_player_actor_withoutCheck
/* 803DC0D8  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803DC0DC  7C 7F 1B 78 */	mr r31, r3
/* 803DC0E0  38 64 52 F0 */	addi r3, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 803DC0E4  80 63 00 00 */	lwz r3, 0(r3)
/* 803DC0E8  4B FF D5 59 */	bl get_player_actor_withoutCheck
/* 803DC0EC  81 83 13 34 */	lwz r12, 0x1334(r3)
/* 803DC0F0  7F E3 FB 78 */	mr r3, r31
/* 803DC0F4  7D 89 03 A6 */	mtctr r12
/* 803DC0F8  4E 80 04 21 */	bctrl 
/* 803DC0FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DC100  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DC104  7C 08 03 A6 */	mtlr r0
/* 803DC108  38 21 00 10 */	addi r1, r1, 0x10
/* 803DC10C  4E 80 00 20 */	blr 
