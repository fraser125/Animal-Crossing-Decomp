lbl_803ABA38:
/* 803ABA38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803ABA3C  7C 08 02 A6 */	mflr r0
/* 803ABA40  90 01 00 14 */	stw r0, 0x14(r1)
/* 803ABA44  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 803ABA48  28 00 00 09 */	cmplwi r0, 9
/* 803ABA4C  40 80 00 10 */	bge lbl_803ABA5C
/* 803ABA50  38 60 00 00 */	li r3, 0
/* 803ABA54  4B FF FE F5 */	bl mFR_fish_rndsize
/* 803ABA58  48 00 00 50 */	b lbl_803ABAA8
lbl_803ABA5C:
/* 803ABA5C  28 00 00 0F */	cmplwi r0, 0xf
/* 803ABA60  40 80 00 28 */	bge lbl_803ABA88
/* 803ABA64  4B CB 12 91 */	bl fqrand
/* 803ABA68  3C 60 80 64 */	lis r3, lit_522@ha /* 0x80641F8C@ha */
/* 803ABA6C  C0 03 1F 8C */	lfs f0, lit_522@l(r3)  /* 0x80641F8C@l */
/* 803ABA70  EC 00 00 72 */	fmuls f0, f0, f1
/* 803ABA74  FC 00 00 1E */	fctiwz f0, f0
/* 803ABA78  D8 01 00 08 */	stfd f0, 8(r1)
/* 803ABA7C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 803ABA80  4B FF FE C9 */	bl mFR_fish_rndsize
/* 803ABA84  48 00 00 24 */	b lbl_803ABAA8
lbl_803ABA88:
/* 803ABA88  4B CB 12 6D */	bl fqrand
/* 803ABA8C  3C 60 80 64 */	lis r3, lit_523@ha /* 0x80641F90@ha */
/* 803ABA90  C0 03 1F 90 */	lfs f0, lit_523@l(r3)  /* 0x80641F90@l */
/* 803ABA94  EC 00 00 72 */	fmuls f0, f0, f1
/* 803ABA98  FC 00 00 1E */	fctiwz f0, f0
/* 803ABA9C  D8 01 00 08 */	stfd f0, 8(r1)
/* 803ABAA0  80 61 00 0C */	lwz r3, 0xc(r1)
/* 803ABAA4  4B FF FE A5 */	bl mFR_fish_rndsize
lbl_803ABAA8:
/* 803ABAA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803ABAAC  7C 08 03 A6 */	mtlr r0
/* 803ABAB0  38 21 00 10 */	addi r1, r1, 0x10
/* 803ABAB4  4E 80 00 20 */	blr 
