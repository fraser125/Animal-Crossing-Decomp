lbl_8050AEF8:
/* 8050AEF8  38 00 00 38 */	li r0, 0x38
/* 8050AEFC  7C 65 1B 78 */	mr r5, r3
/* 8050AF00  38 E0 00 00 */	li r7, 0
/* 8050AF04  39 00 00 00 */	li r8, 0
/* 8050AF08  7C 09 03 A6 */	mtctr r0
lbl_8050AF0C:
/* 8050AF0C  88 C5 00 00 */	lbz r6, 0(r5)
/* 8050AF10  28 06 00 28 */	cmplwi r6, 0x28
/* 8050AF14  41 82 00 1C */	beq lbl_8050AF30
/* 8050AF18  38 06 FF D7 */	addi r0, r6, -41
/* 8050AF1C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8050AF20  28 00 00 04 */	cmplwi r0, 4
/* 8050AF24  40 81 00 0C */	ble lbl_8050AF30
/* 8050AF28  28 06 00 2E */	cmplwi r6, 0x2e
/* 8050AF2C  40 82 00 20 */	bne lbl_8050AF4C
lbl_8050AF30:
/* 8050AF30  7C 07 20 00 */	cmpw r7, r4
/* 8050AF34  40 82 00 14 */	bne lbl_8050AF48
/* 8050AF38  38 06 00 1D */	addi r0, r6, 0x1d
/* 8050AF3C  7C 03 41 AE */	stbx r0, r3, r8
/* 8050AF40  38 60 00 01 */	li r3, 1
/* 8050AF44  4E 80 00 20 */	blr 
lbl_8050AF48:
/* 8050AF48  38 E7 00 01 */	addi r7, r7, 1
lbl_8050AF4C:
/* 8050AF4C  39 08 00 01 */	addi r8, r8, 1
/* 8050AF50  38 A5 00 01 */	addi r5, r5, 1
/* 8050AF54  42 00 FF B8 */	bdnz lbl_8050AF0C
/* 8050AF58  38 60 00 00 */	li r3, 0
/* 8050AF5C  4E 80 00 20 */	blr 
