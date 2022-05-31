lbl_804F5370:
/* 804F5370  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F5374  7C 08 02 A6 */	mflr r0
/* 804F5378  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F537C  4B FE 29 1D */	bl Player_actor_BGcheck_common_type1
/* 804F5380  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F5384  7C 08 03 A6 */	mtlr r0
/* 804F5388  38 21 00 10 */	addi r1, r1, 0x10
/* 804F538C  4E 80 00 20 */	blr 
