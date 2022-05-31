lbl_803AC52C:
/* 803AC52C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803AC530  7C 08 02 A6 */	mflr r0
/* 803AC534  90 01 00 14 */	stw r0, 0x14(r1)
/* 803AC538  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803AC53C  7C BF 2B 78 */	mr r31, r5
/* 803AC540  4B FF FF BD */	bl mFRm_ReturnCheckSum
/* 803AC544  7C 1F 18 50 */	subf r0, r31, r3
/* 803AC548  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803AC54C  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 803AC550  7C 00 00 F8 */	nor r0, r0, r0
/* 803AC554  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 803AC558  38 03 00 01 */	addi r0, r3, 1
/* 803AC55C  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 803AC560  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803AC564  7C 08 03 A6 */	mtlr r0
/* 803AC568  38 21 00 10 */	addi r1, r1, 0x10
/* 803AC56C  4E 80 00 20 */	blr 
