lbl_804F39A0:
/* 804F39A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F39A4  7C 08 02 A6 */	mflr r0
/* 804F39A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F39AC  4B FE 42 ED */	bl Player_actor_BGcheck_common_type1
/* 804F39B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F39B4  7C 08 03 A6 */	mtlr r0
/* 804F39B8  38 21 00 10 */	addi r1, r1, 0x10
/* 804F39BC  4E 80 00 20 */	blr 
