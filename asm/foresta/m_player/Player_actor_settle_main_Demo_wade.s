lbl_804FE63C:
/* 804FE63C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FE640  7C 08 02 A6 */	mflr r0
/* 804FE644  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FE648  4B E9 BC 59 */	bl mDemo_End
/* 804FE64C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FE650  7C 08 03 A6 */	mtlr r0
/* 804FE654  38 21 00 10 */	addi r1, r1, 0x10
/* 804FE658  4E 80 00 20 */	blr 
