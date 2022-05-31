lbl_803DE054:
/* 803DE054  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DE058  7C 08 02 A6 */	mflr r0
/* 803DE05C  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803DE060  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DE064  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DE068  93 C1 00 08 */	stw r30, 8(r1)
/* 803DE06C  7C 7E 1B 78 */	mr r30, r3
/* 803DE070  38 64 52 F0 */	addi r3, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 803DE074  80 63 00 00 */	lwz r3, 0(r3)
/* 803DE078  4B FF B5 C9 */	bl get_player_actor_withoutCheck
/* 803DE07C  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803DE080  7C 7F 1B 78 */	mr r31, r3
/* 803DE084  38 64 52 F0 */	addi r3, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 803DE088  80 63 00 00 */	lwz r3, 0(r3)
/* 803DE08C  4B FF B5 B5 */	bl get_player_actor_withoutCheck
/* 803DE090  81 83 13 6C */	lwz r12, 0x136c(r3)
/* 803DE094  7F E3 FB 78 */	mr r3, r31
/* 803DE098  7F C4 F3 78 */	mr r4, r30
/* 803DE09C  7D 89 03 A6 */	mtctr r12
/* 803DE0A0  4E 80 04 21 */	bctrl 
/* 803DE0A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DE0A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DE0AC  83 C1 00 08 */	lwz r30, 8(r1)
/* 803DE0B0  7C 08 03 A6 */	mtlr r0
/* 803DE0B4  38 21 00 10 */	addi r1, r1, 0x10
/* 803DE0B8  4E 80 00 20 */	blr 
