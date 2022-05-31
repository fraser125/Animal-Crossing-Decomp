lbl_804F4D28:
/* 804F4D28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F4D2C  7C 08 02 A6 */	mflr r0
/* 804F4D30  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F4D34  4B FE 18 55 */	bl Player_actor_CulcAnimation_Base2
/* 804F4D38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F4D3C  7C 08 03 A6 */	mtlr r0
/* 804F4D40  38 21 00 10 */	addi r1, r1, 0x10
/* 804F4D44  4E 80 00 20 */	blr 
