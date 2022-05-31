lbl_803CDCB0:
/* 803CDCB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803CDCB4  7C 08 02 A6 */	mflr r0
/* 803CDCB8  38 60 00 00 */	li r3, 0
/* 803CDCBC  38 A0 00 01 */	li r5, 1
/* 803CDCC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803CDCC4  38 81 00 08 */	addi r4, r1, 8
/* 803CDCC8  38 C0 00 00 */	li r6, 0
/* 803CDCCC  38 E0 00 00 */	li r7, 0
/* 803CDCD0  39 00 00 01 */	li r8, 1
/* 803CDCD4  39 20 00 08 */	li r9, 8
/* 803CDCD8  39 40 00 00 */	li r10, 0
/* 803CDCDC  48 01 A7 01 */	bl mSP_SelectRandomItem_New
/* 803CDCE0  A0 61 00 08 */	lhz r3, 8(r1)
/* 803CDCE4  38 63 E0 00 */	addi r3, r3, -8192
/* 803CDCE8  54 60 D0 0A */	slwi r0, r3, 0x1a
/* 803CDCEC  54 63 0F FE */	srwi r3, r3, 0x1f
/* 803CDCF0  7C 03 00 50 */	subf r0, r3, r0
/* 803CDCF4  54 00 30 3E */	rotlwi r0, r0, 6
/* 803CDCF8  7C 00 1A 14 */	add r0, r0, r3
/* 803CDCFC  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 803CDD00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803CDD04  7C 08 03 A6 */	mtlr r0
/* 803CDD08  38 21 00 10 */	addi r1, r1, 0x10
/* 803CDD0C  4E 80 00 20 */	blr 
