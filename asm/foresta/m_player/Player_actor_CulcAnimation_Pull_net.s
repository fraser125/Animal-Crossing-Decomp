lbl_804F3960:
/* 804F3960  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F3964  7C 08 02 A6 */	mflr r0
/* 804F3968  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F396C  4B FE 2C 1D */	bl Player_actor_CulcAnimation_Base2
/* 804F3970  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F3974  7C 08 03 A6 */	mtlr r0
/* 804F3978  38 21 00 10 */	addi r1, r1, 0x10
/* 804F397C  4E 80 00 20 */	blr 
