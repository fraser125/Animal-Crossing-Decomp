lbl_803D8BAC:
/* 803D8BAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D8BB0  7C 08 02 A6 */	mflr r0
/* 803D8BB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D8BB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D8BBC  7C 9F 23 78 */	mr r31, r4
/* 803D8BC0  93 C1 00 08 */	stw r30, 8(r1)
/* 803D8BC4  7C 7E 1B 78 */	mr r30, r3
/* 803D8BC8  38 7F 1D EC */	addi r3, r31, 0x1dec
/* 803D8BCC  48 01 6A 31 */	bl load_player
/* 803D8BD0  3C 80 81 17 */	lis r4, Player_actor_draw_func@ha /* 0x8116EDDC@ha */
/* 803D8BD4  7F C3 F3 78 */	mr r3, r30
/* 803D8BD8  38 A4 ED DC */	addi r5, r4, Player_actor_draw_func@l /* 0x8116EDDC@l */
/* 803D8BDC  7F E4 FB 78 */	mr r4, r31
/* 803D8BE0  81 85 00 00 */	lwz r12, 0(r5)
/* 803D8BE4  7D 89 03 A6 */	mtctr r12
/* 803D8BE8  4E 80 04 21 */	bctrl 
/* 803D8BEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D8BF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D8BF4  83 C1 00 08 */	lwz r30, 8(r1)
/* 803D8BF8  7C 08 03 A6 */	mtlr r0
/* 803D8BFC  38 21 00 10 */	addi r1, r1, 0x10
/* 803D8C00  4E 80 00 20 */	blr 
