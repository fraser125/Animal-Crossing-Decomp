lbl_80506E2C:
/* 80506E2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80506E30  7C 08 02 A6 */	mflr r0
/* 80506E34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80506E38  4B FD 0E 61 */	bl Player_actor_BGcheck_common_type1
/* 80506E3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80506E40  7C 08 03 A6 */	mtlr r0
/* 80506E44  38 21 00 10 */	addi r1, r1, 0x10
/* 80506E48  4E 80 00 20 */	blr 
