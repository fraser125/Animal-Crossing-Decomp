lbl_804E4F8C:
/* 804E4F8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E4F90  7C 08 02 A6 */	mflr r0
/* 804E4F94  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E4F98  38 81 00 08 */	addi r4, r1, 8
/* 804E4F9C  4B FF 15 ED */	bl Player_actor_CulcAnimation_Base2
/* 804E4FA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E4FA4  7C 08 03 A6 */	mtlr r0
/* 804E4FA8  38 21 00 10 */	addi r1, r1, 0x10
/* 804E4FAC  4E 80 00 20 */	blr 
