lbl_8049FDDC:
/* 8049FDDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049FDE0  7C 08 02 A6 */	mflr r0
/* 8049FDE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049FDE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8049FDEC  7C 7F 1B 78 */	mr r31, r3
/* 8049FDF0  C0 23 00 00 */	lfs f1, 0(r3)
/* 8049FDF4  4B F0 55 2D */	bl mFI_WposX2UtNumX
/* 8049FDF8  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8049FDFC  7C 7F 1B 78 */	mr r31, r3
/* 8049FE00  4B F0 55 21 */	bl mFI_WposX2UtNumX
/* 8049FE04  7F E0 26 70 */	srawi r0, r31, 4
/* 8049FE08  7C 64 1B 78 */	mr r4, r3
/* 8049FE0C  7C 60 01 94 */	addze r3, r0
/* 8049FE10  7C 80 26 70 */	srawi r0, r4, 4
/* 8049FE14  7C 80 01 94 */	addze r4, r0
/* 8049FE18  4B F0 73 3D */	bl mFI_BkNumtoUtFGTop
/* 8049FE1C  38 00 01 00 */	li r0, 0x100
/* 8049FE20  38 80 00 00 */	li r4, 0
/* 8049FE24  7C 09 03 A6 */	mtctr r0
lbl_8049FE28:
/* 8049FE28  A0 03 00 00 */	lhz r0, 0(r3)
/* 8049FE2C  28 00 24 00 */	cmplwi r0, 0x2400
/* 8049FE30  41 80 00 0C */	blt lbl_8049FE3C
/* 8049FE34  28 00 24 FF */	cmplwi r0, 0x24ff
/* 8049FE38  41 80 00 0C */	blt lbl_8049FE44
lbl_8049FE3C:
/* 8049FE3C  28 00 FE 0F */	cmplwi r0, 0xfe0f
/* 8049FE40  40 82 00 08 */	bne lbl_8049FE48
lbl_8049FE44:
/* 8049FE44  38 84 00 01 */	addi r4, r4, 1
lbl_8049FE48:
/* 8049FE48  38 63 00 02 */	addi r3, r3, 2
/* 8049FE4C  42 00 FF DC */	bdnz lbl_8049FE28
/* 8049FE50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049FE54  7C 83 23 78 */	mr r3, r4
/* 8049FE58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8049FE5C  7C 08 03 A6 */	mtlr r0
/* 8049FE60  38 21 00 10 */	addi r1, r1, 0x10
/* 8049FE64  4E 80 00 20 */	blr 
