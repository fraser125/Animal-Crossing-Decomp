lbl_804E88E4:
/* 804E88E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E88E8  7C 08 02 A6 */	mflr r0
/* 804E88EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E88F0  4B FF FF 95 */	bl Player_actor_request_proc_index_fromTurn_dash_common
/* 804E88F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E88F8  7C 08 03 A6 */	mtlr r0
/* 804E88FC  38 21 00 10 */	addi r1, r1, 0x10
/* 804E8900  4E 80 00 20 */	blr 
