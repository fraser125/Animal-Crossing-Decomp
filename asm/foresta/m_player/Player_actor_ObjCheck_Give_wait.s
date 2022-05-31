lbl_804FC1E4:
/* 804FC1E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FC1E8  7C 08 02 A6 */	mflr r0
/* 804FC1EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FC1F0  4B FD A9 45 */	bl Player_actor_Excute_Corect_forStand
/* 804FC1F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FC1F8  7C 08 03 A6 */	mtlr r0
/* 804FC1FC  38 21 00 10 */	addi r1, r1, 0x10
/* 804FC200  4E 80 00 20 */	blr 
