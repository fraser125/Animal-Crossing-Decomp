lbl_803E0DA4:
/* 803E0DA4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803E0DA8  7C 08 02 A6 */	mflr r0
/* 803E0DAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 803E0DB0  38 00 00 00 */	li r0, 0
/* 803E0DB4  B0 01 00 08 */	sth r0, 8(r1)
/* 803E0DB8  4B C7 BF 3D */	bl fqrand
/* 803E0DBC  3C 60 80 64 */	lis r3, lit_939@ha /* 0x80643100@ha */
/* 803E0DC0  C0 03 31 00 */	lfs f0, lit_939@l(r3)  /* 0x80643100@l */
/* 803E0DC4  EC 00 00 72 */	fmuls f0, f0, f1
/* 803E0DC8  FC 00 00 1E */	fctiwz f0, f0
/* 803E0DCC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803E0DD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E0DD4  2C 00 00 00 */	cmpwi r0, 0
/* 803E0DD8  41 82 00 28 */	beq lbl_803E0E00
/* 803E0DDC  38 81 00 08 */	addi r4, r1, 8
/* 803E0DE0  38 60 00 00 */	li r3, 0
/* 803E0DE4  38 A0 00 01 */	li r5, 1
/* 803E0DE8  38 C0 00 00 */	li r6, 0
/* 803E0DEC  38 E0 00 00 */	li r7, 0
/* 803E0DF0  39 00 00 00 */	li r8, 0
/* 803E0DF4  39 20 00 02 */	li r9, 2
/* 803E0DF8  39 40 00 00 */	li r10, 0
/* 803E0DFC  48 00 75 E1 */	bl mSP_SelectRandomItem_New
lbl_803E0E00:
/* 803E0E00  A0 01 00 08 */	lhz r0, 8(r1)
/* 803E0E04  28 00 00 00 */	cmplwi r0, 0
/* 803E0E08  40 82 00 0C */	bne lbl_803E0E14
/* 803E0E0C  4B FC 90 DD */	bl mFI_GetOtherFruit
/* 803E0E10  B0 61 00 08 */	sth r3, 8(r1)
lbl_803E0E14:
/* 803E0E14  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803E0E18  A0 61 00 08 */	lhz r3, 8(r1)
/* 803E0E1C  7C 08 03 A6 */	mtlr r0
/* 803E0E20  38 21 00 20 */	addi r1, r1, 0x20
/* 803E0E24  4E 80 00 20 */	blr 
