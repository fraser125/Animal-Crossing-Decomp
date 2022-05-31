lbl_804B4AC4:
/* 804B4AC4  38 00 01 00 */	li r0, 0x100
/* 804B4AC8  7C 09 03 A6 */	mtctr r0
lbl_804B4ACC:
/* 804B4ACC  88 04 00 00 */	lbz r0, 0(r4)
/* 804B4AD0  38 84 00 01 */	addi r4, r4, 1
/* 804B4AD4  98 03 00 00 */	stb r0, 0(r3)
/* 804B4AD8  38 63 00 01 */	addi r3, r3, 1
/* 804B4ADC  42 00 FF F0 */	bdnz lbl_804B4ACC
/* 804B4AE0  4E 80 00 20 */	blr 
