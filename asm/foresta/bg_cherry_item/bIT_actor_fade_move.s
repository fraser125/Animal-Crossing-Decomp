lbl_804B046C:
/* 804B046C  38 00 00 03 */	li r0, 3
/* 804B0470  38 60 00 00 */	li r3, 0
/* 804B0474  7C 09 03 A6 */	mtctr r0
lbl_804B0478:
/* 804B0478  88 04 00 0F */	lbz r0, 0xf(r4)
/* 804B047C  28 00 00 00 */	cmplwi r0, 0
/* 804B0480  41 82 00 2C */	beq lbl_804B04AC
/* 804B0484  88 A4 00 10 */	lbz r5, 0x10(r4)
/* 804B0488  38 05 00 01 */	addi r0, r5, 1
/* 804B048C  98 04 00 10 */	stb r0, 0x10(r4)
/* 804B0490  88 A4 00 0E */	lbz r5, 0xe(r4)
/* 804B0494  28 05 00 14 */	cmplwi r5, 0x14
/* 804B0498  40 80 00 0C */	bge lbl_804B04A4
/* 804B049C  98 64 00 0F */	stb r3, 0xf(r4)
/* 804B04A0  48 00 00 0C */	b lbl_804B04AC
lbl_804B04A4:
/* 804B04A4  38 05 FF EC */	addi r0, r5, -20
/* 804B04A8  98 04 00 0E */	stb r0, 0xe(r4)
lbl_804B04AC:
/* 804B04AC  38 84 00 14 */	addi r4, r4, 0x14
/* 804B04B0  42 00 FF C8 */	bdnz lbl_804B0478
/* 804B04B4  4E 80 00 20 */	blr 