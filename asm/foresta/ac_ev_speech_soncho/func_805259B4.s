lbl_805259B4:
/* 805259B4  38 00 00 04 */	li r0, 4
/* 805259B8  38 80 00 16 */	li r4, 0x16
/* 805259BC  98 03 08 08 */	stb r0, 0x808(r3)
/* 805259C0  38 00 00 02 */	li r0, 2
/* 805259C4  98 83 08 09 */	stb r4, 0x809(r3)
/* 805259C8  98 03 08 0A */	stb r0, 0x80a(r3)
/* 805259CC  4E 80 00 20 */	blr 
