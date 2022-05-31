lbl_80502B90:
/* 80502B90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80502B94  7C 08 02 A6 */	mflr r0
/* 80502B98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80502B9C  4B FD 39 ED */	bl Player_actor_CulcAnimation_Base2
/* 80502BA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80502BA4  7C 08 03 A6 */	mtlr r0
/* 80502BA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80502BAC  4E 80 00 20 */	blr 
