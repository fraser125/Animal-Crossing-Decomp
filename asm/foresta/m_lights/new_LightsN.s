lbl_803BC244:
/* 803BC244  80 E3 02 D4 */	lwz r7, 0x2d4(r3)
/* 803BC248  38 00 00 00 */	li r0, 0
/* 803BC24C  38 E7 FF 80 */	addi r7, r7, -128
/* 803BC250  90 E3 02 D4 */	stw r7, 0x2d4(r3)
/* 803BC254  7C E3 3B 78 */	mr r3, r7
/* 803BC258  98 87 00 0C */	stb r4, 0xc(r7)
/* 803BC25C  98 87 00 08 */	stb r4, 8(r7)
/* 803BC260  98 A7 00 0D */	stb r5, 0xd(r7)
/* 803BC264  98 A7 00 09 */	stb r5, 9(r7)
/* 803BC268  98 C7 00 0E */	stb r6, 0xe(r7)
/* 803BC26C  98 C7 00 0A */	stb r6, 0xa(r7)
/* 803BC270  98 07 00 00 */	stb r0, 0(r7)
/* 803BC274  4E 80 00 20 */	blr 
