lbl_803EB40C:
/* 803EB40C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803EB410  7C 08 02 A6 */	mflr r0
/* 803EB414  90 01 00 24 */	stw r0, 0x24(r1)
/* 803EB418  39 61 00 20 */	addi r11, r1, 0x20
/* 803EB41C  4B CA FA B9 */	bl func_8009AED4
/* 803EB420  7C 7D 1B 78 */	mr r29, r3
/* 803EB424  7C 9E 23 78 */	mr r30, r4
/* 803EB428  7C BF 2B 78 */	mr r31, r5
/* 803EB42C  4B C7 18 C9 */	bl fqrand
/* 803EB430  3C 60 80 64 */	lis r3, lit_495@ha /* 0x80643188@ha */
/* 803EB434  C0 03 31 88 */	lfs f0, lit_495@l(r3)  /* 0x80643188@l */
/* 803EB438  EC 00 00 72 */	fmuls f0, f0, f1
/* 803EB43C  FC 00 00 1E */	fctiwz f0, f0
/* 803EB440  D8 01 00 08 */	stfd f0, 8(r1)
/* 803EB444  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803EB448  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 803EB44C  41 82 00 3C */	beq lbl_803EB488
/* 803EB450  7F AC EB 78 */	mr r12, r29
/* 803EB454  7F E3 FB 78 */	mr r3, r31
/* 803EB458  7D 89 03 A6 */	mtctr r12
/* 803EB45C  4E 80 04 21 */	bctrl 
/* 803EB460  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 803EB464  40 82 00 60 */	bne lbl_803EB4C4
/* 803EB468  7F CC F3 78 */	mr r12, r30
/* 803EB46C  7F E3 FB 78 */	mr r3, r31
/* 803EB470  7D 89 03 A6 */	mtctr r12
/* 803EB474  4E 80 04 21 */	bctrl 
/* 803EB478  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 803EB47C  41 82 00 44 */	beq lbl_803EB4C0
/* 803EB480  48 00 00 44 */	b lbl_803EB4C4
/* 803EB484  48 00 00 40 */	b lbl_803EB4C4
lbl_803EB488:
/* 803EB488  7F CC F3 78 */	mr r12, r30
/* 803EB48C  7F E3 FB 78 */	mr r3, r31
/* 803EB490  7D 89 03 A6 */	mtctr r12
/* 803EB494  4E 80 04 21 */	bctrl 
/* 803EB498  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 803EB49C  40 82 00 28 */	bne lbl_803EB4C4
/* 803EB4A0  7F AC EB 78 */	mr r12, r29
/* 803EB4A4  7F E3 FB 78 */	mr r3, r31
/* 803EB4A8  7D 89 03 A6 */	mtctr r12
/* 803EB4AC  4E 80 04 21 */	bctrl 
/* 803EB4B0  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 803EB4B4  41 82 00 0C */	beq lbl_803EB4C0
/* 803EB4B8  48 00 00 0C */	b lbl_803EB4C4
/* 803EB4BC  48 00 00 08 */	b lbl_803EB4C4
lbl_803EB4C0:
/* 803EB4C0  38 60 00 00 */	li r3, 0
lbl_803EB4C4:
/* 803EB4C4  39 61 00 20 */	addi r11, r1, 0x20
/* 803EB4C8  4B CA FA 59 */	bl func_8009AF20
/* 803EB4CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803EB4D0  7C 08 03 A6 */	mtlr r0
/* 803EB4D4  38 21 00 20 */	addi r1, r1, 0x20
/* 803EB4D8  4E 80 00 20 */	blr 
