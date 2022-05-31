lbl_804E4D1C:
/* 804E4D1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E4D20  7C 08 02 A6 */	mflr r0
/* 804E4D24  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E4D28  4B FF 2F 71 */	bl Player_actor_BGcheck_common_type1
/* 804E4D2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E4D30  7C 08 03 A6 */	mtlr r0
/* 804E4D34  38 21 00 10 */	addi r1, r1, 0x10
/* 804E4D38  4E 80 00 20 */	blr 
