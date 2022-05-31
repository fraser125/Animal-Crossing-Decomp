lbl_803E0B00:
/* 803E0B00  28 03 00 00 */	cmplwi r3, 0
/* 803E0B04  39 00 00 00 */	li r8, 0
/* 803E0B08  41 82 00 58 */	beq lbl_803E0B60
/* 803E0B0C  38 00 00 0F */	li r0, 0xf
/* 803E0B10  54 86 06 3E */	clrlwi r6, r4, 0x18
/* 803E0B14  39 23 00 68 */	addi r9, r3, 0x68
/* 803E0B18  38 80 00 00 */	li r4, 0
/* 803E0B1C  7C 09 03 A6 */	mtctr r0
lbl_803E0B20:
/* 803E0B20  A0 E9 00 00 */	lhz r7, 0(r9)
/* 803E0B24  54 E0 A7 3E */	rlwinm r0, r7, 0x14, 0x1c, 0x1f
/* 803E0B28  2C 00 00 02 */	cmpwi r0, 2
/* 803E0B2C  40 82 00 28 */	bne lbl_803E0B54
/* 803E0B30  54 E0 C7 3E */	rlwinm r0, r7, 0x18, 0x1c, 0x1f
/* 803E0B34  7C 00 30 00 */	cmpw r0, r6
/* 803E0B38  40 82 00 1C */	bne lbl_803E0B54
/* 803E0B3C  80 03 00 88 */	lwz r0, 0x88(r3)
/* 803E0B40  7C 00 24 30 */	srw r0, r0, r4
/* 803E0B44  54 00 07 BE */	clrlwi r0, r0, 0x1e
/* 803E0B48  7C 05 00 40 */	cmplw r5, r0
/* 803E0B4C  40 82 00 08 */	bne lbl_803E0B54
/* 803E0B50  39 08 00 01 */	addi r8, r8, 1
lbl_803E0B54:
/* 803E0B54  39 29 00 02 */	addi r9, r9, 2
/* 803E0B58  38 84 00 02 */	addi r4, r4, 2
/* 803E0B5C  42 00 FF C4 */	bdnz lbl_803E0B20
lbl_803E0B60:
/* 803E0B60  7D 03 43 78 */	mr r3, r8
/* 803E0B64  4E 80 00 20 */	blr 
