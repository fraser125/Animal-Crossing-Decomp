lbl_803E09CC:
/* 803E09CC  28 03 00 00 */	cmplwi r3, 0
/* 803E09D0  38 E0 00 00 */	li r7, 0
/* 803E09D4  41 82 00 48 */	beq lbl_803E0A1C
/* 803E09D8  38 00 00 0F */	li r0, 0xf
/* 803E09DC  39 03 00 68 */	addi r8, r3, 0x68
/* 803E09E0  54 86 04 3E */	clrlwi r6, r4, 0x10
/* 803E09E4  38 80 00 00 */	li r4, 0
/* 803E09E8  7C 09 03 A6 */	mtctr r0
lbl_803E09EC:
/* 803E09EC  A0 08 00 00 */	lhz r0, 0(r8)
/* 803E09F0  7C 00 30 40 */	cmplw r0, r6
/* 803E09F4  40 82 00 1C */	bne lbl_803E0A10
/* 803E09F8  80 03 00 88 */	lwz r0, 0x88(r3)
/* 803E09FC  7C 00 24 30 */	srw r0, r0, r4
/* 803E0A00  54 00 07 BE */	clrlwi r0, r0, 0x1e
/* 803E0A04  7C 05 00 40 */	cmplw r5, r0
/* 803E0A08  40 82 00 08 */	bne lbl_803E0A10
/* 803E0A0C  38 E7 00 01 */	addi r7, r7, 1
lbl_803E0A10:
/* 803E0A10  39 08 00 02 */	addi r8, r8, 2
/* 803E0A14  38 84 00 02 */	addi r4, r4, 2
/* 803E0A18  42 00 FF D4 */	bdnz lbl_803E09EC
lbl_803E0A1C:
/* 803E0A1C  7C E3 3B 78 */	mr r3, r7
/* 803E0A20  4E 80 00 20 */	blr 
