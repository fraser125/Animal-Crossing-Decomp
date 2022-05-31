lbl_804E0028:
/* 804E0028  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E002C  7C 08 02 A6 */	mflr r0
/* 804E0030  7C 83 23 78 */	mr r3, r4
/* 804E0034  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E0038  4B FF AC A5 */	bl Player_actor_request_camera2_main_normal
/* 804E003C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E0040  7C 08 03 A6 */	mtlr r0
/* 804E0044  38 21 00 10 */	addi r1, r1, 0x10
/* 804E0048  4E 80 00 20 */	blr 
