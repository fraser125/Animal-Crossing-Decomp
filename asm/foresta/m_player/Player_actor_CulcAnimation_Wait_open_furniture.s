lbl_804EB824:
/* 804EB824  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EB828  7C 08 02 A6 */	mflr r0
/* 804EB82C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EB830  38 81 00 08 */	addi r4, r1, 8
/* 804EB834  4B FE AD 55 */	bl Player_actor_CulcAnimation_Base2
/* 804EB838  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EB83C  7C 08 03 A6 */	mtlr r0
/* 804EB840  38 21 00 10 */	addi r1, r1, 0x10
/* 804EB844  4E 80 00 20 */	blr 
