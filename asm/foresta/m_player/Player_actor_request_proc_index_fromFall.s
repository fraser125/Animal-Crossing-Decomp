lbl_804E8C0C:
/* 804E8C0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E8C10  7C 08 02 A6 */	mflr r0
/* 804E8C14  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E8C18  4B FF FF 59 */	bl Player_actor_request_proc_index_fromFall_common
/* 804E8C1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E8C20  7C 08 03 A6 */	mtlr r0
/* 804E8C24  38 21 00 10 */	addi r1, r1, 0x10
/* 804E8C28  4E 80 00 20 */	blr 
