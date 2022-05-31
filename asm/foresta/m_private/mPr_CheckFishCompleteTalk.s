lbl_803E2180:
/* 803E2180  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E2184  7C 08 02 A6 */	mflr r0
/* 803E2188  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E218C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 803E2190  28 00 00 04 */	cmplwi r0, 4
/* 803E2194  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803E2198  3B E0 00 00 */	li r31, 0
/* 803E219C  40 80 00 2C */	bge lbl_803E21C8
/* 803E21A0  1C 00 24 40 */	mulli r0, r0, 0x2440
/* 803E21A4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803E21A8  38 80 00 00 */	li r4, 0
/* 803E21AC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803E21B0  7C 63 02 14 */	add r3, r3, r0
/* 803E21B4  88 63 11 22 */	lbz r3, 0x1122(r3)
/* 803E21B8  4B FF FF 79 */	bl mPr_GetCompleteTalk
/* 803E21BC  2C 03 00 01 */	cmpwi r3, 1
/* 803E21C0  40 82 00 08 */	bne lbl_803E21C8
/* 803E21C4  3B E0 00 01 */	li r31, 1
lbl_803E21C8:
/* 803E21C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E21CC  7F E3 FB 78 */	mr r3, r31
/* 803E21D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803E21D4  7C 08 03 A6 */	mtlr r0
/* 803E21D8  38 21 00 10 */	addi r1, r1, 0x10
/* 803E21DC  4E 80 00 20 */	blr 
