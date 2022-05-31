lbl_804A08F0:
/* 804A08F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A08F4  7C 08 02 A6 */	mflr r0
/* 804A08F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A08FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804A0900  7C 7F 1B 78 */	mr r31, r3
/* 804A0904  C0 23 00 00 */	lfs f1, 0(r3)
/* 804A0908  4B F0 4A 19 */	bl mFI_WposX2UtNumX
/* 804A090C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 804A0910  7C 7F 1B 78 */	mr r31, r3
/* 804A0914  4B F0 4A 31 */	bl mFI_WposZ2UtNumZ
/* 804A0918  7F E0 26 70 */	srawi r0, r31, 4
/* 804A091C  7C 64 1B 78 */	mr r4, r3
/* 804A0920  7C 60 01 94 */	addze r3, r0
/* 804A0924  7C 80 26 70 */	srawi r0, r4, 4
/* 804A0928  7C 80 01 94 */	addze r4, r0
/* 804A092C  4B F0 68 29 */	bl mFI_BkNumtoUtFGTop
/* 804A0930  38 00 01 00 */	li r0, 0x100
/* 804A0934  38 80 00 00 */	li r4, 0
/* 804A0938  7C 09 03 A6 */	mtctr r0
lbl_804A093C:
/* 804A093C  A0 03 00 00 */	lhz r0, 0(r3)
/* 804A0940  28 00 22 04 */	cmplwi r0, 0x2204
/* 804A0944  41 80 00 10 */	blt lbl_804A0954
/* 804A0948  28 00 22 2B */	cmplwi r0, 0x222b
/* 804A094C  41 81 00 08 */	bgt lbl_804A0954
/* 804A0950  38 84 00 01 */	addi r4, r4, 1
lbl_804A0954:
/* 804A0954  38 63 00 02 */	addi r3, r3, 2
/* 804A0958  42 00 FF E4 */	bdnz lbl_804A093C
/* 804A095C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A0960  7C 83 23 78 */	mr r3, r4
/* 804A0964  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804A0968  7C 08 03 A6 */	mtlr r0
/* 804A096C  38 21 00 10 */	addi r1, r1, 0x10
/* 804A0970  4E 80 00 20 */	blr 
