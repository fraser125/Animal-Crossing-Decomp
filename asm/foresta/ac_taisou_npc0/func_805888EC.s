lbl_805888EC:
/* 805888EC  38 00 00 04 */	li r0, 4
/* 805888F0  38 80 00 16 */	li r4, 0x16
/* 805888F4  98 03 08 08 */	stb r0, 0x808(r3)
/* 805888F8  38 00 00 02 */	li r0, 2
/* 805888FC  98 83 08 09 */	stb r4, 0x809(r3)
/* 80588900  98 03 08 0A */	stb r0, 0x80a(r3)
/* 80588904  4E 80 00 20 */	blr 
