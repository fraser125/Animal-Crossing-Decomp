lbl_803D5198:
/* 803D5198  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D519C  7C 08 02 A6 */	mflr r0
/* 803D51A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D51A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D51A8  7C 7F 1B 78 */	mr r31, r3
/* 803D51AC  48 00 AE E1 */	bl mPr_ClearPersonalID
/* 803D51B0  38 00 00 00 */	li r0, 0
/* 803D51B4  B0 1F 00 14 */	sth r0, 0x14(r31)
/* 803D51B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D51BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D51C0  7C 08 03 A6 */	mtlr r0
/* 803D51C4  38 21 00 10 */	addi r1, r1, 0x10
/* 803D51C8  4E 80 00 20 */	blr 
