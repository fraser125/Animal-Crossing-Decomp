lbl_804BF2E8:
/* 804BF2E8  38 00 00 03 */	li r0, 3
/* 804BF2EC  38 60 00 00 */	li r3, 0
/* 804BF2F0  7C 09 03 A6 */	mtctr r0
lbl_804BF2F4:
/* 804BF2F4  88 04 00 0F */	lbz r0, 0xf(r4)
/* 804BF2F8  28 00 00 00 */	cmplwi r0, 0
/* 804BF2FC  41 82 00 2C */	beq lbl_804BF328
/* 804BF300  88 A4 00 10 */	lbz r5, 0x10(r4)
/* 804BF304  38 05 00 01 */	addi r0, r5, 1
/* 804BF308  98 04 00 10 */	stb r0, 0x10(r4)
/* 804BF30C  88 A4 00 0E */	lbz r5, 0xe(r4)
/* 804BF310  28 05 00 14 */	cmplwi r5, 0x14
/* 804BF314  40 80 00 0C */	bge lbl_804BF320
/* 804BF318  98 64 00 0F */	stb r3, 0xf(r4)
/* 804BF31C  48 00 00 0C */	b lbl_804BF328
lbl_804BF320:
/* 804BF320  38 05 FF EC */	addi r0, r5, -20
/* 804BF324  98 04 00 0E */	stb r0, 0xe(r4)
lbl_804BF328:
/* 804BF328  38 84 00 14 */	addi r4, r4, 0x14
/* 804BF32C  42 00 FF C8 */	bdnz lbl_804BF2F4
/* 804BF330  4E 80 00 20 */	blr 
