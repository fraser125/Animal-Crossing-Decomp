lbl_804F3980:
/* 804F3980  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F3984  7C 08 02 A6 */	mflr r0
/* 804F3988  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F398C  4B FE 31 A9 */	bl Player_actor_Excute_Corect_forStand
/* 804F3990  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F3994  7C 08 03 A6 */	mtlr r0
/* 804F3998  38 21 00 10 */	addi r1, r1, 0x10
/* 804F399C  4E 80 00 20 */	blr 
