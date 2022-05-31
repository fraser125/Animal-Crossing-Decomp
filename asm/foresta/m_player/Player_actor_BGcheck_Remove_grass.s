lbl_805036B0:
/* 805036B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805036B4  7C 08 02 A6 */	mflr r0
/* 805036B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805036BC  4B FD 45 DD */	bl Player_actor_BGcheck_common_type1
/* 805036C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805036C4  7C 08 03 A6 */	mtlr r0
/* 805036C8  38 21 00 10 */	addi r1, r1, 0x10
/* 805036CC  4E 80 00 20 */	blr 
