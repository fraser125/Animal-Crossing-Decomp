lbl_804F1790:
/* 804F1790  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F1794  7C 08 02 A6 */	mflr r0
/* 804F1798  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F179C  4B FE 53 99 */	bl Player_actor_Excute_Corect_forStand
/* 804F17A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F17A4  7C 08 03 A6 */	mtlr r0
/* 804F17A8  38 21 00 10 */	addi r1, r1, 0x10
/* 804F17AC  4E 80 00 20 */	blr 
