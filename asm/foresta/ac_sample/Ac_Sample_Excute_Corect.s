lbl_8040EFB8:
/* 8040EFB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8040EFBC  7C 08 02 A6 */	mflr r0
/* 8040EFC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8040EFC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8040EFC8  3B E3 02 44 */	addi r31, r3, 0x244
/* 8040EFCC  93 C1 00 08 */	stw r30, 8(r1)
/* 8040EFD0  7C 9E 23 78 */	mr r30, r4
/* 8040EFD4  7F E4 FB 78 */	mr r4, r31
/* 8040EFD8  4B F8 6A 1D */	bl CollisionCheck_Uty_ActorWorldPosSetPipeC
/* 8040EFDC  7F C3 F3 78 */	mr r3, r30
/* 8040EFE0  7F E5 FB 78 */	mr r5, r31
/* 8040EFE4  38 9E 23 28 */	addi r4, r30, 0x2328
/* 8040EFE8  4B F8 5B B5 */	bl CollisionCheck_setOC
/* 8040EFEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8040EFF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8040EFF4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8040EFF8  7C 08 03 A6 */	mtlr r0
/* 8040EFFC  38 21 00 10 */	addi r1, r1, 0x10
/* 8040F000  4E 80 00 20 */	blr 
