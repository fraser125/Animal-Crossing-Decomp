lbl_80545CE8:
/* 80545CE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80545CEC  7C 08 02 A6 */	mflr r0
/* 80545CF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80545CF4  80 03 09 94 */	lwz r0, 0x994(r3)
/* 80545CF8  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80545CFC  41 80 00 7C */	blt lbl_80545D78
/* 80545D00  2C 00 00 28 */	cmpwi r0, 0x28
/* 80545D04  41 81 00 74 */	bgt lbl_80545D78
/* 80545D08  A0 A3 09 B4 */	lhz r5, 0x9b4(r3)
/* 80545D0C  54 A0 A7 3E */	rlwinm r0, r5, 0x14, 0x1c, 0x1f
/* 80545D10  2C 00 00 02 */	cmpwi r0, 2
/* 80545D14  41 82 00 24 */	beq lbl_80545D38
/* 80545D18  40 80 00 10 */	bge lbl_80545D28
/* 80545D1C  2C 00 00 01 */	cmpwi r0, 1
/* 80545D20  40 80 00 10 */	bge lbl_80545D30
/* 80545D24  48 00 00 54 */	b lbl_80545D78
lbl_80545D28:
/* 80545D28  2C 00 00 04 */	cmpwi r0, 4
/* 80545D2C  40 80 00 4C */	bge lbl_80545D78
lbl_80545D30:
/* 80545D30  4B FF FF 25 */	bl aNSC_set_sell_camera
/* 80545D34  48 00 00 44 */	b lbl_80545D78
lbl_80545D38:
/* 80545D38  54 A0 C7 3E */	rlwinm r0, r5, 0x18, 0x1c, 0x1f
/* 80545D3C  2C 00 00 03 */	cmpwi r0, 3
/* 80545D40  41 82 00 38 */	beq lbl_80545D78
/* 80545D44  40 80 00 10 */	bge lbl_80545D54
/* 80545D48  2C 00 00 02 */	cmpwi r0, 2
/* 80545D4C  40 80 00 14 */	bge lbl_80545D60
/* 80545D50  48 00 00 28 */	b lbl_80545D78
lbl_80545D54:
/* 80545D54  2C 00 00 05 */	cmpwi r0, 5
/* 80545D58  40 80 00 20 */	bge lbl_80545D78
/* 80545D5C  48 00 00 18 */	b lbl_80545D74
lbl_80545D60:
/* 80545D60  28 05 22 04 */	cmplwi r5, 0x2204
/* 80545D64  41 80 00 14 */	blt lbl_80545D78
/* 80545D68  28 05 22 2B */	cmplwi r5, 0x222b
/* 80545D6C  40 81 00 08 */	ble lbl_80545D74
/* 80545D70  48 00 00 08 */	b lbl_80545D78
lbl_80545D74:
/* 80545D74  4B FF FE E1 */	bl aNSC_set_sell_camera
lbl_80545D78:
/* 80545D78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80545D7C  7C 08 03 A6 */	mtlr r0
/* 80545D80  38 21 00 10 */	addi r1, r1, 0x10
/* 80545D84  4E 80 00 20 */	blr 
