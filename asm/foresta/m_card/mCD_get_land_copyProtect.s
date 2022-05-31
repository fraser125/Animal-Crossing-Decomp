lbl_803FCD24:
/* 803FCD24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803FCD28  7C 08 02 A6 */	mflr r0
/* 803FCD2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803FCD30  4B C5 FF C5 */	bl fqrand
/* 803FCD34  3C 60 80 64 */	lis r3, lit_2643@ha /* 0x8064345C@ha */
/* 803FCD38  C0 03 34 5C */	lfs f0, lit_2643@l(r3)  /* 0x8064345C@l */
/* 803FCD3C  EC 00 00 72 */	fmuls f0, f0, f1
/* 803FCD40  FC 00 00 1E */	fctiwz f0, f0
/* 803FCD44  D8 01 00 08 */	stfd f0, 8(r1)
/* 803FCD48  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803FCD4C  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 803FCD50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803FCD54  38 63 00 01 */	addi r3, r3, 1
/* 803FCD58  7C 08 03 A6 */	mtlr r0
/* 803FCD5C  38 21 00 10 */	addi r1, r1, 0x10
/* 803FCD60  4E 80 00 20 */	blr 
