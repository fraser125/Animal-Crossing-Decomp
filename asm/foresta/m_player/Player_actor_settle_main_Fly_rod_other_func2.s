lbl_804E004C:
/* 804E004C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E0050  7C 08 02 A6 */	mflr r0
/* 804E0054  7C 83 23 78 */	mr r3, r4
/* 804E0058  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E005C  4B FF AC C1 */	bl Player_actor_request_camera2_change_priority
/* 804E0060  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E0064  7C 08 03 A6 */	mtlr r0
/* 804E0068  38 21 00 10 */	addi r1, r1, 0x10
/* 804E006C  4E 80 00 20 */	blr 
