lbl_804FFB68:
/* 804FFB68  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804FFB6C  7C 08 02 A6 */	mflr r0
/* 804FFB70  90 01 00 24 */	stw r0, 0x24(r1)
/* 804FFB74  38 A1 00 08 */	addi r5, r1, 8
/* 804FFB78  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804FFB7C  7C 9F 23 78 */	mr r31, r4
/* 804FFB80  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804FFB84  7C 7E 1B 78 */	mr r30, r3
/* 804FFB88  4B FF FD B1 */	bl Player_actor_CulcAnimation_Wash_car
/* 804FFB8C  C0 21 00 08 */	lfs f1, 8(r1)
/* 804FFB90  7F C3 F3 78 */	mr r3, r30
/* 804FFB94  4B FF FF 4D */	bl Player_actor_SearchAnimation_Wash_car
/* 804FFB98  7F C3 F3 78 */	mr r3, r30
/* 804FFB9C  7F E4 FB 78 */	mr r4, r31
/* 804FFBA0  4B FF FF 85 */	bl Player_actor_request_proc_index_fromWash_car
/* 804FFBA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804FFBA8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804FFBAC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804FFBB0  7C 08 03 A6 */	mtlr r0
/* 804FFBB4  38 21 00 20 */	addi r1, r1, 0x20
/* 804FFBB8  4E 80 00 20 */	blr 
