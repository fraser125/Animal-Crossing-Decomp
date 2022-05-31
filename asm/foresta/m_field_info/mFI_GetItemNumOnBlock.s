lbl_803A8058:
/* 803A8058  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A805C  7C 08 02 A6 */	mflr r0
/* 803A8060  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A8064  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803A8068  7C DF 33 78 */	mr r31, r6
/* 803A806C  93 C1 00 08 */	stw r30, 8(r1)
/* 803A8070  7C BE 2B 78 */	mr r30, r5
/* 803A8074  4B FF F0 E1 */	bl mFI_BkNumtoUtFGTop
/* 803A8078  28 03 00 00 */	cmplwi r3, 0
/* 803A807C  38 C0 00 00 */	li r6, 0
/* 803A8080  41 82 00 34 */	beq lbl_803A80B4
/* 803A8084  38 00 01 00 */	li r0, 0x100
/* 803A8088  57 C5 04 3E */	clrlwi r5, r30, 0x10
/* 803A808C  57 E4 04 3E */	clrlwi r4, r31, 0x10
/* 803A8090  7C 09 03 A6 */	mtctr r0
lbl_803A8094:
/* 803A8094  A0 03 00 00 */	lhz r0, 0(r3)
/* 803A8098  7C 00 28 40 */	cmplw r0, r5
/* 803A809C  41 80 00 10 */	blt lbl_803A80AC
/* 803A80A0  7C 00 20 40 */	cmplw r0, r4
/* 803A80A4  41 81 00 08 */	bgt lbl_803A80AC
/* 803A80A8  38 C6 00 01 */	addi r6, r6, 1
lbl_803A80AC:
/* 803A80AC  38 63 00 02 */	addi r3, r3, 2
/* 803A80B0  42 00 FF E4 */	bdnz lbl_803A8094
lbl_803A80B4:
/* 803A80B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A80B8  7C C3 33 78 */	mr r3, r6
/* 803A80BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803A80C0  83 C1 00 08 */	lwz r30, 8(r1)
/* 803A80C4  7C 08 03 A6 */	mtlr r0
/* 803A80C8  38 21 00 10 */	addi r1, r1, 0x10
/* 803A80CC  4E 80 00 20 */	blr 
