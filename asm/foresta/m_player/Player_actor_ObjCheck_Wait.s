lbl_804E5E5C:
/* 804E5E5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E5E60  7C 08 02 A6 */	mflr r0
/* 804E5E64  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E5E68  4B FF 0C CD */	bl Player_actor_Excute_Corect_forStand
/* 804E5E6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E5E70  7C 08 03 A6 */	mtlr r0
/* 804E5E74  38 21 00 10 */	addi r1, r1, 0x10
/* 804E5E78  4E 80 00 20 */	blr 
