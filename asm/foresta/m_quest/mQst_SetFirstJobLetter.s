lbl_803E40A0:
/* 803E40A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E40A4  7C 08 02 A6 */	mflr r0
/* 803E40A8  38 A0 00 06 */	li r5, 6
/* 803E40AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E40B0  4B FF FF 39 */	bl mQst_SetFirstJobLetter_common
/* 803E40B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E40B8  7C 08 03 A6 */	mtlr r0
/* 803E40BC  38 21 00 10 */	addi r1, r1, 0x10
/* 803E40C0  4E 80 00 20 */	blr 
