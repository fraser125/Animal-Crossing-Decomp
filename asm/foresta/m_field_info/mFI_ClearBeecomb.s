lbl_803A9644:
/* 803A9644  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A9648  7C 08 02 A6 */	mflr r0
/* 803A964C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A9650  4B FF DB 05 */	bl mFI_BkNumtoUtFGTop
/* 803A9654  28 03 00 00 */	cmplwi r3, 0
/* 803A9658  41 82 00 28 */	beq lbl_803A9680
/* 803A965C  38 00 01 00 */	li r0, 0x100
/* 803A9660  38 80 00 00 */	li r4, 0
/* 803A9664  7C 09 03 A6 */	mtctr r0
lbl_803A9668:
/* 803A9668  A0 03 00 00 */	lhz r0, 0(r3)
/* 803A966C  28 00 00 62 */	cmplwi r0, 0x62
/* 803A9670  40 82 00 08 */	bne lbl_803A9678
/* 803A9674  B0 83 00 00 */	sth r4, 0(r3)
lbl_803A9678:
/* 803A9678  38 63 00 02 */	addi r3, r3, 2
/* 803A967C  42 00 FF EC */	bdnz lbl_803A9668
lbl_803A9680:
/* 803A9680  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A9684  7C 08 03 A6 */	mtlr r0
/* 803A9688  38 21 00 10 */	addi r1, r1, 0x10
/* 803A968C  4E 80 00 20 */	blr 