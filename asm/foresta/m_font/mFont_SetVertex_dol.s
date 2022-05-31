lbl_803AFB40:
/* 803AFB40  B0 83 00 00 */	sth r4, 0(r3)
/* 803AFB44  38 80 00 00 */	li r4, 0
/* 803AFB48  38 00 00 01 */	li r0, 1
/* 803AFB4C  B0 A3 00 02 */	sth r5, 2(r3)
/* 803AFB50  B0 83 00 04 */	sth r4, 4(r3)
/* 803AFB54  B0 03 00 06 */	sth r0, 6(r3)
/* 803AFB58  B0 C3 00 08 */	sth r6, 8(r3)
/* 803AFB5C  B0 E3 00 0A */	sth r7, 0xa(r3)
/* 803AFB60  98 83 00 0C */	stb r4, 0xc(r3)
/* 803AFB64  98 83 00 0D */	stb r4, 0xd(r3)
/* 803AFB68  98 83 00 0E */	stb r4, 0xe(r3)
/* 803AFB6C  98 83 00 0F */	stb r4, 0xf(r3)
/* 803AFB70  4E 80 00 20 */	blr 
