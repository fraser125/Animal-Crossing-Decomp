lbl_8044A138:
/* 8044A138  2C 05 00 01 */	cmpwi r5, 1
/* 8044A13C  40 82 00 88 */	bne lbl_8044A1C4
/* 8044A140  A8 89 00 00 */	lha r4, 0(r9)
/* 8044A144  38 00 EA AB */	li r0, -5461
/* 8044A148  A8 68 06 1C */	lha r3, 0x61c(r8)
/* 8044A14C  7C 64 1A 14 */	add r3, r4, r3
/* 8044A150  2C 03 EA AB */	cmpwi r3, -5461
/* 8044A154  40 81 00 08 */	ble lbl_8044A15C
/* 8044A158  7C 60 1B 78 */	mr r0, r3
lbl_8044A15C:
/* 8044A15C  2C 00 15 55 */	cmpwi r0, 0x1555
/* 8044A160  40 80 00 18 */	bge lbl_8044A178
/* 8044A164  2C 03 EA AB */	cmpwi r3, -5461
/* 8044A168  38 00 EA AB */	li r0, -5461
/* 8044A16C  40 81 00 10 */	ble lbl_8044A17C
/* 8044A170  7C 60 1B 78 */	mr r0, r3
/* 8044A174  48 00 00 08 */	b lbl_8044A17C
lbl_8044A178:
/* 8044A178  38 00 15 55 */	li r0, 0x1555
lbl_8044A17C:
/* 8044A17C  B0 09 00 00 */	sth r0, 0(r9)
/* 8044A180  38 00 EA AB */	li r0, -5461
/* 8044A184  A8 89 00 02 */	lha r4, 2(r9)
/* 8044A188  A8 68 06 1C */	lha r3, 0x61c(r8)
/* 8044A18C  7C 64 1A 14 */	add r3, r4, r3
/* 8044A190  2C 03 EA AB */	cmpwi r3, -5461
/* 8044A194  40 81 00 08 */	ble lbl_8044A19C
/* 8044A198  7C 60 1B 78 */	mr r0, r3
lbl_8044A19C:
/* 8044A19C  2C 00 15 55 */	cmpwi r0, 0x1555
/* 8044A1A0  40 80 00 18 */	bge lbl_8044A1B8
/* 8044A1A4  2C 03 EA AB */	cmpwi r3, -5461
/* 8044A1A8  38 00 EA AB */	li r0, -5461
/* 8044A1AC  40 81 00 10 */	ble lbl_8044A1BC
/* 8044A1B0  7C 60 1B 78 */	mr r0, r3
/* 8044A1B4  48 00 00 08 */	b lbl_8044A1BC
lbl_8044A1B8:
/* 8044A1B8  38 00 15 55 */	li r0, 0x1555
lbl_8044A1BC:
/* 8044A1BC  B0 09 00 02 */	sth r0, 2(r9)
/* 8044A1C0  48 00 00 94 */	b lbl_8044A254
lbl_8044A1C4:
/* 8044A1C4  2C 05 00 02 */	cmpwi r5, 2
/* 8044A1C8  40 82 00 8C */	bne lbl_8044A254
/* 8044A1CC  A8 88 06 1C */	lha r4, 0x61c(r8)
/* 8044A1D0  38 00 D5 56 */	li r0, -10922
/* 8044A1D4  A8 69 00 02 */	lha r3, 2(r9)
/* 8044A1D8  1C 84 00 03 */	mulli r4, r4, 3
/* 8044A1DC  7C 64 18 50 */	subf r3, r4, r3
/* 8044A1E0  2C 03 D5 56 */	cmpwi r3, -10922
/* 8044A1E4  40 81 00 08 */	ble lbl_8044A1EC
/* 8044A1E8  7C 60 1B 78 */	mr r0, r3
lbl_8044A1EC:
/* 8044A1EC  2C 00 2A AA */	cmpwi r0, 0x2aaa
/* 8044A1F0  40 80 00 18 */	bge lbl_8044A208
/* 8044A1F4  2C 03 D5 56 */	cmpwi r3, -10922
/* 8044A1F8  38 00 D5 56 */	li r0, -10922
/* 8044A1FC  40 81 00 10 */	ble lbl_8044A20C
/* 8044A200  7C 60 1B 78 */	mr r0, r3
/* 8044A204  48 00 00 08 */	b lbl_8044A20C
lbl_8044A208:
/* 8044A208  38 00 2A AA */	li r0, 0x2aaa
lbl_8044A20C:
/* 8044A20C  B0 09 00 02 */	sth r0, 2(r9)
/* 8044A210  38 00 EA AB */	li r0, -5461
/* 8044A214  A8 88 06 1C */	lha r4, 0x61c(r8)
/* 8044A218  A8 69 00 00 */	lha r3, 0(r9)
/* 8044A21C  7C 84 0E 70 */	srawi r4, r4, 1
/* 8044A220  7C 64 18 50 */	subf r3, r4, r3
/* 8044A224  2C 03 EA AB */	cmpwi r3, -5461
/* 8044A228  40 81 00 08 */	ble lbl_8044A230
/* 8044A22C  7C 60 1B 78 */	mr r0, r3
lbl_8044A230:
/* 8044A230  2C 00 15 55 */	cmpwi r0, 0x1555
/* 8044A234  40 80 00 18 */	bge lbl_8044A24C
/* 8044A238  2C 03 EA AB */	cmpwi r3, -5461
/* 8044A23C  38 00 EA AB */	li r0, -5461
/* 8044A240  40 81 00 10 */	ble lbl_8044A250
/* 8044A244  7C 60 1B 78 */	mr r0, r3
/* 8044A248  48 00 00 08 */	b lbl_8044A250
lbl_8044A24C:
/* 8044A24C  38 00 15 55 */	li r0, 0x1555
lbl_8044A250:
/* 8044A250  B0 09 00 00 */	sth r0, 0(r9)
lbl_8044A254:
/* 8044A254  38 60 00 01 */	li r3, 1
/* 8044A258  4E 80 00 20 */	blr 
