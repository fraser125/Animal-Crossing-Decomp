lbl_80585F28:
/* 80585F28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80585F2C  7C 08 02 A6 */	mflr r0
/* 80585F30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80585F34  4B FF AF B1 */	bl aNSC_set_run_spd
/* 80585F38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80585F3C  7C 08 03 A6 */	mtlr r0
/* 80585F40  38 21 00 10 */	addi r1, r1, 0x10
/* 80585F44  4E 80 00 20 */	blr 
