lbl_804E5518:
/* 804E5518  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E551C  7C 08 02 A6 */	mflr r0
/* 804E5520  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E5524  4B FF 27 75 */	bl Player_actor_BGcheck_common_type1
/* 804E5528  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E552C  7C 08 03 A6 */	mtlr r0
/* 804E5530  38 21 00 10 */	addi r1, r1, 0x10
/* 804E5534  4E 80 00 20 */	blr 
