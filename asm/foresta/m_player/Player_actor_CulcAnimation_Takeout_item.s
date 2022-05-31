lbl_804FC594:
/* 804FC594  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FC598  7C 08 02 A6 */	mflr r0
/* 804FC59C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FC5A0  4B FD 9F E9 */	bl Player_actor_CulcAnimation_Base2
/* 804FC5A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FC5A8  7C 08 03 A6 */	mtlr r0
/* 804FC5AC  38 21 00 10 */	addi r1, r1, 0x10
/* 804FC5B0  4E 80 00 20 */	blr 
