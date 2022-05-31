lbl_805D1EA0:
/* 805D1EA0  2C 04 00 00 */	cmpwi r4, 0
/* 805D1EA4  41 80 00 1C */	blt lbl_805D1EC0
/* 805D1EA8  2C 04 00 1F */	cmpwi r4, 0x1f
/* 805D1EAC  41 81 00 14 */	bgt lbl_805D1EC0
/* 805D1EB0  2C 05 00 00 */	cmpwi r5, 0
/* 805D1EB4  41 80 00 0C */	blt lbl_805D1EC0
/* 805D1EB8  2C 05 00 1F */	cmpwi r5, 0x1f
/* 805D1EBC  40 81 00 0C */	ble lbl_805D1EC8
lbl_805D1EC0:
/* 805D1EC0  38 60 00 00 */	li r3, 0
/* 805D1EC4  4E 80 00 20 */	blr 
lbl_805D1EC8:
/* 805D1EC8  54 86 06 F8 */	rlwinm r6, r4, 0, 0x1b, 0x1c
/* 805D1ECC  54 80 07 FF */	clrlwi. r0, r4, 0x1f
/* 805D1ED0  7C C7 1E 70 */	srawi r7, r6, 3
/* 805D1ED4  54 A8 1E B8 */	rlwinm r8, r5, 3, 0x1a, 0x1c
/* 805D1ED8  54 A6 06 F8 */	rlwinm r6, r5, 0, 0x1b, 0x1c
/* 805D1EDC  54 84 07 7E */	clrlwi r4, r4, 0x1d
/* 805D1EE0  7C C6 1E 70 */	srawi r6, r6, 3
/* 805D1EE4  54 C5 10 3A */	slwi r5, r6, 2
/* 805D1EE8  7C 07 2A 14 */	add r0, r7, r5
/* 805D1EEC  54 00 30 32 */	slwi r0, r0, 6
/* 805D1EF0  7C 08 02 14 */	add r0, r8, r0
/* 805D1EF4  7C 04 02 14 */	add r0, r4, r0
/* 805D1EF8  7C 00 0E 70 */	srawi r0, r0, 1
/* 805D1EFC  41 82 00 14 */	beq lbl_805D1F10
/* 805D1F00  7C 63 02 14 */	add r3, r3, r0
/* 805D1F04  88 03 02 20 */	lbz r0, 0x220(r3)
/* 805D1F08  54 03 07 3E */	clrlwi r3, r0, 0x1c
/* 805D1F0C  4E 80 00 20 */	blr 
lbl_805D1F10:
/* 805D1F10  7C 63 02 14 */	add r3, r3, r0
/* 805D1F14  88 03 02 20 */	lbz r0, 0x220(r3)
/* 805D1F18  54 03 E7 3E */	rlwinm r3, r0, 0x1c, 0x1c, 0x1f
/* 805D1F1C  4E 80 00 20 */	blr 
