lbl_803900A4:
/* 803900A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803900A8  7C 08 02 A6 */	mflr r0
/* 803900AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803900B0  48 01 65 41 */	bl mFI_UtNum2UtCol
/* 803900B4  28 03 00 00 */	cmplwi r3, 0
/* 803900B8  41 82 00 10 */	beq lbl_803900C8
/* 803900BC  88 03 00 03 */	lbz r0, 3(r3)
/* 803900C0  54 03 06 BE */	clrlwi r3, r0, 0x1a
/* 803900C4  48 00 00 08 */	b lbl_803900CC
lbl_803900C8:
/* 803900C8  38 60 00 00 */	li r3, 0
lbl_803900CC:
/* 803900CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803900D0  7C 08 03 A6 */	mtlr r0
/* 803900D4  38 21 00 10 */	addi r1, r1, 0x10
/* 803900D8  4E 80 00 20 */	blr 
