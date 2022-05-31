lbl_803A0DD8:
/* 803A0DD8  54 80 06 31 */	rlwinm. r0, r4, 0, 0x18, 0x18
/* 803A0DDC  41 82 00 0C */	beq lbl_803A0DE8
/* 803A0DE0  38 A0 00 01 */	li r5, 1
/* 803A0DE4  48 00 00 14 */	b lbl_803A0DF8
lbl_803A0DE8:
/* 803A0DE8  54 85 D7 FE */	rlwinm r5, r4, 0x1a, 0x1f, 0x1f
/* 803A0DEC  38 00 00 02 */	li r0, 2
/* 803A0DF0  7C A5 00 D0 */	neg r5, r5
/* 803A0DF4  7C 05 28 38 */	and r5, r0, r5
lbl_803A0DF8:
/* 803A0DF8  54 80 07 3E */	clrlwi r0, r4, 0x1c
/* 803A0DFC  98 A3 00 09 */	stb r5, 9(r3)
/* 803A0E00  20 80 00 01 */	subfic r4, r0, 1
/* 803A0E04  30 04 FF FF */	addic r0, r4, -1
/* 803A0E08  7C 00 21 10 */	subfe r0, r0, r4
/* 803A0E0C  98 03 00 08 */	stb r0, 8(r3)
/* 803A0E10  4E 80 00 20 */	blr 
