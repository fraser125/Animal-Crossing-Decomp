lbl_803DA1D0:
/* 803DA1D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DA1D4  7C 08 02 A6 */	mflr r0
/* 803DA1D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DA1DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DA1E0  7C 7F 1B 78 */	mr r31, r3
/* 803DA1E4  4B FF F4 5D */	bl get_player_actor_withoutCheck
/* 803DA1E8  81 83 12 78 */	lwz r12, 0x1278(r3)
/* 803DA1EC  3C 60 80 64 */	lis r3, lit_942@ha /* 0x80642FD8@ha */
/* 803DA1F0  38 83 2F D8 */	addi r4, r3, lit_942@l /* 0x80642FD8@l */
/* 803DA1F4  38 A0 00 13 */	li r5, 0x13
/* 803DA1F8  C0 24 00 00 */	lfs f1, 0(r4)
/* 803DA1FC  7F E3 FB 78 */	mr r3, r31
/* 803DA200  38 80 00 07 */	li r4, 7
/* 803DA204  7D 89 03 A6 */	mtctr r12
/* 803DA208  4E 80 04 21 */	bctrl 
/* 803DA20C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DA210  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DA214  7C 08 03 A6 */	mtlr r0
/* 803DA218  38 21 00 10 */	addi r1, r1, 0x10
/* 803DA21C  4E 80 00 20 */	blr 
