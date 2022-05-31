lbl_804F7E20:
/* 804F7E20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F7E24  7C 08 02 A6 */	mflr r0
/* 804F7E28  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F7E2C  4B FD E7 5D */	bl Player_actor_CulcAnimation_Base2
/* 804F7E30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F7E34  7C 08 03 A6 */	mtlr r0
/* 804F7E38  38 21 00 10 */	addi r1, r1, 0x10
/* 804F7E3C  4E 80 00 20 */	blr 
