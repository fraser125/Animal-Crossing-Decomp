lbl_804E6E4C:
/* 804E6E4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E6E50  7C 08 02 A6 */	mflr r0
/* 804E6E54  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E6E58  4B FF F8 09 */	bl Player_actor_Movement_Walk
/* 804E6E5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E6E60  7C 08 03 A6 */	mtlr r0
/* 804E6E64  38 21 00 10 */	addi r1, r1, 0x10
/* 804E6E68  4E 80 00 20 */	blr 
