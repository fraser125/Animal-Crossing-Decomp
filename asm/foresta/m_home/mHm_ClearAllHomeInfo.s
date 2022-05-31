lbl_803B2F34:
/* 803B2F34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B2F38  7C 08 02 A6 */	mflr r0
/* 803B2F3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B2F40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803B2F44  3B E0 00 00 */	li r31, 0
lbl_803B2F48:
/* 803B2F48  7F E3 FB 78 */	mr r3, r31
/* 803B2F4C  4B FF FE 55 */	bl func_803B2DA0
/* 803B2F50  3B FF 00 01 */	addi r31, r31, 1
/* 803B2F54  2C 1F 00 04 */	cmpwi r31, 4
/* 803B2F58  41 80 FF F0 */	blt lbl_803B2F48
/* 803B2F5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B2F60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803B2F64  7C 08 03 A6 */	mtlr r0
/* 803B2F68  38 21 00 10 */	addi r1, r1, 0x10
/* 803B2F6C  4E 80 00 20 */	blr 
