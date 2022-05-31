lbl_804E949C:
/* 804E949C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E94A0  7C 08 02 A6 */	mflr r0
/* 804E94A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E94A8  4B FE E8 49 */	bl Player_actor_BGcheck_common_type2
/* 804E94AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E94B0  7C 08 03 A6 */	mtlr r0
/* 804E94B4  38 21 00 10 */	addi r1, r1, 0x10
/* 804E94B8  4E 80 00 20 */	blr 
