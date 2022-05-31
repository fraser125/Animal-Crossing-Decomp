lbl_8055279C:
/* 8055279C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805527A0  7C 08 02 A6 */	mflr r0
/* 805527A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805527A8  4B FF AF B1 */	bl aNSC_set_run_spd
/* 805527AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805527B0  7C 08 03 A6 */	mtlr r0
/* 805527B4  38 21 00 10 */	addi r1, r1, 0x10
/* 805527B8  4E 80 00 20 */	blr 
