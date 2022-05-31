lbl_804E0008:
/* 804E0008  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E000C  7C 08 02 A6 */	mflr r0
/* 804E0010  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E0014  4B FF AC 79 */	bl Player_actor_request_camera2_main_simple_return
/* 804E0018  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E001C  7C 08 03 A6 */	mtlr r0
/* 804E0020  38 21 00 10 */	addi r1, r1, 0x10
/* 804E0024  4E 80 00 20 */	blr 
