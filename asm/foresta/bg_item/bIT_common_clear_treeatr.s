lbl_804BBE68:
/* 804BBE68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804BBE6C  7C 08 02 A6 */	mflr r0
/* 804BBE70  54 63 20 36 */	slwi r3, r3, 4
/* 804BBE74  54 84 20 36 */	slwi r4, r4, 4
/* 804BBE78  90 01 00 14 */	stw r0, 0x14(r1)
/* 804BBE7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804BBE80  7C BF 2B 78 */	mr r31, r5
/* 804BBE84  4B EE B3 FD */	bl mFI_UtNum2UtFG
/* 804BBE88  3C 80 80 69 */	lis r4, tree_cut_tbl@ha /* 0x806958B0@ha */
/* 804BBE8C  7F EA FB 78 */	mr r10, r31
/* 804BBE90  38 A4 58 B0 */	addi r5, r4, tree_cut_tbl@l /* 0x806958B0@l */
/* 804BBE94  38 C0 00 00 */	li r6, 0
lbl_804BBE98:
/* 804BBE98  38 E0 00 00 */	li r7, 0
lbl_804BBE9C:
/* 804BBE9C  38 00 00 53 */	li r0, 0x53
/* 804BBEA0  7C A9 2B 78 */	mr r9, r5
/* 804BBEA4  39 00 00 00 */	li r8, 0
/* 804BBEA8  7C 09 03 A6 */	mtctr r0
lbl_804BBEAC:
/* 804BBEAC  A0 83 00 00 */	lhz r4, 0(r3)
/* 804BBEB0  A0 09 00 00 */	lhz r0, 0(r9)
/* 804BBEB4  7C 04 00 40 */	cmplw r4, r0
/* 804BBEB8  40 82 00 10 */	bne lbl_804BBEC8
/* 804BBEBC  A8 09 00 02 */	lha r0, 2(r9)
/* 804BBEC0  98 0A 00 00 */	stb r0, 0(r10)
/* 804BBEC4  48 00 00 10 */	b lbl_804BBED4
lbl_804BBEC8:
/* 804BBEC8  39 08 00 01 */	addi r8, r8, 1
/* 804BBECC  39 29 00 04 */	addi r9, r9, 4
/* 804BBED0  42 00 FF DC */	bdnz lbl_804BBEAC
lbl_804BBED4:
/* 804BBED4  2C 08 00 53 */	cmpwi r8, 0x53
/* 804BBED8  40 82 00 0C */	bne lbl_804BBEE4
/* 804BBEDC  38 00 00 FF */	li r0, 0xff
/* 804BBEE0  98 0A 00 00 */	stb r0, 0(r10)
lbl_804BBEE4:
/* 804BBEE4  38 E7 00 01 */	addi r7, r7, 1
/* 804BBEE8  39 4A 00 01 */	addi r10, r10, 1
/* 804BBEEC  2C 07 00 10 */	cmpwi r7, 0x10
/* 804BBEF0  38 63 00 02 */	addi r3, r3, 2
/* 804BBEF4  41 80 FF A8 */	blt lbl_804BBE9C
/* 804BBEF8  38 C6 00 01 */	addi r6, r6, 1
/* 804BBEFC  2C 06 00 10 */	cmpwi r6, 0x10
/* 804BBF00  41 80 FF 98 */	blt lbl_804BBE98
/* 804BBF04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804BBF08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804BBF0C  7C 08 03 A6 */	mtlr r0
/* 804BBF10  38 21 00 10 */	addi r1, r1, 0x10
/* 804BBF14  4E 80 00 20 */	blr 
