lbl_804E8ECC:
/* 804E8ECC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E8ED0  7C 08 02 A6 */	mflr r0
/* 804E8ED4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E8ED8  38 81 00 08 */	addi r4, r1, 8
/* 804E8EDC  4B FE D6 AD */	bl Player_actor_CulcAnimation_Base2
/* 804E8EE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E8EE4  7C 08 03 A6 */	mtlr r0
/* 804E8EE8  38 21 00 10 */	addi r1, r1, 0x10
/* 804E8EEC  4E 80 00 20 */	blr 
