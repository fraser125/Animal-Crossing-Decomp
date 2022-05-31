lbl_804E498C:
/* 804E498C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E4990  7C 08 02 A6 */	mflr r0
/* 804E4994  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E4998  4B FF 0F 61 */	bl Player_actor_setup_main_Base
/* 804E499C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E49A0  7C 08 03 A6 */	mtlr r0
/* 804E49A4  38 21 00 10 */	addi r1, r1, 0x10
/* 804E49A8  4E 80 00 20 */	blr 
