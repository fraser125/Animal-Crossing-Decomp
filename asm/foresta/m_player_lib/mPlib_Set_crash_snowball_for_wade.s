lbl_803DDD58:
/* 803DDD58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DDD5C  7C 08 02 A6 */	mflr r0
/* 803DDD60  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803DDD64  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DDD68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DDD6C  7C 7F 1B 78 */	mr r31, r3
/* 803DDD70  38 64 52 F0 */	addi r3, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 803DDD74  80 63 00 00 */	lwz r3, 0(r3)
/* 803DDD78  4B FF B8 C9 */	bl get_player_actor_withoutCheck
/* 803DDD7C  93 E3 11 FC */	stw r31, 0x11fc(r3)
/* 803DDD80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DDD84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DDD88  7C 08 03 A6 */	mtlr r0
/* 803DDD8C  38 21 00 10 */	addi r1, r1, 0x10
/* 803DDD90  4E 80 00 20 */	blr 
