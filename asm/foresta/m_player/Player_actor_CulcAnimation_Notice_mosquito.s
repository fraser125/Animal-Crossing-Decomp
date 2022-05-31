lbl_80505D1C:
/* 80505D1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80505D20  7C 08 02 A6 */	mflr r0
/* 80505D24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80505D28  38 81 00 08 */	addi r4, r1, 8
/* 80505D2C  4B FD 08 5D */	bl Player_actor_CulcAnimation_Base2
/* 80505D30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80505D34  7C 08 03 A6 */	mtlr r0
/* 80505D38  38 21 00 10 */	addi r1, r1, 0x10
/* 80505D3C  4E 80 00 20 */	blr 
