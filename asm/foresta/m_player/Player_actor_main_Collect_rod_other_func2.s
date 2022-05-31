lbl_804DFFE8:
/* 804DFFE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DFFEC  7C 08 02 A6 */	mflr r0
/* 804DFFF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DFFF4  4B FF AC 99 */	bl Player_actor_request_camera2_main_simple_return
/* 804DFFF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DFFFC  7C 08 03 A6 */	mtlr r0
/* 804E0000  38 21 00 10 */	addi r1, r1, 0x10
/* 804E0004  4E 80 00 20 */	blr 
