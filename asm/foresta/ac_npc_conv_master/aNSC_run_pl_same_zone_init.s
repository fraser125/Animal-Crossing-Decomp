lbl_8054AE84:
/* 8054AE84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054AE88  7C 08 02 A6 */	mflr r0
/* 8054AE8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054AE90  4B FF AF B1 */	bl aNSC_set_run_spd
/* 8054AE94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054AE98  7C 08 03 A6 */	mtlr r0
/* 8054AE9C  38 21 00 10 */	addi r1, r1, 0x10
/* 8054AEA0  4E 80 00 20 */	blr 
