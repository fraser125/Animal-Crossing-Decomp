lbl_804BFCD4:
/* 804BFCD4  38 00 00 09 */	li r0, 9
/* 804BFCD8  39 00 00 00 */	li r8, 0
/* 804BFCDC  38 A0 00 00 */	li r5, 0
/* 804BFCE0  7C 09 03 A6 */	mtctr r0
lbl_804BFCE4:
/* 804BFCE4  80 E3 00 00 */	lwz r7, 0(r3)
/* 804BFCE8  55 00 83 1E */	rlwinm r0, r8, 0x10, 0xc, 0xf
/* 804BFCEC  64 00 F0 80 */	oris r0, r0, 0xf080
/* 804BFCF0  39 08 00 01 */	addi r8, r8, 1
/* 804BFCF4  38 C7 00 08 */	addi r6, r7, 8
/* 804BFCF8  90 C3 00 00 */	stw r6, 0(r3)
/* 804BFCFC  60 00 40 10 */	ori r0, r0, 0x4010
/* 804BFD00  90 07 00 00 */	stw r0, 0(r7)
/* 804BFD04  7C 04 28 2E */	lwzx r0, r4, r5
/* 804BFD08  38 A5 00 04 */	addi r5, r5, 4
/* 804BFD0C  90 07 00 04 */	stw r0, 4(r7)
/* 804BFD10  42 00 FF D4 */	bdnz lbl_804BFCE4
/* 804BFD14  4E 80 00 20 */	blr 
