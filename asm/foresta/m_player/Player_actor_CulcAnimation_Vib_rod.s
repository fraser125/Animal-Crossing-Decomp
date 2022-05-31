lbl_804F6080:
/* 804F6080  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F6084  7C 08 02 A6 */	mflr r0
/* 804F6088  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F608C  38 81 00 08 */	addi r4, r1, 8
/* 804F6090  4B FE 04 F9 */	bl Player_actor_CulcAnimation_Base2
/* 804F6094  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F6098  7C 08 03 A6 */	mtlr r0
/* 804F609C  38 21 00 10 */	addi r1, r1, 0x10
/* 804F60A0  4E 80 00 20 */	blr 
