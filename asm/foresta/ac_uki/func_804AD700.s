lbl_804AD700:
/* 804AD700  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804AD704  7C 08 02 A6 */	mflr r0
/* 804AD708  90 01 00 14 */	stw r0, 0x14(r1)
/* 804AD70C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804AD710  7C 9F 23 78 */	mr r31, r4
/* 804AD714  93 C1 00 08 */	stw r30, 8(r1)
/* 804AD718  7C 7E 1B 78 */	mr r30, r3
/* 804AD71C  38 9E 01 78 */	addi r4, r30, 0x178
/* 804AD720  4B EE 82 D5 */	bl CollisionCheck_Uty_ActorWorldPosSetPipeC
/* 804AD724  7F E3 FB 78 */	mr r3, r31
/* 804AD728  38 9F 23 28 */	addi r4, r31, 0x2328
/* 804AD72C  38 BE 01 78 */	addi r5, r30, 0x178
/* 804AD730  4B EE 74 6D */	bl CollisionCheck_setOC
/* 804AD734  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AD738  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804AD73C  83 C1 00 08 */	lwz r30, 8(r1)
/* 804AD740  7C 08 03 A6 */	mtlr r0
/* 804AD744  38 21 00 10 */	addi r1, r1, 0x10
/* 804AD748  4E 80 00 20 */	blr 
