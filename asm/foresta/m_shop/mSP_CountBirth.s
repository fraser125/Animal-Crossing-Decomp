lbl_803EABA4:
/* 803EABA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EABA8  7C 08 02 A6 */	mflr r0
/* 803EABAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EABB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803EABB4  3B E0 00 00 */	li r31, 0
/* 803EABB8  93 C1 00 08 */	stw r30, 8(r1)
/* 803EABBC  7C 7E 1B 78 */	mr r30, r3
/* 803EABC0  4B FF B3 BD */	bl mRmTp_CheckFtrBirthInfoTop
/* 803EABC4  38 00 04 F2 */	li r0, 0x4f2
/* 803EABC8  57 C4 06 3E */	clrlwi r4, r30, 0x18
/* 803EABCC  7C 09 03 A6 */	mtctr r0
lbl_803EABD0:
/* 803EABD0  88 03 00 00 */	lbz r0, 0(r3)
/* 803EABD4  7C 00 20 40 */	cmplw r0, r4
/* 803EABD8  40 82 00 08 */	bne lbl_803EABE0
/* 803EABDC  3B FF 00 01 */	addi r31, r31, 1
lbl_803EABE0:
/* 803EABE0  38 63 00 01 */	addi r3, r3, 1
/* 803EABE4  42 00 FF EC */	bdnz lbl_803EABD0
/* 803EABE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EABEC  7F E3 FB 78 */	mr r3, r31
/* 803EABF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803EABF4  83 C1 00 08 */	lwz r30, 8(r1)
/* 803EABF8  7C 08 03 A6 */	mtlr r0
/* 803EABFC  38 21 00 10 */	addi r1, r1, 0x10
/* 803EAC00  4E 80 00 20 */	blr 
