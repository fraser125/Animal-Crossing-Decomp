lbl_8055B9CC:
/* 8055B9CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055B9D0  7C 08 02 A6 */	mflr r0
/* 8055B9D4  38 A0 00 02 */	li r5, 2
/* 8055B9D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055B9DC  48 00 33 F5 */	bl aNSC_setupAction
/* 8055B9E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055B9E4  7C 08 03 A6 */	mtlr r0
/* 8055B9E8  38 21 00 10 */	addi r1, r1, 0x10
/* 8055B9EC  4E 80 00 20 */	blr 
