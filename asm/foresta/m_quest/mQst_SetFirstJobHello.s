lbl_803E3EB0:
/* 803E3EB0  28 03 00 00 */	cmplwi r3, 0
/* 803E3EB4  4D 82 00 20 */	beqlr 
/* 803E3EB8  88 03 00 00 */	lbz r0, 0(r3)
/* 803E3EBC  38 80 00 01 */	li r4, 1
/* 803E3EC0  50 80 36 32 */	rlwimi r0, r4, 6, 0x18, 0x19
/* 803E3EC4  38 C0 00 0C */	li r6, 0xc
/* 803E3EC8  98 03 00 00 */	stb r0, 0(r3)
/* 803E3ECC  38 A0 00 00 */	li r5, 0
/* 803E3ED0  38 80 00 02 */	li r4, 2
/* 803E3ED4  88 03 00 00 */	lbz r0, 0(r3)
/* 803E3ED8  50 C0 06 BE */	rlwimi r0, r6, 0, 0x1a, 0x1f
/* 803E3EDC  98 03 00 00 */	stb r0, 0(r3)
/* 803E3EE0  88 03 00 01 */	lbz r0, 1(r3)
/* 803E3EE4  50 A0 3E 30 */	rlwimi r0, r5, 7, 0x18, 0x18
/* 803E3EE8  98 03 00 01 */	stb r0, 1(r3)
/* 803E3EEC  88 03 00 01 */	lbz r0, 1(r3)
/* 803E3EF0  50 80 1E 78 */	rlwimi r0, r4, 3, 0x19, 0x1c
/* 803E3EF4  98 03 00 01 */	stb r0, 1(r3)
/* 803E3EF8  88 03 00 01 */	lbz r0, 1(r3)
/* 803E3EFC  50 A0 17 7A */	rlwimi r0, r5, 2, 0x1d, 0x1d
/* 803E3F00  98 03 00 01 */	stb r0, 1(r3)
/* 803E3F04  88 03 00 2A */	lbz r0, 0x2a(r3)
/* 803E3F08  50 80 07 7E */	rlwimi r0, r4, 0, 0x1d, 0x1f
/* 803E3F0C  98 03 00 2A */	stb r0, 0x2a(r3)
/* 803E3F10  4E 80 00 20 */	blr 
