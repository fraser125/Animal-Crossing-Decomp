lbl_803DB374:
/* 803DB374  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DB378  7C 08 02 A6 */	mflr r0
/* 803DB37C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DB380  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DB384  7C 9F 23 78 */	mr r31, r4
/* 803DB388  4B FF E2 B9 */	bl get_player_actor_withoutCheck
/* 803DB38C  80 03 0D 0C */	lwz r0, 0xd0c(r3)
/* 803DB390  7C 00 F8 00 */	cmpw r0, r31
/* 803DB394  40 80 00 10 */	bge lbl_803DB3A4
/* 803DB398  93 E3 0D 0C */	stw r31, 0xd0c(r3)
/* 803DB39C  38 60 00 01 */	li r3, 1
/* 803DB3A0  48 00 00 08 */	b lbl_803DB3A8
lbl_803DB3A4:
/* 803DB3A4  38 60 00 00 */	li r3, 0
lbl_803DB3A8:
/* 803DB3A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DB3AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DB3B0  7C 08 03 A6 */	mtlr r0
/* 803DB3B4  38 21 00 10 */	addi r1, r1, 0x10
/* 803DB3B8  4E 80 00 20 */	blr 
