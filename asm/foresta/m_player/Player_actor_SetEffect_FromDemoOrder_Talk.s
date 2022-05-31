lbl_804FAE3C:
/* 804FAE3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FAE40  7C 08 02 A6 */	mflr r0
/* 804FAE44  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FAE48  4B FF FF 69 */	bl Player_actor_SetEffect_FromDemoOrder_common
/* 804FAE4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FAE50  7C 08 03 A6 */	mtlr r0
/* 804FAE54  38 21 00 10 */	addi r1, r1, 0x10
/* 804FAE58  4E 80 00 20 */	blr 
