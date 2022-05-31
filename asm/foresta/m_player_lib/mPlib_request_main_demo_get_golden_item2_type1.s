lbl_803DA220:
/* 803DA220  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DA224  7C 08 02 A6 */	mflr r0
/* 803DA228  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DA22C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DA230  7C 9F 23 78 */	mr r31, r4
/* 803DA234  93 C1 00 08 */	stw r30, 8(r1)
/* 803DA238  7C 7E 1B 78 */	mr r30, r3
/* 803DA23C  4B FF F4 05 */	bl get_player_actor_withoutCheck
/* 803DA240  81 83 12 F4 */	lwz r12, 0x12f4(r3)
/* 803DA244  7F C3 F3 78 */	mr r3, r30
/* 803DA248  7F E4 FB 78 */	mr r4, r31
/* 803DA24C  38 A0 00 22 */	li r5, 0x22
/* 803DA250  7D 89 03 A6 */	mtctr r12
/* 803DA254  4E 80 04 21 */	bctrl 
/* 803DA258  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DA25C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DA260  83 C1 00 08 */	lwz r30, 8(r1)
/* 803DA264  7C 08 03 A6 */	mtlr r0
/* 803DA268  38 21 00 10 */	addi r1, r1, 0x10
/* 803DA26C  4E 80 00 20 */	blr 
