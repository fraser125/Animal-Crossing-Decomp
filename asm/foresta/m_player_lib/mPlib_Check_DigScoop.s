lbl_803DC1E8:
/* 803DC1E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DC1EC  7C 08 02 A6 */	mflr r0
/* 803DC1F0  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803DC1F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DC1F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DC1FC  93 C1 00 08 */	stw r30, 8(r1)
/* 803DC200  7C 7E 1B 78 */	mr r30, r3
/* 803DC204  38 64 52 F0 */	addi r3, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 803DC208  80 63 00 00 */	lwz r3, 0(r3)
/* 803DC20C  4B FF D4 35 */	bl get_player_actor_withoutCheck
/* 803DC210  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803DC214  7C 7F 1B 78 */	mr r31, r3
/* 803DC218  38 64 52 F0 */	addi r3, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 803DC21C  80 63 00 00 */	lwz r3, 0(r3)
/* 803DC220  4B FF D4 21 */	bl get_player_actor_withoutCheck
/* 803DC224  81 83 13 4C */	lwz r12, 0x134c(r3)
/* 803DC228  7F E3 FB 78 */	mr r3, r31
/* 803DC22C  7F C4 F3 78 */	mr r4, r30
/* 803DC230  7D 89 03 A6 */	mtctr r12
/* 803DC234  4E 80 04 21 */	bctrl 
/* 803DC238  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DC23C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DC240  83 C1 00 08 */	lwz r30, 8(r1)
/* 803DC244  7C 08 03 A6 */	mtlr r0
/* 803DC248  38 21 00 10 */	addi r1, r1, 0x10
/* 803DC24C  4E 80 00 20 */	blr 
