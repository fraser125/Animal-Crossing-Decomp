lbl_805D1F20:
/* 805D1F20  2C 04 00 00 */	cmpwi r4, 0
/* 805D1F24  4D 80 00 20 */	bltlr 
/* 805D1F28  2C 04 00 1F */	cmpwi r4, 0x1f
/* 805D1F2C  4D 81 00 20 */	bgtlr 
/* 805D1F30  2C 05 00 00 */	cmpwi r5, 0
/* 805D1F34  4D 80 00 20 */	bltlr 
/* 805D1F38  2C 05 00 1F */	cmpwi r5, 0x1f
/* 805D1F3C  40 81 00 08 */	ble lbl_805D1F44
/* 805D1F40  4E 80 00 20 */	blr 
lbl_805D1F44:
/* 805D1F44  54 87 06 F8 */	rlwinm r7, r4, 0, 0x1b, 0x1c
/* 805D1F48  54 80 07 FF */	clrlwi. r0, r4, 0x1f
/* 805D1F4C  7C E8 1E 70 */	srawi r8, r7, 3
/* 805D1F50  54 A9 1E B8 */	rlwinm r9, r5, 3, 0x1a, 0x1c
/* 805D1F54  54 A7 06 F8 */	rlwinm r7, r5, 0, 0x1b, 0x1c
/* 805D1F58  54 84 07 7E */	clrlwi r4, r4, 0x1d
/* 805D1F5C  7C E7 1E 70 */	srawi r7, r7, 3
/* 805D1F60  54 E5 10 3A */	slwi r5, r7, 2
/* 805D1F64  7C 08 2A 14 */	add r0, r8, r5
/* 805D1F68  54 00 30 32 */	slwi r0, r0, 6
/* 805D1F6C  7C 09 02 14 */	add r0, r9, r0
/* 805D1F70  7C 04 02 14 */	add r0, r4, r0
/* 805D1F74  7C 00 0E 70 */	srawi r0, r0, 1
/* 805D1F78  41 82 00 24 */	beq lbl_805D1F9C
/* 805D1F7C  7C 63 02 14 */	add r3, r3, r0
/* 805D1F80  88 03 02 20 */	lbz r0, 0x220(r3)
/* 805D1F84  54 00 06 36 */	rlwinm r0, r0, 0, 0x18, 0x1b
/* 805D1F88  98 03 02 20 */	stb r0, 0x220(r3)
/* 805D1F8C  88 03 02 20 */	lbz r0, 0x220(r3)
/* 805D1F90  7C 00 33 78 */	or r0, r0, r6
/* 805D1F94  98 03 02 20 */	stb r0, 0x220(r3)
/* 805D1F98  4E 80 00 20 */	blr 
lbl_805D1F9C:
/* 805D1F9C  7C 83 02 14 */	add r4, r3, r0
/* 805D1FA0  54 C0 20 36 */	slwi r0, r6, 4
/* 805D1FA4  88 64 02 20 */	lbz r3, 0x220(r4)
/* 805D1FA8  54 63 07 3E */	clrlwi r3, r3, 0x1c
/* 805D1FAC  98 64 02 20 */	stb r3, 0x220(r4)
/* 805D1FB0  88 64 02 20 */	lbz r3, 0x220(r4)
/* 805D1FB4  7C 60 03 78 */	or r0, r3, r0
/* 805D1FB8  98 04 02 20 */	stb r0, 0x220(r4)
/* 805D1FBC  4E 80 00 20 */	blr 
