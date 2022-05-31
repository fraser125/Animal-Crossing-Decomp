lbl_805AA21C:
/* 805AA21C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805AA220  7C 08 02 A6 */	mflr r0
/* 805AA224  38 60 00 05 */	li r3, 5
/* 805AA228  90 01 00 14 */	stw r0, 0x14(r1)
/* 805AA22C  4B DF 07 ED */	bl mEv_CheckEvent
/* 805AA230  30 03 FF FF */	addic r0, r3, -1
/* 805AA234  7C 60 19 10 */	subfe r3, r0, r3
/* 805AA238  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805AA23C  38 63 00 01 */	addi r3, r3, 1
/* 805AA240  7C 08 03 A6 */	mtlr r0
/* 805AA244  38 21 00 10 */	addi r1, r1, 0x10
/* 805AA248  4E 80 00 20 */	blr 
