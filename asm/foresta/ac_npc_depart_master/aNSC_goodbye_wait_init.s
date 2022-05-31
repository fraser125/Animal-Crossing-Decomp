lbl_805527BC:
/* 805527BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805527C0  7C 08 02 A6 */	mflr r0
/* 805527C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805527C8  4B FF AF 49 */	bl aNSC_set_stop_spd
/* 805527CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805527D0  7C 08 03 A6 */	mtlr r0
/* 805527D4  38 21 00 10 */	addi r1, r1, 0x10
/* 805527D8  4E 80 00 20 */	blr 
