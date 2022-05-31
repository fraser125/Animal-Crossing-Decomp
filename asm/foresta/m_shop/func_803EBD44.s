lbl_803EBD44:
/* 803EBD44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EBD48  7C 08 02 A6 */	mflr r0
/* 803EBD4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EBD50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803EBD54  7C 7F 1B 79 */	or. r31, r3, r3
/* 803EBD58  41 80 00 34 */	blt lbl_803EBD8C
/* 803EBD5C  2C 1F 04 F2 */	cmpwi r31, 0x4f2
/* 803EBD60  40 80 00 2C */	bge lbl_803EBD8C
/* 803EBD64  4B FF A2 19 */	bl mRmTp_CheckFtrBirthInfoTop
/* 803EBD68  7C 03 F8 AE */	lbzx r0, r3, r31
/* 803EBD6C  28 00 00 10 */	cmplwi r0, 0x10
/* 803EBD70  41 82 00 0C */	beq lbl_803EBD7C
/* 803EBD74  28 00 00 1B */	cmplwi r0, 0x1b
/* 803EBD78  40 82 00 0C */	bne lbl_803EBD84
lbl_803EBD7C:
/* 803EBD7C  38 60 00 00 */	li r3, 0
/* 803EBD80  48 00 00 10 */	b lbl_803EBD90
lbl_803EBD84:
/* 803EBD84  38 60 00 01 */	li r3, 1
/* 803EBD88  48 00 00 08 */	b lbl_803EBD90
lbl_803EBD8C:
/* 803EBD8C  38 60 00 00 */	li r3, 0
lbl_803EBD90:
/* 803EBD90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EBD94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803EBD98  7C 08 03 A6 */	mtlr r0
/* 803EBD9C  38 21 00 10 */	addi r1, r1, 0x10
/* 803EBDA0  4E 80 00 20 */	blr 
