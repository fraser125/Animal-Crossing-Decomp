lbl_8060BA34:
/* 8060BA34  38 80 00 F0 */	li r4, 0xf0
/* 8060BA38  38 00 00 00 */	li r0, 0
/* 8060BA3C  B0 83 00 00 */	sth r4, 0(r3)
/* 8060BA40  B0 03 00 4C */	sth r0, 0x4c(r3)
/* 8060BA44  4E 80 00 20 */	blr 