lbl_8062EABC:
/* 8062EABC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062EAC0  7C 08 02 A6 */	mflr r0
/* 8062EAC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062EAC8  88 06 01 2C */	lbz r0, 0x12c(r6)
/* 8062EACC  28 00 00 01 */	cmplwi r0, 1
/* 8062EAD0  40 82 00 14 */	bne lbl_8062EAE4
/* 8062EAD4  3C E0 80 65 */	lis r7, data_8064D274@ha /* 0x8064D274@ha */
/* 8062EAD8  C0 07 D2 74 */	lfs f0, data_8064D274@l(r7)  /* 0x8064D274@l */
/* 8062EADC  D0 06 08 34 */	stfs f0, 0x834(r6)
/* 8062EAE0  48 00 00 10 */	b lbl_8062EAF0
lbl_8062EAE4:
/* 8062EAE4  3C E0 80 65 */	lis r7, lit_368@ha /* 0x8064D278@ha */
/* 8062EAE8  C0 07 D2 78 */	lfs f0, lit_368@l(r7)  /* 0x8064D278@l */
/* 8062EAEC  D0 06 08 34 */	stfs f0, 0x834(r6)
lbl_8062EAF0:
/* 8062EAF0  4B FF FD 95 */	bl func_8062E884
/* 8062EAF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062EAF8  7C 08 03 A6 */	mtlr r0
/* 8062EAFC  38 21 00 10 */	addi r1, r1, 0x10
/* 8062EB00  4E 80 00 20 */	blr 
