lbl_8054AEA4:
/* 8054AEA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054AEA8  7C 08 02 A6 */	mflr r0
/* 8054AEAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054AEB0  4B FF AF 49 */	bl aNSC_set_stop_spd
/* 8054AEB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054AEB8  7C 08 03 A6 */	mtlr r0
/* 8054AEBC  38 21 00 10 */	addi r1, r1, 0x10
/* 8054AEC0  4E 80 00 20 */	blr 
