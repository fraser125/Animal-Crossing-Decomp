lbl_804FA370:
/* 804FA370  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FA374  7C 08 02 A6 */	mflr r0
/* 804FA378  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FA37C  4B FD D9 1D */	bl Player_actor_BGcheck_common_type1
/* 804FA380  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FA384  7C 08 03 A6 */	mtlr r0
/* 804FA388  38 21 00 10 */	addi r1, r1, 0x10
/* 804FA38C  4E 80 00 20 */	blr 
