lbl_803A3C38:
/* 803A3C38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A3C3C  7C 08 02 A6 */	mflr r0
/* 803A3C40  2C 03 00 20 */	cmpwi r3, 0x20
/* 803A3C44  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A3C48  41 82 00 0C */	beq lbl_803A3C54
/* 803A3C4C  2C 03 00 21 */	cmpwi r3, 0x21
/* 803A3C50  40 82 00 1C */	bne lbl_803A3C6C
lbl_803A3C54:
/* 803A3C54  38 60 08 0C */	li r3, 0x80c
/* 803A3C58  38 80 00 05 */	li r4, 5
/* 803A3C5C  38 A0 00 05 */	li r5, 5
/* 803A3C60  38 C0 00 0E */	li r6, 0xe
/* 803A3C64  38 E0 00 08 */	li r7, 8
/* 803A3C68  48 00 39 59 */	bl mFI_BlockUtNumtoFGSet
lbl_803A3C6C:
/* 803A3C6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A3C70  7C 08 03 A6 */	mtlr r0
/* 803A3C74  38 21 00 10 */	addi r1, r1, 0x10
/* 803A3C78  4E 80 00 20 */	blr 
