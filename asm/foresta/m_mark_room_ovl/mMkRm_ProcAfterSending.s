lbl_804D2130:
/* 804D2130  2C 04 02 21 */	cmpwi r4, 0x221
/* 804D2134  40 82 00 18 */	bne lbl_804D214C
/* 804D2138  88 03 00 24 */	lbz r0, 0x24(r3)
/* 804D213C  38 80 00 01 */	li r4, 1
/* 804D2140  50 80 1F 38 */	rlwimi r0, r4, 3, 0x1c, 0x1c
/* 804D2144  98 03 00 24 */	stb r0, 0x24(r3)
/* 804D2148  4E 80 00 20 */	blr 
lbl_804D214C:
/* 804D214C  2C 04 02 22 */	cmpwi r4, 0x222
/* 804D2150  4C 82 00 20 */	bnelr 
/* 804D2154  88 03 00 24 */	lbz r0, 0x24(r3)
/* 804D2158  38 80 00 01 */	li r4, 1
/* 804D215C  50 80 17 7A */	rlwimi r0, r4, 2, 0x1d, 0x1d
/* 804D2160  98 03 00 24 */	stb r0, 0x24(r3)
/* 804D2164  4E 80 00 20 */	blr 