lbl_804981B0:
/* 804981B0  38 00 00 05 */	li r0, 5
/* 804981B4  54 66 04 3E */	clrlwi r6, r3, 0x10
/* 804981B8  38 60 FF FF */	li r3, -1
/* 804981BC  38 E0 00 00 */	li r7, 0
/* 804981C0  7C 09 03 A6 */	mtctr r0
lbl_804981C4:
/* 804981C4  A0 05 00 00 */	lhz r0, 0(r5)
/* 804981C8  7C 00 30 40 */	cmplw r0, r6
/* 804981CC  40 82 00 18 */	bne lbl_804981E4
/* 804981D0  80 05 00 14 */	lwz r0, 0x14(r5)
/* 804981D4  7C 00 20 00 */	cmpw r0, r4
/* 804981D8  40 82 00 0C */	bne lbl_804981E4
/* 804981DC  7C E3 3B 78 */	mr r3, r7
/* 804981E0  4E 80 00 20 */	blr 
lbl_804981E4:
/* 804981E4  38 A5 00 18 */	addi r5, r5, 0x18
/* 804981E8  38 E7 00 01 */	addi r7, r7, 1
/* 804981EC  42 00 FF D8 */	bdnz lbl_804981C4
/* 804981F0  4E 80 00 20 */	blr 