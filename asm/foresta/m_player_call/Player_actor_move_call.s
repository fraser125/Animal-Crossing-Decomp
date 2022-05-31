lbl_803D8B54:
/* 803D8B54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D8B58  7C 08 02 A6 */	mflr r0
/* 803D8B5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D8B60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D8B64  7C 9F 23 78 */	mr r31, r4
/* 803D8B68  93 C1 00 08 */	stw r30, 8(r1)
/* 803D8B6C  7C 7E 1B 78 */	mr r30, r3
/* 803D8B70  38 7F 1D EC */	addi r3, r31, 0x1dec
/* 803D8B74  48 01 6A 89 */	bl load_player
/* 803D8B78  3C 80 81 17 */	lis r4, Player_actor_move_func@ha /* 0x8116EDD8@ha */
/* 803D8B7C  7F C3 F3 78 */	mr r3, r30
/* 803D8B80  38 A4 ED D8 */	addi r5, r4, Player_actor_move_func@l /* 0x8116EDD8@l */
/* 803D8B84  7F E4 FB 78 */	mr r4, r31
/* 803D8B88  81 85 00 00 */	lwz r12, 0(r5)
/* 803D8B8C  7D 89 03 A6 */	mtctr r12
/* 803D8B90  4E 80 04 21 */	bctrl 
/* 803D8B94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D8B98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D8B9C  83 C1 00 08 */	lwz r30, 8(r1)
/* 803D8BA0  7C 08 03 A6 */	mtlr r0
/* 803D8BA4  38 21 00 10 */	addi r1, r1, 0x10
/* 803D8BA8  4E 80 00 20 */	blr 
