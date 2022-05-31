lbl_804F1CE4:
/* 804F1CE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F1CE8  7C 08 02 A6 */	mflr r0
/* 804F1CEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F1CF0  4B FE 5F A9 */	bl Player_actor_BGcheck_common_type1
/* 804F1CF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F1CF8  7C 08 03 A6 */	mtlr r0
/* 804F1CFC  38 21 00 10 */	addi r1, r1, 0x10
/* 804F1D00  4E 80 00 20 */	blr 
