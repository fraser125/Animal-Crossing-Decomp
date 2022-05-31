lbl_804EB080:
/* 804EB080  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EB084  7C 08 02 A6 */	mflr r0
/* 804EB088  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EB08C  38 81 00 08 */	addi r4, r1, 8
/* 804EB090  4B FE B4 F9 */	bl Player_actor_CulcAnimation_Base2
/* 804EB094  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EB098  7C 08 03 A6 */	mtlr r0
/* 804EB09C  38 21 00 10 */	addi r1, r1, 0x10
/* 804EB0A0  4E 80 00 20 */	blr 
