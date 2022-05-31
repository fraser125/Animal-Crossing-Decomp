lbl_804D6B34:
/* 804D6B34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D6B38  7C 08 02 A6 */	mflr r0
/* 804D6B3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D6B40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D6B44  3B E3 10 10 */	addi r31, r3, 0x1010
/* 804D6B48  93 C1 00 08 */	stw r30, 8(r1)
/* 804D6B4C  7C 9E 23 78 */	mr r30, r4
/* 804D6B50  7F E4 FB 78 */	mr r4, r31
/* 804D6B54  4B EB EE A1 */	bl CollisionCheck_Uty_ActorWorldPosSetPipeC
/* 804D6B58  7F C3 F3 78 */	mr r3, r30
/* 804D6B5C  7F E5 FB 78 */	mr r5, r31
/* 804D6B60  38 9E 23 28 */	addi r4, r30, 0x2328
/* 804D6B64  4B EB E0 39 */	bl CollisionCheck_setOC
/* 804D6B68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D6B6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D6B70  83 C1 00 08 */	lwz r30, 8(r1)
/* 804D6B74  7C 08 03 A6 */	mtlr r0
/* 804D6B78  38 21 00 10 */	addi r1, r1, 0x10
/* 804D6B7C  4E 80 00 20 */	blr 
