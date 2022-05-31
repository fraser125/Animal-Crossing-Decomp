lbl_803E0A24:
/* 803E0A24  28 03 00 00 */	cmplwi r3, 0
/* 803E0A28  39 20 00 00 */	li r9, 0
/* 803E0A2C  41 82 00 58 */	beq lbl_803E0A84
/* 803E0A30  38 00 00 0F */	li r0, 0xf
/* 803E0A34  39 43 00 68 */	addi r10, r3, 0x68
/* 803E0A38  54 87 04 3E */	clrlwi r7, r4, 0x10
/* 803E0A3C  54 C6 04 3E */	clrlwi r6, r6, 0x10
/* 803E0A40  38 80 00 00 */	li r4, 0
/* 803E0A44  7C 09 03 A6 */	mtctr r0
lbl_803E0A48:
/* 803E0A48  A1 0A 00 00 */	lhz r8, 0(r10)
/* 803E0A4C  55 00 A7 3E */	rlwinm r0, r8, 0x14, 0x1c, 0x1f
/* 803E0A50  7C 00 38 00 */	cmpw r0, r7
/* 803E0A54  40 82 00 24 */	bne lbl_803E0A78
/* 803E0A58  80 03 00 88 */	lwz r0, 0x88(r3)
/* 803E0A5C  7C 00 24 30 */	srw r0, r0, r4
/* 803E0A60  54 00 07 BE */	clrlwi r0, r0, 0x1e
/* 803E0A64  7C 05 00 40 */	cmplw r5, r0
/* 803E0A68  40 82 00 10 */	bne lbl_803E0A78
/* 803E0A6C  7C 08 30 40 */	cmplw r8, r6
/* 803E0A70  41 82 00 08 */	beq lbl_803E0A78
/* 803E0A74  39 29 00 01 */	addi r9, r9, 1
lbl_803E0A78:
/* 803E0A78  39 4A 00 02 */	addi r10, r10, 2
/* 803E0A7C  38 84 00 02 */	addi r4, r4, 2
/* 803E0A80  42 00 FF C8 */	bdnz lbl_803E0A48
lbl_803E0A84:
/* 803E0A84  7D 23 4B 78 */	mr r3, r9
/* 803E0A88  4E 80 00 20 */	blr 
