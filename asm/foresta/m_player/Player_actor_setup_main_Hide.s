lbl_804FE914:
/* 804FE914  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FE918  7C 08 02 A6 */	mflr r0
/* 804FE91C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FE920  4B FD 6F D9 */	bl Player_actor_setup_main_Base
/* 804FE924  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FE928  7C 08 03 A6 */	mtlr r0
/* 804FE92C  38 21 00 10 */	addi r1, r1, 0x10
/* 804FE930  4E 80 00 20 */	blr 
