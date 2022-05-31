lbl_803DDC28:
/* 803DDC28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DDC2C  7C 08 02 A6 */	mflr r0
/* 803DDC30  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803DDC34  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DDC38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DDC3C  93 C1 00 08 */	stw r30, 8(r1)
/* 803DDC40  7C 7E 1B 78 */	mr r30, r3
/* 803DDC44  38 64 52 F0 */	addi r3, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 803DDC48  80 63 00 00 */	lwz r3, 0(r3)
/* 803DDC4C  4B FF B9 F5 */	bl get_player_actor_withoutCheck
/* 803DDC50  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803DDC54  7C 7F 1B 78 */	mr r31, r3
/* 803DDC58  38 64 52 F0 */	addi r3, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 803DDC5C  80 63 00 00 */	lwz r3, 0(r3)
/* 803DDC60  4B FF B9 E1 */	bl get_player_actor_withoutCheck
/* 803DDC64  81 83 13 74 */	lwz r12, 0x1374(r3)
/* 803DDC68  7F E3 FB 78 */	mr r3, r31
/* 803DDC6C  7F C4 F3 78 */	mr r4, r30
/* 803DDC70  7D 89 03 A6 */	mtctr r12
/* 803DDC74  4E 80 04 21 */	bctrl 
/* 803DDC78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DDC7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DDC80  83 C1 00 08 */	lwz r30, 8(r1)
/* 803DDC84  7C 08 03 A6 */	mtlr r0
/* 803DDC88  38 21 00 10 */	addi r1, r1, 0x10
/* 803DDC8C  4E 80 00 20 */	blr 
