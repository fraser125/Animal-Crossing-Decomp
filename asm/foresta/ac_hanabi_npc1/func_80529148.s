lbl_80529148:
/* 80529148  38 00 00 04 */	li r0, 4
/* 8052914C  38 80 00 16 */	li r4, 0x16
/* 80529150  98 03 08 08 */	stb r0, 0x808(r3)
/* 80529154  38 00 00 02 */	li r0, 2
/* 80529158  98 83 08 09 */	stb r4, 0x809(r3)
/* 8052915C  98 03 08 0A */	stb r0, 0x80a(r3)
/* 80529160  4E 80 00 20 */	blr 