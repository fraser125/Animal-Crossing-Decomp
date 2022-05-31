lbl_804E8B50:
/* 804E8B50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E8B54  7C 08 02 A6 */	mflr r0
/* 804E8B58  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E8B5C  4B FE F1 3D */	bl Player_actor_BGcheck_common_type1
/* 804E8B60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E8B64  7C 08 03 A6 */	mtlr r0
/* 804E8B68  38 21 00 10 */	addi r1, r1, 0x10
/* 804E8B6C  4E 80 00 20 */	blr 
