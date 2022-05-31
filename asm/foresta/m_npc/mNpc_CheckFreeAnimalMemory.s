lbl_803CB870:
/* 803CB870  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803CB874  7C 08 02 A6 */	mflr r0
/* 803CB878  90 01 00 14 */	stw r0, 0x14(r1)
/* 803CB87C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803CB880  3B E0 00 00 */	li r31, 0
/* 803CB884  48 01 47 C1 */	bl mPr_NullCheckPersonalID
/* 803CB888  2C 03 00 01 */	cmpwi r3, 1
/* 803CB88C  40 82 00 08 */	bne lbl_803CB894
/* 803CB890  3B E0 00 01 */	li r31, 1
lbl_803CB894:
/* 803CB894  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803CB898  7F E3 FB 78 */	mr r3, r31
/* 803CB89C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803CB8A0  7C 08 03 A6 */	mtlr r0
/* 803CB8A4  38 21 00 10 */	addi r1, r1, 0x10
/* 803CB8A8  4E 80 00 20 */	blr 
