lbl_80567EEC:
/* 80567EEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80567EF0  7C 08 02 A6 */	mflr r0
/* 80567EF4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80567EF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80567EFC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80567F00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80567F04  3B E3 00 20 */	addi r31, r3, 0x20
/* 80567F08  93 C1 00 08 */	stw r30, 8(r1)
/* 80567F0C  3B C0 00 00 */	li r30, 0
lbl_80567F10:
/* 80567F10  7F E3 FB 78 */	mr r3, r31
/* 80567F14  4B E7 81 31 */	bl mPr_NullCheckPersonalID
/* 80567F18  2C 03 00 01 */	cmpwi r3, 1
/* 80567F1C  41 82 00 14 */	beq lbl_80567F30
/* 80567F20  3B DE 00 01 */	addi r30, r30, 1
/* 80567F24  3B FF 24 40 */	addi r31, r31, 0x2440
/* 80567F28  2C 1E 00 04 */	cmpwi r30, 4
/* 80567F2C  41 80 FF E4 */	blt lbl_80567F10
lbl_80567F30:
/* 80567F30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80567F34  7F C3 F3 78 */	mr r3, r30
/* 80567F38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80567F3C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80567F40  7C 08 03 A6 */	mtlr r0
/* 80567F44  38 21 00 10 */	addi r1, r1, 0x10
/* 80567F48  4E 80 00 20 */	blr 
