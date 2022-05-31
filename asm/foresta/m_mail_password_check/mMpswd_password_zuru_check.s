lbl_803BE2A0:
/* 803BE2A0  88 03 00 04 */	lbz r0, 4(r3)
/* 803BE2A4  38 A0 00 01 */	li r5, 1
/* 803BE2A8  28 00 00 06 */	cmplwi r0, 6
/* 803BE2AC  40 80 00 6C */	bge lbl_803BE318
/* 803BE2B0  38 00 00 08 */	li r0, 8
/* 803BE2B4  38 C0 00 00 */	li r6, 0
/* 803BE2B8  38 80 00 00 */	li r4, 0
/* 803BE2BC  7C 09 03 A6 */	mtctr r0
lbl_803BE2C0:
/* 803BE2C0  38 04 00 07 */	addi r0, r4, 7
/* 803BE2C4  38 84 00 01 */	addi r4, r4, 1
/* 803BE2C8  7C 03 00 AE */	lbzx r0, r3, r0
/* 803BE2CC  7C C6 02 14 */	add r6, r6, r0
/* 803BE2D0  42 00 FF F0 */	bdnz lbl_803BE2C0
/* 803BE2D4  38 00 00 08 */	li r0, 8
/* 803BE2D8  38 80 00 00 */	li r4, 0
/* 803BE2DC  7C 09 03 A6 */	mtctr r0
lbl_803BE2E0:
/* 803BE2E0  38 04 00 0F */	addi r0, r4, 0xf
/* 803BE2E4  38 84 00 01 */	addi r4, r4, 1
/* 803BE2E8  7C 03 00 AE */	lbzx r0, r3, r0
/* 803BE2EC  7C C6 02 14 */	add r6, r6, r0
/* 803BE2F0  42 00 FF F0 */	bdnz lbl_803BE2E0
/* 803BE2F4  A0 03 00 00 */	lhz r0, 0(r3)
/* 803BE2F8  88 83 00 03 */	lbz r4, 3(r3)
/* 803BE2FC  7C C6 02 14 */	add r6, r6, r0
/* 803BE300  88 03 00 06 */	lbz r0, 6(r3)
/* 803BE304  7C C6 22 14 */	add r6, r6, r4
/* 803BE308  54 C3 07 BE */	clrlwi r3, r6, 0x1e
/* 803BE30C  7C 03 00 00 */	cmpw r3, r0
/* 803BE310  40 82 00 08 */	bne lbl_803BE318
/* 803BE314  38 A0 00 00 */	li r5, 0
lbl_803BE318:
/* 803BE318  7C A3 2B 78 */	mr r3, r5
/* 803BE31C  4E 80 00 20 */	blr 
