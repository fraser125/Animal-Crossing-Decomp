lbl_804EC5A0:
/* 804EC5A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EC5A4  7C 08 02 A6 */	mflr r0
/* 804EC5A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EC5AC  38 81 00 08 */	addi r4, r1, 8
/* 804EC5B0  4B FE 9F D9 */	bl Player_actor_CulcAnimation_Base2
/* 804EC5B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EC5B8  7C 08 03 A6 */	mtlr r0
/* 804EC5BC  38 21 00 10 */	addi r1, r1, 0x10
/* 804EC5C0  4E 80 00 20 */	blr 
