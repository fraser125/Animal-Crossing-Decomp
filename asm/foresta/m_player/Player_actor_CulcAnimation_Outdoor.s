lbl_804E9A38:
/* 804E9A38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E9A3C  7C 08 02 A6 */	mflr r0
/* 804E9A40  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E9A44  4B FE CB 45 */	bl Player_actor_CulcAnimation_Base2
/* 804E9A48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E9A4C  7C 08 03 A6 */	mtlr r0
/* 804E9A50  38 21 00 10 */	addi r1, r1, 0x10
/* 804E9A54  4E 80 00 20 */	blr 
