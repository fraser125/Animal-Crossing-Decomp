lbl_8054AE44:
/* 8054AE44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054AE48  7C 08 02 A6 */	mflr r0
/* 8054AE4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054AE50  4B FF AF A9 */	bl aNSC_set_stop_spd
/* 8054AE54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054AE58  7C 08 03 A6 */	mtlr r0
/* 8054AE5C  38 21 00 10 */	addi r1, r1, 0x10
/* 8054AE60  4E 80 00 20 */	blr 
