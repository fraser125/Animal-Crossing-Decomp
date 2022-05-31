lbl_804F598C:
/* 804F598C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F5990  7C 08 02 A6 */	mflr r0
/* 804F5994  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F5998  4B FE 11 9D */	bl Player_actor_Excute_Corect_forStand
/* 804F599C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F59A0  7C 08 03 A6 */	mtlr r0
/* 804F59A4  38 21 00 10 */	addi r1, r1, 0x10
/* 804F59A8  4E 80 00 20 */	blr 
