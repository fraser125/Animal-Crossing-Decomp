lbl_8050699C:
/* 8050699C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805069A0  7C 08 02 A6 */	mflr r0
/* 805069A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805069A8  38 81 00 08 */	addi r4, r1, 8
/* 805069AC  4B FC FB DD */	bl Player_actor_CulcAnimation_Base2
/* 805069B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805069B4  7C 08 03 A6 */	mtlr r0
/* 805069B8  38 21 00 10 */	addi r1, r1, 0x10
/* 805069BC  4E 80 00 20 */	blr 
