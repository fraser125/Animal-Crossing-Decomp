lbl_803E0A8C:
/* 803E0A8C  28 03 00 00 */	cmplwi r3, 0
/* 803E0A90  39 20 00 00 */	li r9, 0
/* 803E0A94  41 82 00 64 */	beq lbl_803E0AF8
/* 803E0A98  38 00 00 0F */	li r0, 0xf
/* 803E0A9C  39 43 00 68 */	addi r10, r3, 0x68
/* 803E0AA0  54 87 06 3E */	clrlwi r7, r4, 0x18
/* 803E0AA4  54 C6 04 3E */	clrlwi r6, r6, 0x10
/* 803E0AA8  38 80 00 00 */	li r4, 0
/* 803E0AAC  7C 09 03 A6 */	mtctr r0
lbl_803E0AB0:
/* 803E0AB0  A1 0A 00 00 */	lhz r8, 0(r10)
/* 803E0AB4  55 00 A7 3E */	rlwinm r0, r8, 0x14, 0x1c, 0x1f
/* 803E0AB8  2C 00 00 02 */	cmpwi r0, 2
/* 803E0ABC  40 82 00 30 */	bne lbl_803E0AEC
/* 803E0AC0  55 00 C7 3E */	rlwinm r0, r8, 0x18, 0x1c, 0x1f
/* 803E0AC4  7C 00 38 00 */	cmpw r0, r7
/* 803E0AC8  40 82 00 24 */	bne lbl_803E0AEC
/* 803E0ACC  80 03 00 88 */	lwz r0, 0x88(r3)
/* 803E0AD0  7C 00 24 30 */	srw r0, r0, r4
/* 803E0AD4  54 00 07 BE */	clrlwi r0, r0, 0x1e
/* 803E0AD8  7C 05 00 40 */	cmplw r5, r0
/* 803E0ADC  40 82 00 10 */	bne lbl_803E0AEC
/* 803E0AE0  7C 08 30 40 */	cmplw r8, r6
/* 803E0AE4  41 82 00 08 */	beq lbl_803E0AEC
/* 803E0AE8  39 29 00 01 */	addi r9, r9, 1
lbl_803E0AEC:
/* 803E0AEC  39 4A 00 02 */	addi r10, r10, 2
/* 803E0AF0  38 84 00 02 */	addi r4, r4, 2
/* 803E0AF4  42 00 FF BC */	bdnz lbl_803E0AB0
lbl_803E0AF8:
/* 803E0AF8  7D 23 4B 78 */	mr r3, r9
/* 803E0AFC  4E 80 00 20 */	blr 
