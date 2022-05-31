lbl_804BBE48:
/* 804BBE48  38 00 01 00 */	li r0, 0x100
/* 804BBE4C  7C 09 03 A6 */	mtctr r0
lbl_804BBE50:
/* 804BBE50  88 04 00 00 */	lbz r0, 0(r4)
/* 804BBE54  38 84 00 01 */	addi r4, r4, 1
/* 804BBE58  98 03 00 00 */	stb r0, 0(r3)
/* 804BBE5C  38 63 00 01 */	addi r3, r3, 1
/* 804BBE60  42 00 FF F0 */	bdnz lbl_804BBE50
/* 804BBE64  4E 80 00 20 */	blr 
