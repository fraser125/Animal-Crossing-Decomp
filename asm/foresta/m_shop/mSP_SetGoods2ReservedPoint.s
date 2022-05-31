lbl_803EADE4:
/* 803EADE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EADE8  7C 08 02 A6 */	mflr r0
/* 803EADEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EADF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803EADF4  7C 9F 23 78 */	mr r31, r4
/* 803EADF8  38 80 00 00 */	li r4, 0
/* 803EADFC  93 C1 00 08 */	stw r30, 8(r1)
/* 803EAE00  7C 7E 1B 78 */	mr r30, r3
/* 803EAE04  38 60 00 00 */	li r3, 0
/* 803EAE08  4B FB C3 4D */	bl mFI_BkNumtoUtFGTop
/* 803EAE0C  38 00 01 00 */	li r0, 0x100
/* 803EAE10  57 E4 04 3E */	clrlwi r4, r31, 0x10
/* 803EAE14  38 C0 00 00 */	li r6, 0
/* 803EAE18  7C 09 03 A6 */	mtctr r0
lbl_803EAE1C:
/* 803EAE1C  A0 03 00 00 */	lhz r0, 0(r3)
/* 803EAE20  7C 04 00 40 */	cmplw r4, r0
/* 803EAE24  40 82 00 34 */	bne lbl_803EAE58
/* 803EAE28  54 C0 E0 06 */	slwi r0, r6, 0x1c
/* 803EAE2C  54 C5 0F FE */	srwi r5, r6, 0x1f
/* 803EAE30  7C 65 00 50 */	subf r3, r5, r0
/* 803EAE34  7C C0 26 70 */	srawi r0, r6, 4
/* 803EAE38  54 64 20 3E */	rotlwi r4, r3, 4
/* 803EAE3C  7F C3 F3 78 */	mr r3, r30
/* 803EAE40  7C 84 2A 14 */	add r4, r4, r5
/* 803EAE44  7C A0 01 94 */	addze r5, r0
/* 803EAE48  38 C0 00 00 */	li r6, 0
/* 803EAE4C  4B FB C8 01 */	bl mFI_UtNumtoFGSet_common
/* 803EAE50  38 60 00 01 */	li r3, 1
/* 803EAE54  48 00 00 14 */	b lbl_803EAE68
lbl_803EAE58:
/* 803EAE58  38 63 00 02 */	addi r3, r3, 2
/* 803EAE5C  38 C6 00 01 */	addi r6, r6, 1
/* 803EAE60  42 00 FF BC */	bdnz lbl_803EAE1C
/* 803EAE64  38 60 00 00 */	li r3, 0
lbl_803EAE68:
/* 803EAE68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EAE6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803EAE70  83 C1 00 08 */	lwz r30, 8(r1)
/* 803EAE74  7C 08 03 A6 */	mtlr r0
/* 803EAE78  38 21 00 10 */	addi r1, r1, 0x10
/* 803EAE7C  4E 80 00 20 */	blr 
