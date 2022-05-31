lbl_803C9938:
/* 803C9938  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C993C  7C 08 02 A6 */	mflr r0
/* 803C9940  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C9944  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C9948  3B E0 00 00 */	li r31, 0
lbl_803C994C:
/* 803C994C  7F E3 FB 78 */	mr r3, r31
/* 803C9950  48 00 00 25 */	bl mNW_InitOneMyOriginal
/* 803C9954  3B FF 00 01 */	addi r31, r31, 1
/* 803C9958  2C 1F 00 04 */	cmpwi r31, 4
/* 803C995C  41 80 FF F0 */	blt lbl_803C994C
/* 803C9960  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C9964  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C9968  7C 08 03 A6 */	mtlr r0
/* 803C996C  38 21 00 10 */	addi r1, r1, 0x10
/* 803C9970  4E 80 00 20 */	blr 
