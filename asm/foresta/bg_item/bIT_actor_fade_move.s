lbl_804B77F0:
/* 804B77F0  38 00 00 03 */	li r0, 3
/* 804B77F4  38 60 00 00 */	li r3, 0
/* 804B77F8  7C 09 03 A6 */	mtctr r0
lbl_804B77FC:
/* 804B77FC  88 04 00 0F */	lbz r0, 0xf(r4)
/* 804B7800  28 00 00 00 */	cmplwi r0, 0
/* 804B7804  41 82 00 2C */	beq lbl_804B7830
/* 804B7808  88 A4 00 10 */	lbz r5, 0x10(r4)
/* 804B780C  38 05 00 01 */	addi r0, r5, 1
/* 804B7810  98 04 00 10 */	stb r0, 0x10(r4)
/* 804B7814  88 A4 00 0E */	lbz r5, 0xe(r4)
/* 804B7818  28 05 00 14 */	cmplwi r5, 0x14
/* 804B781C  40 80 00 0C */	bge lbl_804B7828
/* 804B7820  98 64 00 0F */	stb r3, 0xf(r4)
/* 804B7824  48 00 00 0C */	b lbl_804B7830
lbl_804B7828:
/* 804B7828  38 05 FF EC */	addi r0, r5, -20
/* 804B782C  98 04 00 0E */	stb r0, 0xe(r4)
lbl_804B7830:
/* 804B7830  38 84 00 14 */	addi r4, r4, 0x14
/* 804B7834  42 00 FF C8 */	bdnz lbl_804B77FC
/* 804B7838  4E 80 00 20 */	blr 
