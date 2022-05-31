lbl_804EE518:
/* 804EE518  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EE51C  7C 08 02 A6 */	mflr r0
/* 804EE520  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EE524  4B FE 80 65 */	bl Player_actor_CulcAnimation_Base2
/* 804EE528  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EE52C  7C 08 03 A6 */	mtlr r0
/* 804EE530  38 21 00 10 */	addi r1, r1, 0x10
/* 804EE534  4E 80 00 20 */	blr 
