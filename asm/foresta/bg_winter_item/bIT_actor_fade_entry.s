lbl_804BF1B4:
/* 804BF1B4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804BF1B8  7C 08 02 A6 */	mflr r0
/* 804BF1BC  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 804BF1C0  38 E0 00 FF */	li r7, 0xff
/* 804BF1C4  90 01 00 44 */	stw r0, 0x44(r1)
/* 804BF1C8  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 804BF1CC  3C A5 00 02 */	addis r5, r5, 2
/* 804BF1D0  38 00 00 03 */	li r0, 3
/* 804BF1D4  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 804BF1D8  3B E0 00 00 */	li r31, 0
/* 804BF1DC  80 A5 60 80 */	lwz r5, 0x6080(r5)
/* 804BF1E0  80 A5 00 00 */	lwz r5, 0(r5)
/* 804BF1E4  3C C5 00 01 */	addis r6, r5, 1
/* 804BF1E8  7C 09 03 A6 */	mtctr r0
/* 804BF1EC  38 C6 39 9C */	addi r6, r6, 0x399c
lbl_804BF1F0:
/* 804BF1F0  88 06 00 0F */	lbz r0, 0xf(r6)
/* 804BF1F4  28 00 00 00 */	cmplwi r0, 0
/* 804BF1F8  40 82 00 0C */	bne lbl_804BF204
/* 804BF1FC  7C DF 33 78 */	mr r31, r6
/* 804BF200  48 00 00 2C */	b lbl_804BF22C
lbl_804BF204:
/* 804BF204  28 00 00 01 */	cmplwi r0, 1
/* 804BF208  40 82 00 1C */	bne lbl_804BF224
/* 804BF20C  88 A6 00 0E */	lbz r5, 0xe(r6)
/* 804BF210  54 E0 06 3E */	clrlwi r0, r7, 0x18
/* 804BF214  7C 05 00 40 */	cmplw r5, r0
/* 804BF218  40 80 00 0C */	bge lbl_804BF224
/* 804BF21C  7C A7 2B 78 */	mr r7, r5
/* 804BF220  7C DF 33 78 */	mr r31, r6
lbl_804BF224:
/* 804BF224  38 C6 00 14 */	addi r6, r6, 0x14
/* 804BF228  42 00 FF C8 */	bdnz lbl_804BF1F0
lbl_804BF22C:
/* 804BF22C  28 1F 00 00 */	cmplwi r31, 0
/* 804BF230  41 82 00 A0 */	beq lbl_804BF2D0
/* 804BF234  38 A0 00 01 */	li r5, 1
/* 804BF238  38 00 00 FF */	li r0, 0xff
/* 804BF23C  98 BF 00 0F */	stb r5, 0xf(r31)
/* 804BF240  B0 7F 00 0C */	sth r3, 0xc(r31)
/* 804BF244  7F E3 FB 78 */	mr r3, r31
/* 804BF248  98 1F 00 0E */	stb r0, 0xe(r31)
/* 804BF24C  80 A4 00 00 */	lwz r5, 0(r4)
/* 804BF250  80 04 00 04 */	lwz r0, 4(r4)
/* 804BF254  90 A1 00 20 */	stw r5, 0x20(r1)
/* 804BF258  90 01 00 24 */	stw r0, 0x24(r1)
/* 804BF25C  80 04 00 08 */	lwz r0, 8(r4)
/* 804BF260  38 81 00 20 */	addi r4, r1, 0x20
/* 804BF264  90 01 00 28 */	stw r0, 0x28(r1)
/* 804BF268  4B EE 62 D5 */	bl mFI_Wpos2UtCenterWpos
/* 804BF26C  80 9F 00 00 */	lwz r4, 0(r31)
/* 804BF270  3C 60 80 64 */	lis r3, lit_664@ha /* 0x80646144@ha */
/* 804BF274  80 1F 00 04 */	lwz r0, 4(r31)
/* 804BF278  C0 23 61 44 */	lfs f1, lit_664@l(r3)  /* 0x80646144@l */
/* 804BF27C  38 61 00 14 */	addi r3, r1, 0x14
/* 804BF280  90 81 00 14 */	stw r4, 0x14(r1)
/* 804BF284  90 01 00 18 */	stw r0, 0x18(r1)
/* 804BF288  80 1F 00 08 */	lwz r0, 8(r31)
/* 804BF28C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804BF290  4B ED 07 09 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 804BF294  D0 3F 00 04 */	stfs f1, 4(r31)
/* 804BF298  38 00 00 00 */	li r0, 0
/* 804BF29C  38 81 00 08 */	addi r4, r1, 8
/* 804BF2A0  38 60 00 00 */	li r3, 0
/* 804BF2A4  98 1F 00 10 */	stb r0, 0x10(r31)
/* 804BF2A8  38 A0 00 01 */	li r5, 1
/* 804BF2AC  80 DF 00 00 */	lwz r6, 0(r31)
/* 804BF2B0  80 1F 00 04 */	lwz r0, 4(r31)
/* 804BF2B4  90 C1 00 08 */	stw r6, 8(r1)
/* 804BF2B8  90 01 00 0C */	stw r0, 0xc(r1)
/* 804BF2BC  80 1F 00 08 */	lwz r0, 8(r31)
/* 804BF2C0  90 01 00 10 */	stw r0, 0x10(r1)
/* 804BF2C4  4B EE 85 6D */	bl mFI_SetFG_common
/* 804BF2C8  38 60 00 01 */	li r3, 1
/* 804BF2CC  48 00 00 08 */	b lbl_804BF2D4
lbl_804BF2D0:
/* 804BF2D0  38 60 00 00 */	li r3, 0
lbl_804BF2D4:
/* 804BF2D4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804BF2D8  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 804BF2DC  7C 08 03 A6 */	mtlr r0
/* 804BF2E0  38 21 00 40 */	addi r1, r1, 0x40
/* 804BF2E4  4E 80 00 20 */	blr 
