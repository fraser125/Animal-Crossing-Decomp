lbl_804E0878:
/* 804E0878  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E087C  7C 08 02 A6 */	mflr r0
/* 804E0880  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E0884  4B FF FF 89 */	bl Player_actor_SetActorUki
/* 804E0888  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E088C  7C 08 03 A6 */	mtlr r0
/* 804E0890  38 21 00 10 */	addi r1, r1, 0x10
/* 804E0894  4E 80 00 20 */	blr 
