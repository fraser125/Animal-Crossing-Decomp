lbl_80595EE4:
/* 80595EE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80595EE8  7C 08 02 A6 */	mflr r0
/* 80595EEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80595EF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80595EF4  7C 7F 1B 78 */	mr r31, r3
/* 80595EF8  93 C1 00 08 */	stw r30, 8(r1)
/* 80595EFC  7C 9E 23 78 */	mr r30, r4
/* 80595F00  4B FF FD 8D */	bl aIAB_BGcheck
/* 80595F04  80 7F 02 28 */	lwz r3, 0x228(r31)
/* 80595F08  38 03 FF FF */	addi r0, r3, -1
/* 80595F0C  90 1F 02 28 */	stw r0, 0x228(r31)
/* 80595F10  80 1F 02 28 */	lwz r0, 0x228(r31)
/* 80595F14  2C 00 00 00 */	cmpwi r0, 0
/* 80595F18  41 81 00 14 */	bgt lbl_80595F2C
/* 80595F1C  7F E3 FB 78 */	mr r3, r31
/* 80595F20  7F C5 F3 78 */	mr r5, r30
/* 80595F24  38 80 00 02 */	li r4, 2
/* 80595F28  48 00 02 91 */	bl aIAB_setupAction
lbl_80595F2C:
/* 80595F2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80595F30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80595F34  83 C1 00 08 */	lwz r30, 8(r1)
/* 80595F38  7C 08 03 A6 */	mtlr r0
/* 80595F3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80595F40  4E 80 00 20 */	blr 
