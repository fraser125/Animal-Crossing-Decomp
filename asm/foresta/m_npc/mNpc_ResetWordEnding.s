lbl_803CEA04:
/* 803CEA04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803CEA08  7C 08 02 A6 */	mflr r0
/* 803CEA0C  28 03 00 00 */	cmplwi r3, 0
/* 803CEA10  90 01 00 14 */	stw r0, 0x14(r1)
/* 803CEA14  41 82 00 44 */	beq lbl_803CEA58
/* 803CEA18  88 03 00 02 */	lbz r0, 2(r3)
/* 803CEA1C  28 00 00 04 */	cmplwi r0, 4
/* 803CEA20  40 82 00 38 */	bne lbl_803CEA58
/* 803CEA24  80 83 01 7C */	lwz r4, 0x17c(r3)
/* 803CEA28  28 04 00 00 */	cmplwi r4, 0
/* 803CEA2C  41 82 00 2C */	beq lbl_803CEA58
/* 803CEA30  A0 04 00 00 */	lhz r0, 0(r4)
/* 803CEA34  3C 60 80 97 */	lis r3, data_8096CC90@ha /* 0x8096CC90@ha */
/* 803CEA38  38 A3 CC 90 */	addi r5, r3, data_8096CC90@l /* 0x8096CC90@l */
/* 803CEA3C  38 64 08 9D */	addi r3, r4, 0x89d
/* 803CEA40  54 00 05 3E */	clrlwi r0, r0, 0x14
/* 803CEA44  38 80 00 0A */	li r4, 0xa
/* 803CEA48  1C 00 00 06 */	mulli r0, r0, 6
/* 803CEA4C  7C A5 02 14 */	add r5, r5, r0
/* 803CEA50  A0 A5 00 02 */	lhz r5, 2(r5)
/* 803CEA54  48 02 02 79 */	bl mString_Load_StringFromRom
lbl_803CEA58:
/* 803CEA58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803CEA5C  7C 08 03 A6 */	mtlr r0
/* 803CEA60  38 21 00 10 */	addi r1, r1, 0x10
/* 803CEA64  4E 80 00 20 */	blr 
