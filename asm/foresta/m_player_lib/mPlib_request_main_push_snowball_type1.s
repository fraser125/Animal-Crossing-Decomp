lbl_803DACC4:
/* 803DACC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DACC8  7C 08 02 A6 */	mflr r0
/* 803DACCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DACD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DACD4  7C 9F 23 78 */	mr r31, r4
/* 803DACD8  93 C1 00 08 */	stw r30, 8(r1)
/* 803DACDC  7C 7E 1B 78 */	mr r30, r3
/* 803DACE0  4B FF E9 61 */	bl get_player_actor_withoutCheck
/* 803DACE4  81 83 12 E0 */	lwz r12, 0x12e0(r3)
/* 803DACE8  7F C3 F3 78 */	mr r3, r30
/* 803DACEC  7F E4 FB 78 */	mr r4, r31
/* 803DACF0  38 A0 00 00 */	li r5, 0
/* 803DACF4  38 C0 00 02 */	li r6, 2
/* 803DACF8  7D 89 03 A6 */	mtctr r12
/* 803DACFC  4E 80 04 21 */	bctrl 
/* 803DAD00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DAD04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DAD08  83 C1 00 08 */	lwz r30, 8(r1)
/* 803DAD0C  7C 08 03 A6 */	mtlr r0
/* 803DAD10  38 21 00 10 */	addi r1, r1, 0x10
/* 803DAD14  4E 80 00 20 */	blr 
