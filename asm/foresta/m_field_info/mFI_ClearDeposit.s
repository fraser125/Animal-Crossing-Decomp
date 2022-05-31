lbl_803A8D14:
/* 803A8D14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A8D18  7C 08 02 A6 */	mflr r0
/* 803A8D1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A8D20  4B FF FF 11 */	bl mFI_GetDepositP
/* 803A8D24  28 03 00 00 */	cmplwi r3, 0
/* 803A8D28  41 82 00 1C */	beq lbl_803A8D44
/* 803A8D2C  38 00 00 10 */	li r0, 0x10
/* 803A8D30  38 80 00 00 */	li r4, 0
/* 803A8D34  7C 09 03 A6 */	mtctr r0
lbl_803A8D38:
/* 803A8D38  B0 83 00 00 */	sth r4, 0(r3)
/* 803A8D3C  38 63 00 02 */	addi r3, r3, 2
/* 803A8D40  42 00 FF F8 */	bdnz lbl_803A8D38
lbl_803A8D44:
/* 803A8D44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A8D48  7C 08 03 A6 */	mtlr r0
/* 803A8D4C  38 21 00 10 */	addi r1, r1, 0x10
/* 803A8D50  4E 80 00 20 */	blr 
