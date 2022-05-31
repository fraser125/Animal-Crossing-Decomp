lbl_804F34E4:
/* 804F34E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F34E8  7C 08 02 A6 */	mflr r0
/* 804F34EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F34F0  4B FE 47 A9 */	bl Player_actor_BGcheck_common_type1
/* 804F34F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F34F8  7C 08 03 A6 */	mtlr r0
/* 804F34FC  38 21 00 10 */	addi r1, r1, 0x10
/* 804F3500  4E 80 00 20 */	blr 
