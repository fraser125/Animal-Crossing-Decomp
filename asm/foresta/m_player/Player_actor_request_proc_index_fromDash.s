lbl_804E79BC:
/* 804E79BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E79C0  7C 08 02 A6 */	mflr r0
/* 804E79C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E79C8  4B FF FD D9 */	bl Player_actor_request_proc_index_fromDash_common
/* 804E79CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E79D0  7C 08 03 A6 */	mtlr r0
/* 804E79D4  38 21 00 10 */	addi r1, r1, 0x10
/* 804E79D8  4E 80 00 20 */	blr 
