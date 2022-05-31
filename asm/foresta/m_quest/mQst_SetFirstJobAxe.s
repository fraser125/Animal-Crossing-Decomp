lbl_803E42F8:
/* 803E42F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E42FC  7C 08 02 A6 */	mflr r0
/* 803E4300  38 E0 00 08 */	li r7, 8
/* 803E4304  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E4308  4B FF FF 41 */	bl mQst_SetFirstJobAxe_common
/* 803E430C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E4310  7C 08 03 A6 */	mtlr r0
/* 803E4314  38 21 00 10 */	addi r1, r1, 0x10
/* 803E4318  4E 80 00 20 */	blr 
