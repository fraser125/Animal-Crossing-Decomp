lbl_803C63AC:
/* 803C63AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803C63B0  7C 08 02 A6 */	mflr r0
/* 803C63B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 803C63B8  38 00 00 00 */	li r0, 0
/* 803C63BC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803C63C0  7C 7F 1B 79 */	or. r31, r3, r3
/* 803C63C4  38 60 FF FF */	li r3, -1
/* 803C63C8  90 01 00 0C */	stw r0, 0xc(r1)
/* 803C63CC  90 01 00 08 */	stw r0, 8(r1)
/* 803C63D0  41 82 00 3C */	beq lbl_803C640C
/* 803C63D4  2C 04 00 00 */	cmpwi r4, 0
/* 803C63D8  41 80 00 34 */	blt lbl_803C640C
/* 803C63DC  2C 04 00 1E */	cmpwi r4, 0x1e
/* 803C63E0  40 80 00 2C */	bge lbl_803C640C
/* 803C63E4  7C 85 23 78 */	mr r5, r4
/* 803C63E8  38 61 00 0C */	addi r3, r1, 0xc
/* 803C63EC  38 81 00 08 */	addi r4, r1, 8
/* 803C63F0  4B FF FF 99 */	bl mMsm_GetRemailAddIdx
/* 803C63F4  80 61 00 0C */	lwz r3, 0xc(r1)
/* 803C63F8  80 01 00 08 */	lwz r0, 8(r1)
/* 803C63FC  7C 7F 18 AE */	lbzx r3, r31, r3
/* 803C6400  54 00 10 3A */	slwi r0, r0, 2
/* 803C6404  7C 60 06 30 */	sraw r0, r3, r0
/* 803C6408  54 03 07 7E */	clrlwi r3, r0, 0x1d
lbl_803C640C:
/* 803C640C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803C6410  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803C6414  7C 08 03 A6 */	mtlr r0
/* 803C6418  38 21 00 20 */	addi r1, r1, 0x20
/* 803C641C  4E 80 00 20 */	blr 
