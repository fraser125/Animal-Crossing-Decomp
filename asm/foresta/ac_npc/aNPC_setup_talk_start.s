lbl_8052E76C:
/* 8052E76C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052E770  7C 08 02 A6 */	mflr r0
/* 8052E774  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052E778  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8052E77C  7C 7F 1B 78 */	mr r31, r3
/* 8052E780  7C 83 23 78 */	mr r3, r4
/* 8052E784  4B EA AE BD */	bl get_player_actor_withoutCheck
/* 8052E788  7C 64 1B 78 */	mr r4, r3
/* 8052E78C  90 9F 08 F0 */	stw r4, 0x8f0(r31)
/* 8052E790  88 1F 09 73 */	lbz r0, 0x973(r31)
/* 8052E794  28 00 00 00 */	cmplwi r0, 0
/* 8052E798  40 82 00 24 */	bne lbl_8052E7BC
/* 8052E79C  C0 24 00 28 */	lfs f1, 0x28(r4)
/* 8052E7A0  7F E3 FB 78 */	mr r3, r31
/* 8052E7A4  C0 44 00 30 */	lfs f2, 0x30(r4)
/* 8052E7A8  48 00 10 B1 */	bl aNPC_set_dst_pos
/* 8052E7AC  A8 7F 01 76 */	lha r3, 0x176(r31)
/* 8052E7B0  A8 1F 09 24 */	lha r0, 0x924(r31)
/* 8052E7B4  7C 03 00 50 */	subf r0, r3, r0
/* 8052E7B8  B0 1F 09 24 */	sth r0, 0x924(r31)
lbl_8052E7BC:
/* 8052E7BC  38 60 00 00 */	li r3, 0
/* 8052E7C0  38 00 00 01 */	li r0, 1
/* 8052E7C4  98 7F 08 18 */	stb r3, 0x818(r31)
/* 8052E7C8  98 7F 08 34 */	stb r3, 0x834(r31)
/* 8052E7CC  98 1F 08 33 */	stb r0, 0x833(r31)
/* 8052E7D0  80 1F 08 40 */	lwz r0, 0x840(r31)
/* 8052E7D4  90 1F 08 44 */	stw r0, 0x844(r31)
/* 8052E7D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8052E7DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052E7E0  7C 08 03 A6 */	mtlr r0
/* 8052E7E4  38 21 00 10 */	addi r1, r1, 0x10
/* 8052E7E8  4E 80 00 20 */	blr 
