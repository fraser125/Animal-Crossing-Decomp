lbl_804FD088:
/* 804FD088  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FD08C  7C 08 02 A6 */	mflr r0
/* 804FD090  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FD094  4B FF DD 1D */	bl Player_actor_SetEffect_FromDemoOrder_common
/* 804FD098  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FD09C  7C 08 03 A6 */	mtlr r0
/* 804FD0A0  38 21 00 10 */	addi r1, r1, 0x10
/* 804FD0A4  4E 80 00 20 */	blr 
