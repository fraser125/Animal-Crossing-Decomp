lbl_804EEC48:
/* 804EEC48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EEC4C  7C 08 02 A6 */	mflr r0
/* 804EEC50  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EEC54  38 81 00 08 */	addi r4, r1, 8
/* 804EEC58  4B FE 79 31 */	bl Player_actor_CulcAnimation_Base2
/* 804EEC5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EEC60  7C 08 03 A6 */	mtlr r0
/* 804EEC64  38 21 00 10 */	addi r1, r1, 0x10
/* 804EEC68  4E 80 00 20 */	blr 
