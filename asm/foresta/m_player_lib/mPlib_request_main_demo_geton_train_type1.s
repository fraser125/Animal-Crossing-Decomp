lbl_803DAE54:
/* 803DAE54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DAE58  7C 08 02 A6 */	mflr r0
/* 803DAE5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DAE60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DAE64  7C 9F 23 78 */	mr r31, r4
/* 803DAE68  93 C1 00 08 */	stw r30, 8(r1)
/* 803DAE6C  7C 7E 1B 78 */	mr r30, r3
/* 803DAE70  4B FF E7 D1 */	bl get_player_actor_withoutCheck
/* 803DAE74  81 83 12 C8 */	lwz r12, 0x12c8(r3)
/* 803DAE78  7F C3 F3 78 */	mr r3, r30
/* 803DAE7C  7F E4 FB 78 */	mr r4, r31
/* 803DAE80  38 A0 80 00 */	li r5, -32768
/* 803DAE84  38 C0 00 13 */	li r6, 0x13
/* 803DAE88  7D 89 03 A6 */	mtctr r12
/* 803DAE8C  4E 80 04 21 */	bctrl 
/* 803DAE90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DAE94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DAE98  83 C1 00 08 */	lwz r30, 8(r1)
/* 803DAE9C  7C 08 03 A6 */	mtlr r0
/* 803DAEA0  38 21 00 10 */	addi r1, r1, 0x10
/* 803DAEA4  4E 80 00 20 */	blr 
