lbl_803E40C4:
/* 803E40C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E40C8  7C 08 02 A6 */	mflr r0
/* 803E40CC  38 A0 00 0A */	li r5, 0xa
/* 803E40D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E40D4  4B FF FF 15 */	bl mQst_SetFirstJobLetter_common
/* 803E40D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E40DC  7C 08 03 A6 */	mtlr r0
/* 803E40E0  38 21 00 10 */	addi r1, r1, 0x10
/* 803E40E4  4E 80 00 20 */	blr 
