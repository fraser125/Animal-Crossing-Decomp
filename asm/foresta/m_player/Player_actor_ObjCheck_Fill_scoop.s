lbl_804F8204:
/* 804F8204  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F8208  7C 08 02 A6 */	mflr r0
/* 804F820C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F8210  4B FD E9 25 */	bl Player_actor_Excute_Corect_forStand
/* 804F8214  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F8218  7C 08 03 A6 */	mtlr r0
/* 804F821C  38 21 00 10 */	addi r1, r1, 0x10
/* 804F8220  4E 80 00 20 */	blr 
