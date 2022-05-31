lbl_805059A4:
/* 805059A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805059A8  7C 08 02 A6 */	mflr r0
/* 805059AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805059B0  38 81 00 08 */	addi r4, r1, 8
/* 805059B4  4B FD 0B D5 */	bl Player_actor_CulcAnimation_Base2
/* 805059B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805059BC  7C 08 03 A6 */	mtlr r0
/* 805059C0  38 21 00 10 */	addi r1, r1, 0x10
/* 805059C4  4E 80 00 20 */	blr 
