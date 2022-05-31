lbl_804E579C:
/* 804E579C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E57A0  7C 08 02 A6 */	mflr r0
/* 804E57A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E57A8  38 81 00 08 */	addi r4, r1, 8
/* 804E57AC  4B FF 0D DD */	bl Player_actor_CulcAnimation_Base2
/* 804E57B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E57B4  7C 08 03 A6 */	mtlr r0
/* 804E57B8  38 21 00 10 */	addi r1, r1, 0x10
/* 804E57BC  4E 80 00 20 */	blr 
