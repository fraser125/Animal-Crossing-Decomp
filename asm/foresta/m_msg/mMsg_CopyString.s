lbl_803C0E3C:
/* 803C0E3C  7C A9 03 A6 */	mtctr r5
/* 803C0E40  2C 05 00 00 */	cmpwi r5, 0
/* 803C0E44  4C 81 00 20 */	blelr 
lbl_803C0E48:
/* 803C0E48  88 04 00 00 */	lbz r0, 0(r4)
/* 803C0E4C  38 84 00 01 */	addi r4, r4, 1
/* 803C0E50  98 03 00 00 */	stb r0, 0(r3)
/* 803C0E54  38 63 00 01 */	addi r3, r3, 1
/* 803C0E58  42 00 FF F0 */	bdnz lbl_803C0E48
/* 803C0E5C  4E 80 00 20 */	blr 
