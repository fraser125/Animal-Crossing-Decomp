lbl_805076A0:
/* 805076A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805076A4  7C 08 02 A6 */	mflr r0
/* 805076A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805076AC  38 81 00 08 */	addi r4, r1, 8
/* 805076B0  4B FC EE D9 */	bl Player_actor_CulcAnimation_Base2
/* 805076B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805076B8  7C 08 03 A6 */	mtlr r0
/* 805076BC  38 21 00 10 */	addi r1, r1, 0x10
/* 805076C0  4E 80 00 20 */	blr 
