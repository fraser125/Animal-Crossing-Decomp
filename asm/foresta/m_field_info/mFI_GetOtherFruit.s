lbl_803A9EE8:
/* 803A9EE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A9EEC  7C 08 02 A6 */	mflr r0
/* 803A9EF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A9EF4  4B CB 2E 01 */	bl fqrand
/* 803A9EF8  3C 80 80 64 */	lis r4, lit_2499@ha /* 0x80641F78@ha */
/* 803A9EFC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803A9F00  C0 04 1F 78 */	lfs f0, lit_2499@l(r4)  /* 0x80641F78@l */
/* 803A9F04  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803A9F08  3C 63 00 02 */	addis r3, r3, 2
/* 803A9F0C  EC 00 00 72 */	fmuls f0, f0, f1
/* 803A9F10  A0 03 06 88 */	lhz r0, 0x688(r3)
/* 803A9F14  FC 00 00 1E */	fctiwz f0, f0
/* 803A9F18  D8 01 00 08 */	stfd f0, 8(r1)
/* 803A9F1C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 803A9F20  60 63 28 00 */	ori r3, r3, 0x2800
/* 803A9F24  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 803A9F28  7C 03 00 40 */	cmplw r3, r0
/* 803A9F2C  40 82 00 0C */	bne lbl_803A9F38
/* 803A9F30  38 03 00 01 */	addi r0, r3, 1
/* 803A9F34  54 03 04 3E */	clrlwi r3, r0, 0x10
lbl_803A9F38:
/* 803A9F38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A9F3C  7C 08 03 A6 */	mtlr r0
/* 803A9F40  38 21 00 10 */	addi r1, r1, 0x10
/* 803A9F44  4E 80 00 20 */	blr 
