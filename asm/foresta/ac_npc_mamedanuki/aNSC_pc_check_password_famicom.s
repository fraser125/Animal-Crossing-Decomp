lbl_8055AA84:
/* 8055AA84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055AA88  7C 08 02 A6 */	mflr r0
/* 8055AA8C  38 80 00 00 */	li r4, 0
/* 8055AA90  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055AA94  88 03 00 05 */	lbz r0, 5(r3)
/* 8055AA98  28 00 00 01 */	cmplwi r0, 1
/* 8055AA9C  40 82 00 1C */	bne lbl_8055AAB8
/* 8055AAA0  4B E6 40 A1 */	bl mMpswd_check_name
/* 8055AAA4  2C 03 00 01 */	cmpwi r3, 1
/* 8055AAA8  40 82 00 0C */	bne lbl_8055AAB4
/* 8055AAAC  38 80 00 01 */	li r4, 1
/* 8055AAB0  48 00 00 08 */	b lbl_8055AAB8
lbl_8055AAB4:
/* 8055AAB4  38 80 00 08 */	li r4, 8
lbl_8055AAB8:
/* 8055AAB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055AABC  7C 83 23 78 */	mr r3, r4
/* 8055AAC0  7C 08 03 A6 */	mtlr r0
/* 8055AAC4  38 21 00 10 */	addi r1, r1, 0x10
/* 8055AAC8  4E 80 00 20 */	blr 
