lbl_804DD2C8:
/* 804DD2C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DD2CC  7C 08 02 A6 */	mflr r0
/* 804DD2D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DD2D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DD2D8  7C 9F 23 78 */	mr r31, r4
/* 804DD2DC  4B EF C3 65 */	bl get_player_actor_withoutCheck
/* 804DD2E0  80 03 0C F8 */	lwz r0, 0xcf8(r3)
/* 804DD2E4  2C 00 00 68 */	cmpwi r0, 0x68
/* 804DD2E8  40 82 00 18 */	bne lbl_804DD300
/* 804DD2EC  80 03 0D 44 */	lwz r0, 0xd44(r3)
/* 804DD2F0  7C 00 F8 40 */	cmplw r0, r31
/* 804DD2F4  40 82 00 0C */	bne lbl_804DD300
/* 804DD2F8  38 60 00 01 */	li r3, 1
/* 804DD2FC  48 00 00 08 */	b lbl_804DD304
lbl_804DD300:
/* 804DD300  38 60 00 00 */	li r3, 0
lbl_804DD304:
/* 804DD304  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DD308  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DD30C  7C 08 03 A6 */	mtlr r0
/* 804DD310  38 21 00 10 */	addi r1, r1, 0x10
/* 804DD314  4E 80 00 20 */	blr 
