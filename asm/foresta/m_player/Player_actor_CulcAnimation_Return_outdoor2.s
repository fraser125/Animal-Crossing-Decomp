lbl_804E5A64:
/* 804E5A64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E5A68  7C 08 02 A6 */	mflr r0
/* 804E5A6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E5A70  38 81 00 08 */	addi r4, r1, 8
/* 804E5A74  4B FF 0B 15 */	bl Player_actor_CulcAnimation_Base2
/* 804E5A78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E5A7C  7C 08 03 A6 */	mtlr r0
/* 804E5A80  38 21 00 10 */	addi r1, r1, 0x10
/* 804E5A84  4E 80 00 20 */	blr 
