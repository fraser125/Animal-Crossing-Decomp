lbl_80501B8C:
/* 80501B8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80501B90  7C 08 02 A6 */	mflr r0
/* 80501B94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80501B98  4B FD 49 F1 */	bl Player_actor_CulcAnimation_Base2
/* 80501B9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80501BA0  7C 08 03 A6 */	mtlr r0
/* 80501BA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80501BA8  4E 80 00 20 */	blr 
