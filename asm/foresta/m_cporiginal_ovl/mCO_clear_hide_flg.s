lbl_805CD308:
/* 805CD308  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805CD30C  38 60 00 00 */	li r3, 0
/* 805CD310  38 00 00 08 */	li r0, 8
/* 805CD314  7C 64 1B 78 */	mr r4, r3
/* 805CD318  80 A5 09 DC */	lwz r5, 0x9dc(r5)
/* 805CD31C  7C 09 03 A6 */	mtctr r0
lbl_805CD320:
/* 805CD320  38 03 00 16 */	addi r0, r3, 0x16
/* 805CD324  38 63 00 02 */	addi r3, r3, 2
/* 805CD328  7C 85 03 2E */	sthx r4, r5, r0
/* 805CD32C  42 00 FF F4 */	bdnz lbl_805CD320
/* 805CD330  4E 80 00 20 */	blr 
