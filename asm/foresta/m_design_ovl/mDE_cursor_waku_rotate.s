lbl_805D1CE8:
/* 805D1CE8  2C 04 00 02 */	cmpwi r4, 2
/* 805D1CEC  41 82 00 F4 */	beq lbl_805D1DE0
/* 805D1CF0  40 80 00 14 */	bge lbl_805D1D04
/* 805D1CF4  2C 04 00 00 */	cmpwi r4, 0
/* 805D1CF8  41 82 00 18 */	beq lbl_805D1D10
/* 805D1CFC  40 80 00 7C */	bge lbl_805D1D78
/* 805D1D00  48 00 01 98 */	b lbl_805D1E98
lbl_805D1D04:
/* 805D1D04  2C 04 00 04 */	cmpwi r4, 4
/* 805D1D08  40 80 01 90 */	bge lbl_805D1E98
/* 805D1D0C  48 00 01 30 */	b lbl_805D1E3C
lbl_805D1D10:
/* 805D1D10  80 83 06 6C */	lwz r4, 0x66c(r3)
/* 805D1D14  80 03 06 7C */	lwz r0, 0x67c(r3)
/* 805D1D18  7C 04 00 00 */	cmpw r4, r0
/* 805D1D1C  40 82 01 7C */	bne lbl_805D1E98
/* 805D1D20  88 03 06 D8 */	lbz r0, 0x6d8(r3)
/* 805D1D24  28 00 00 00 */	cmplwi r0, 0
/* 805D1D28  41 82 00 0C */	beq lbl_805D1D34
/* 805D1D2C  28 00 00 02 */	cmplwi r0, 2
/* 805D1D30  40 82 01 68 */	bne lbl_805D1E98
lbl_805D1D34:
/* 805D1D34  88 03 06 D9 */	lbz r0, 0x6d9(r3)
/* 805D1D38  2C 00 00 01 */	cmpwi r0, 1
/* 805D1D3C  41 82 00 34 */	beq lbl_805D1D70
/* 805D1D40  40 80 00 10 */	bge lbl_805D1D50
/* 805D1D44  2C 00 00 00 */	cmpwi r0, 0
/* 805D1D48  40 80 00 14 */	bge lbl_805D1D5C
/* 805D1D4C  48 00 00 24 */	b lbl_805D1D70
lbl_805D1D50:
/* 805D1D50  2C 00 00 03 */	cmpwi r0, 3
/* 805D1D54  40 80 00 1C */	bge lbl_805D1D70
/* 805D1D58  48 00 00 10 */	b lbl_805D1D68
lbl_805D1D5C:
/* 805D1D5C  38 00 00 01 */	li r0, 1
/* 805D1D60  98 03 06 D8 */	stb r0, 0x6d8(r3)
/* 805D1D64  48 00 00 0C */	b lbl_805D1D70
lbl_805D1D68:
/* 805D1D68  38 00 00 03 */	li r0, 3
/* 805D1D6C  98 03 06 D8 */	stb r0, 0x6d8(r3)
lbl_805D1D70:
/* 805D1D70  38 60 00 01 */	li r3, 1
/* 805D1D74  4E 80 00 20 */	blr 
lbl_805D1D78:
/* 805D1D78  80 83 06 6C */	lwz r4, 0x66c(r3)
/* 805D1D7C  80 03 06 7C */	lwz r0, 0x67c(r3)
/* 805D1D80  7C 04 00 00 */	cmpw r4, r0
/* 805D1D84  40 82 01 14 */	bne lbl_805D1E98
/* 805D1D88  88 03 06 D8 */	lbz r0, 0x6d8(r3)
/* 805D1D8C  28 00 00 01 */	cmplwi r0, 1
/* 805D1D90  41 82 00 0C */	beq lbl_805D1D9C
/* 805D1D94  28 00 00 03 */	cmplwi r0, 3
/* 805D1D98  40 82 01 00 */	bne lbl_805D1E98
lbl_805D1D9C:
/* 805D1D9C  88 03 06 D9 */	lbz r0, 0x6d9(r3)
/* 805D1DA0  2C 00 00 02 */	cmpwi r0, 2
/* 805D1DA4  41 82 00 34 */	beq lbl_805D1DD8
/* 805D1DA8  40 80 00 10 */	bge lbl_805D1DB8
/* 805D1DAC  2C 00 00 01 */	cmpwi r0, 1
/* 805D1DB0  40 80 00 14 */	bge lbl_805D1DC4
/* 805D1DB4  48 00 00 24 */	b lbl_805D1DD8
lbl_805D1DB8:
/* 805D1DB8  2C 00 00 04 */	cmpwi r0, 4
/* 805D1DBC  40 80 00 1C */	bge lbl_805D1DD8
/* 805D1DC0  48 00 00 10 */	b lbl_805D1DD0
lbl_805D1DC4:
/* 805D1DC4  38 00 00 00 */	li r0, 0
/* 805D1DC8  98 03 06 D8 */	stb r0, 0x6d8(r3)
/* 805D1DCC  48 00 00 0C */	b lbl_805D1DD8
lbl_805D1DD0:
/* 805D1DD0  38 00 00 02 */	li r0, 2
/* 805D1DD4  98 03 06 D8 */	stb r0, 0x6d8(r3)
lbl_805D1DD8:
/* 805D1DD8  38 60 00 01 */	li r3, 1
/* 805D1DDC  4E 80 00 20 */	blr 
lbl_805D1DE0:
/* 805D1DE0  80 83 06 68 */	lwz r4, 0x668(r3)
/* 805D1DE4  80 03 06 78 */	lwz r0, 0x678(r3)
/* 805D1DE8  7C 04 00 00 */	cmpw r4, r0
/* 805D1DEC  40 82 00 AC */	bne lbl_805D1E98
/* 805D1DF0  88 03 06 D8 */	lbz r0, 0x6d8(r3)
/* 805D1DF4  28 00 00 01 */	cmplwi r0, 1
/* 805D1DF8  41 82 00 0C */	beq lbl_805D1E04
/* 805D1DFC  28 00 00 00 */	cmplwi r0, 0
/* 805D1E00  40 82 00 98 */	bne lbl_805D1E98
lbl_805D1E04:
/* 805D1E04  88 03 06 D9 */	lbz r0, 0x6d9(r3)
/* 805D1E08  2C 00 00 01 */	cmpwi r0, 1
/* 805D1E0C  41 82 00 14 */	beq lbl_805D1E20
/* 805D1E10  40 80 00 24 */	bge lbl_805D1E34
/* 805D1E14  2C 00 00 00 */	cmpwi r0, 0
/* 805D1E18  40 80 00 14 */	bge lbl_805D1E2C
/* 805D1E1C  48 00 00 18 */	b lbl_805D1E34
lbl_805D1E20:
/* 805D1E20  38 00 00 03 */	li r0, 3
/* 805D1E24  98 03 06 D8 */	stb r0, 0x6d8(r3)
/* 805D1E28  48 00 00 0C */	b lbl_805D1E34
lbl_805D1E2C:
/* 805D1E2C  38 00 00 02 */	li r0, 2
/* 805D1E30  98 03 06 D8 */	stb r0, 0x6d8(r3)
lbl_805D1E34:
/* 805D1E34  38 60 00 01 */	li r3, 1
/* 805D1E38  4E 80 00 20 */	blr 
lbl_805D1E3C:
/* 805D1E3C  80 83 06 68 */	lwz r4, 0x668(r3)
/* 805D1E40  80 03 06 78 */	lwz r0, 0x678(r3)
/* 805D1E44  7C 04 00 00 */	cmpw r4, r0
/* 805D1E48  40 82 00 50 */	bne lbl_805D1E98
/* 805D1E4C  88 03 06 D8 */	lbz r0, 0x6d8(r3)
/* 805D1E50  28 00 00 03 */	cmplwi r0, 3
/* 805D1E54  41 82 00 0C */	beq lbl_805D1E60
/* 805D1E58  28 00 00 02 */	cmplwi r0, 2
/* 805D1E5C  40 82 00 3C */	bne lbl_805D1E98
lbl_805D1E60:
/* 805D1E60  88 03 06 D9 */	lbz r0, 0x6d9(r3)
/* 805D1E64  2C 00 00 03 */	cmpwi r0, 3
/* 805D1E68  41 82 00 14 */	beq lbl_805D1E7C
/* 805D1E6C  40 80 00 24 */	bge lbl_805D1E90
/* 805D1E70  2C 00 00 02 */	cmpwi r0, 2
/* 805D1E74  40 80 00 14 */	bge lbl_805D1E88
/* 805D1E78  48 00 00 18 */	b lbl_805D1E90
lbl_805D1E7C:
/* 805D1E7C  38 00 00 01 */	li r0, 1
/* 805D1E80  98 03 06 D8 */	stb r0, 0x6d8(r3)
/* 805D1E84  48 00 00 0C */	b lbl_805D1E90
lbl_805D1E88:
/* 805D1E88  38 00 00 00 */	li r0, 0
/* 805D1E8C  98 03 06 D8 */	stb r0, 0x6d8(r3)
lbl_805D1E90:
/* 805D1E90  38 60 00 01 */	li r3, 1
/* 805D1E94  4E 80 00 20 */	blr 
lbl_805D1E98:
/* 805D1E98  38 60 00 00 */	li r3, 0
/* 805D1E9C  4E 80 00 20 */	blr 
