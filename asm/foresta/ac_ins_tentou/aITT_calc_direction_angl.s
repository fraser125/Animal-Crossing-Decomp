lbl_8059FDB4:
/* 8059FDB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059FDB8  7C 08 02 A6 */	mflr r0
/* 8059FDBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059FDC0  A0 03 00 98 */	lhz r0, 0x98(r3)
/* 8059FDC4  54 00 DF BD */	rlwinm. r0, r0, 0x1b, 0x1e, 0x1e
/* 8059FDC8  41 82 00 48 */	beq lbl_8059FE10
/* 8059FDCC  88 03 00 99 */	lbz r0, 0x99(r3)
/* 8059FDD0  54 00 F7 7F */	rlwinm. r0, r0, 0x1e, 0x1d, 0x1f
/* 8059FDD4  41 82 00 3C */	beq lbl_8059FE10
/* 8059FDD8  38 80 00 00 */	li r4, 0
/* 8059FDDC  7C 09 03 A6 */	mtctr r0
/* 8059FDE0  40 81 00 30 */	ble lbl_8059FE10
lbl_8059FDE4:
/* 8059FDE4  38 04 00 AA */	addi r0, r4, 0xaa
/* 8059FDE8  7C 03 02 AE */	lhax r0, r3, r0
/* 8059FDEC  2C 00 00 00 */	cmpwi r0, 0
/* 8059FDF0  40 82 00 18 */	bne lbl_8059FE08
/* 8059FDF4  7C 83 22 14 */	add r4, r3, r4
/* 8059FDF8  A8 84 00 A8 */	lha r4, 0xa8(r4)
/* 8059FDFC  38 04 40 00 */	addi r0, r4, 0x4000
/* 8059FE00  B0 03 00 36 */	sth r0, 0x36(r3)
/* 8059FE04  48 00 00 0C */	b lbl_8059FE10
lbl_8059FE08:
/* 8059FE08  38 84 00 04 */	addi r4, r4, 4
/* 8059FE0C  42 00 FF D8 */	bdnz lbl_8059FDE4
lbl_8059FE10:
/* 8059FE10  A8 83 00 36 */	lha r4, 0x36(r3)
/* 8059FE14  38 63 00 DE */	addi r3, r3, 0xde
/* 8059FE18  38 A0 08 00 */	li r5, 0x800
/* 8059FE1C  4B E1 AD 29 */	bl chase_angle
/* 8059FE20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059FE24  7C 08 03 A6 */	mtlr r0
/* 8059FE28  38 21 00 10 */	addi r1, r1, 0x10
/* 8059FE2C  4E 80 00 20 */	blr 
