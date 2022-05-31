lbl_803C9B74:
/* 803C9B74  38 00 02 00 */	li r0, 0x200
/* 803C9B78  7C 09 03 A6 */	mtctr r0
lbl_803C9B7C:
/* 803C9B7C  88 A3 00 00 */	lbz r5, 0(r3)
/* 803C9B80  38 63 00 01 */	addi r3, r3, 1
/* 803C9B84  54 A0 26 36 */	rlwinm r0, r5, 4, 0x18, 0x1b
/* 803C9B88  50 A0 E7 3E */	rlwimi r0, r5, 0x1c, 0x1c, 0x1f
/* 803C9B8C  98 04 00 00 */	stb r0, 0(r4)
/* 803C9B90  38 84 00 01 */	addi r4, r4, 1
/* 803C9B94  42 00 FF E8 */	bdnz lbl_803C9B7C
/* 803C9B98  4E 80 00 20 */	blr 
