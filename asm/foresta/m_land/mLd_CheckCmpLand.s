lbl_803B3878:
/* 803B3878  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B387C  7C 08 02 A6 */	mflr r0
/* 803B3880  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 803B3884  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B3888  54 C0 04 3E */	clrlwi r0, r6, 0x10
/* 803B388C  7C 04 00 40 */	cmplw r4, r0
/* 803B3890  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803B3894  3B E0 00 00 */	li r31, 0
/* 803B3898  40 82 00 18 */	bne lbl_803B38B0
/* 803B389C  7C A4 2B 78 */	mr r4, r5
/* 803B38A0  4B FF FF 6D */	bl mLd_CheckCmpLandName
/* 803B38A4  2C 03 00 01 */	cmpwi r3, 1
/* 803B38A8  40 82 00 08 */	bne lbl_803B38B0
/* 803B38AC  3B E0 00 01 */	li r31, 1
lbl_803B38B0:
/* 803B38B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B38B4  7F E3 FB 78 */	mr r3, r31
/* 803B38B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803B38BC  7C 08 03 A6 */	mtlr r0
/* 803B38C0  38 21 00 10 */	addi r1, r1, 0x10
/* 803B38C4  4E 80 00 20 */	blr 
