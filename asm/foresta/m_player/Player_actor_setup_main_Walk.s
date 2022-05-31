lbl_804E624C:
/* 804E624C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E6250  7C 08 02 A6 */	mflr r0
/* 804E6254  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E6258  4B FF FE C9 */	bl Player_actor_setup_main_Walk_common
/* 804E625C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E6260  7C 08 03 A6 */	mtlr r0
/* 804E6264  38 21 00 10 */	addi r1, r1, 0x10
/* 804E6268  4E 80 00 20 */	blr 
