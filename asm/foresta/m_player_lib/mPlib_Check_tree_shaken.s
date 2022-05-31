lbl_803DDF84:
/* 803DDF84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DDF88  7C 08 02 A6 */	mflr r0
/* 803DDF8C  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803DDF90  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DDF94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DDF98  93 C1 00 08 */	stw r30, 8(r1)
/* 803DDF9C  7C 7E 1B 78 */	mr r30, r3
/* 803DDFA0  38 64 52 F0 */	addi r3, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 803DDFA4  80 63 00 00 */	lwz r3, 0(r3)
/* 803DDFA8  4B FF B6 99 */	bl get_player_actor_withoutCheck
/* 803DDFAC  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803DDFB0  7C 7F 1B 78 */	mr r31, r3
/* 803DDFB4  38 64 52 F0 */	addi r3, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 803DDFB8  80 63 00 00 */	lwz r3, 0(r3)
/* 803DDFBC  4B FF B6 85 */	bl get_player_actor_withoutCheck
/* 803DDFC0  81 83 13 64 */	lwz r12, 0x1364(r3)
/* 803DDFC4  7F E3 FB 78 */	mr r3, r31
/* 803DDFC8  7F C4 F3 78 */	mr r4, r30
/* 803DDFCC  7D 89 03 A6 */	mtctr r12
/* 803DDFD0  4E 80 04 21 */	bctrl 
/* 803DDFD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DDFD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DDFDC  83 C1 00 08 */	lwz r30, 8(r1)
/* 803DDFE0  7C 08 03 A6 */	mtlr r0
/* 803DDFE4  38 21 00 10 */	addi r1, r1, 0x10
/* 803DDFE8  4E 80 00 20 */	blr 
