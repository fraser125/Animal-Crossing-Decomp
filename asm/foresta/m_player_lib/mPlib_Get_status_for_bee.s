lbl_803DDA60:
/* 803DDA60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DDA64  7C 08 02 A6 */	mflr r0
/* 803DDA68  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803DDA6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DDA70  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 803DDA74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DDA78  80 63 00 00 */	lwz r3, 0(r3)
/* 803DDA7C  4B FF BB C5 */	bl get_player_actor_withoutCheck
/* 803DDA80  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803DDA84  7C 7F 1B 78 */	mr r31, r3
/* 803DDA88  38 64 52 F0 */	addi r3, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 803DDA8C  80 63 00 00 */	lwz r3, 0(r3)
/* 803DDA90  4B FF BB B1 */	bl get_player_actor_withoutCheck
/* 803DDA94  81 83 13 5C */	lwz r12, 0x135c(r3)
/* 803DDA98  7F E3 FB 78 */	mr r3, r31
/* 803DDA9C  7D 89 03 A6 */	mtctr r12
/* 803DDAA0  4E 80 04 21 */	bctrl 
/* 803DDAA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DDAA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DDAAC  7C 08 03 A6 */	mtlr r0
/* 803DDAB0  38 21 00 10 */	addi r1, r1, 0x10
/* 803DDAB4  4E 80 00 20 */	blr 
