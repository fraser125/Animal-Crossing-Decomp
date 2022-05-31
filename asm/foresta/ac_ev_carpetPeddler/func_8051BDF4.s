lbl_8051BDF4:
/* 8051BDF4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8051BDF8  38 00 00 0F */	li r0, 0xf
/* 8051BDFC  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 8051BE00  3C 84 00 02 */	addis r4, r4, 2
/* 8051BE04  38 60 00 00 */	li r3, 0
/* 8051BE08  80 84 61 3C */	lwz r4, 0x613c(r4)
/* 8051BE0C  38 A4 00 68 */	addi r5, r4, 0x68
/* 8051BE10  7C 09 03 A6 */	mtctr r0
lbl_8051BE14:
/* 8051BE14  A0 85 00 00 */	lhz r4, 0(r5)
/* 8051BE18  54 80 A7 3E */	rlwinm r0, r4, 0x14, 0x1c, 0x1f
/* 8051BE1C  2C 00 00 02 */	cmpwi r0, 2
/* 8051BE20  40 82 00 18 */	bne lbl_8051BE38
/* 8051BE24  54 80 C7 3E */	rlwinm r0, r4, 0x18, 0x1c, 0x1f
/* 8051BE28  2C 00 00 06 */	cmpwi r0, 6
/* 8051BE2C  40 82 00 0C */	bne lbl_8051BE38
/* 8051BE30  38 60 00 01 */	li r3, 1
/* 8051BE34  4E 80 00 20 */	blr 
lbl_8051BE38:
/* 8051BE38  38 A5 00 02 */	addi r5, r5, 2
/* 8051BE3C  42 00 FF D8 */	bdnz lbl_8051BE14
/* 8051BE40  4E 80 00 20 */	blr 
