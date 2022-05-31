lbl_804FE310:
/* 804FE310  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FE314  7C 08 02 A6 */	mflr r0
/* 804FE318  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FE31C  38 81 00 08 */	addi r4, r1, 8
/* 804FE320  4B FD 82 69 */	bl Player_actor_CulcAnimation_Base2
/* 804FE324  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FE328  7C 08 03 A6 */	mtlr r0
/* 804FE32C  38 21 00 10 */	addi r1, r1, 0x10
/* 804FE330  4E 80 00 20 */	blr 
