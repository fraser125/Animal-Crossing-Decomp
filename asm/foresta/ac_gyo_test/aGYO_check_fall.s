lbl_805A3D04:
/* 805A3D04  80 83 01 E0 */	lwz r4, 0x1e0(r3)
/* 805A3D08  38 A0 00 00 */	li r5, 0
/* 805A3D0C  2C 04 00 05 */	cmpwi r4, 5
/* 805A3D10  41 82 00 0C */	beq lbl_805A3D1C
/* 805A3D14  2C 04 00 06 */	cmpwi r4, 6
/* 805A3D18  40 82 00 0C */	bne lbl_805A3D24
lbl_805A3D1C:
/* 805A3D1C  38 A0 00 01 */	li r5, 1
/* 805A3D20  48 00 00 54 */	b lbl_805A3D74
lbl_805A3D24:
/* 805A3D24  A0 03 02 40 */	lhz r0, 0x240(r3)
/* 805A3D28  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 805A3D2C  40 82 00 48 */	bne lbl_805A3D74
/* 805A3D30  80 03 00 98 */	lwz r0, 0x98(r3)
/* 805A3D34  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 805A3D38  54 00 AE BE */	rlwinm r0, r0, 0x15, 0x1a, 0x1f
/* 805A3D3C  C0 23 00 40 */	lfs f1, 0x40(r3)
/* 805A3D40  28 00 00 0D */	cmplwi r0, 0xd
/* 805A3D44  40 82 00 2C */	bne lbl_805A3D70
/* 805A3D48  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 805A3D4C  40 80 00 24 */	bge lbl_805A3D70
/* 805A3D50  2C 04 00 05 */	cmpwi r4, 5
/* 805A3D54  41 82 00 0C */	beq lbl_805A3D60
/* 805A3D58  2C 04 00 06 */	cmpwi r4, 6
/* 805A3D5C  40 82 00 18 */	bne lbl_805A3D74
lbl_805A3D60:
/* 805A3D60  80 63 01 CC */	lwz r3, 0x1cc(r3)
/* 805A3D64  38 00 00 00 */	li r0, 0
/* 805A3D68  90 03 02 88 */	stw r0, 0x288(r3)
/* 805A3D6C  48 00 00 08 */	b lbl_805A3D74
lbl_805A3D70:
/* 805A3D70  38 A0 00 01 */	li r5, 1
lbl_805A3D74:
/* 805A3D74  7C A3 2B 78 */	mr r3, r5
/* 805A3D78  4E 80 00 20 */	blr 
