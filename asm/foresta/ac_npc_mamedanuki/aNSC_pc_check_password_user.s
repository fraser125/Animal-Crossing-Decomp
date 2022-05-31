lbl_8055ABCC:
/* 8055ABCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055ABD0  7C 08 02 A6 */	mflr r0
/* 8055ABD4  38 80 00 00 */	li r4, 0
/* 8055ABD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055ABDC  88 03 00 05 */	lbz r0, 5(r3)
/* 8055ABE0  28 00 00 01 */	cmplwi r0, 1
/* 8055ABE4  40 82 00 1C */	bne lbl_8055AC00
/* 8055ABE8  4B E6 3F 59 */	bl mMpswd_check_name
/* 8055ABEC  2C 03 00 01 */	cmpwi r3, 1
/* 8055ABF0  40 82 00 0C */	bne lbl_8055ABFC
/* 8055ABF4  38 80 00 05 */	li r4, 5
/* 8055ABF8  48 00 00 08 */	b lbl_8055AC00
lbl_8055ABFC:
/* 8055ABFC  38 80 00 08 */	li r4, 8
lbl_8055AC00:
/* 8055AC00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055AC04  7C 83 23 78 */	mr r3, r4
/* 8055AC08  7C 08 03 A6 */	mtlr r0
/* 8055AC0C  38 21 00 10 */	addi r1, r1, 0x10
/* 8055AC10  4E 80 00 20 */	blr 
