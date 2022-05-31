lbl_804F5614:
/* 804F5614  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F5618  7C 08 02 A6 */	mflr r0
/* 804F561C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F5620  4B FE 0F 69 */	bl Player_actor_CulcAnimation_Base2
/* 804F5624  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F5628  7C 08 03 A6 */	mtlr r0
/* 804F562C  38 21 00 10 */	addi r1, r1, 0x10
/* 804F5630  4E 80 00 20 */	blr 
