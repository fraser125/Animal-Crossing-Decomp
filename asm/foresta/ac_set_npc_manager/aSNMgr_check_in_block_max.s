lbl_80498858:
/* 80498858  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049885C  7C 08 02 A6 */	mflr r0
/* 80498860  90 01 00 14 */	stw r0, 0x14(r1)
/* 80498864  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80498868  3B E0 00 00 */	li r31, 0
/* 8049886C  93 C1 00 08 */	stw r30, 8(r1)
/* 80498870  7C BE 2B 78 */	mr r30, r5
/* 80498874  4B F0 C9 45 */	bl mFI_GetBlockNum
/* 80498878  7C 1E 18 AE */	lbzx r0, r30, r3
/* 8049887C  28 00 00 03 */	cmplwi r0, 3
/* 80498880  41 80 00 08 */	blt lbl_80498888
/* 80498884  3B E0 00 01 */	li r31, 1
lbl_80498888:
/* 80498888  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049888C  7F E3 FB 78 */	mr r3, r31
/* 80498890  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80498894  83 C1 00 08 */	lwz r30, 8(r1)
/* 80498898  7C 08 03 A6 */	mtlr r0
/* 8049889C  38 21 00 10 */	addi r1, r1, 0x10
/* 804988A0  4E 80 00 20 */	blr 
