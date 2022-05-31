lbl_804E7FF0:
/* 804E7FF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E7FF4  7C 08 02 A6 */	mflr r0
/* 804E7FF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E7FFC  4B FE FC 9D */	bl Player_actor_BGcheck_common_type1
/* 804E8000  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E8004  7C 08 03 A6 */	mtlr r0
/* 804E8008  38 21 00 10 */	addi r1, r1, 0x10
/* 804E800C  4E 80 00 20 */	blr 
