lbl_80580D8C:
/* 80580D8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80580D90  7C 08 02 A6 */	mflr r0
/* 80580D94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80580D98  80 03 09 94 */	lwz r0, 0x994(r3)
/* 80580D9C  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80580DA0  41 80 00 7C */	blt lbl_80580E1C
/* 80580DA4  2C 00 00 28 */	cmpwi r0, 0x28
/* 80580DA8  41 81 00 74 */	bgt lbl_80580E1C
/* 80580DAC  A0 A3 09 B4 */	lhz r5, 0x9b4(r3)
/* 80580DB0  54 A0 A7 3E */	rlwinm r0, r5, 0x14, 0x1c, 0x1f
/* 80580DB4  2C 00 00 02 */	cmpwi r0, 2
/* 80580DB8  41 82 00 24 */	beq lbl_80580DDC
/* 80580DBC  40 80 00 10 */	bge lbl_80580DCC
/* 80580DC0  2C 00 00 01 */	cmpwi r0, 1
/* 80580DC4  40 80 00 10 */	bge lbl_80580DD4
/* 80580DC8  48 00 00 54 */	b lbl_80580E1C
lbl_80580DCC:
/* 80580DCC  2C 00 00 04 */	cmpwi r0, 4
/* 80580DD0  40 80 00 4C */	bge lbl_80580E1C
lbl_80580DD4:
/* 80580DD4  4B FF FF 25 */	bl aNSC_set_sell_camera
/* 80580DD8  48 00 00 44 */	b lbl_80580E1C
lbl_80580DDC:
/* 80580DDC  54 A0 C7 3E */	rlwinm r0, r5, 0x18, 0x1c, 0x1f
/* 80580DE0  2C 00 00 03 */	cmpwi r0, 3
/* 80580DE4  41 82 00 38 */	beq lbl_80580E1C
/* 80580DE8  40 80 00 10 */	bge lbl_80580DF8
/* 80580DEC  2C 00 00 02 */	cmpwi r0, 2
/* 80580DF0  40 80 00 14 */	bge lbl_80580E04
/* 80580DF4  48 00 00 28 */	b lbl_80580E1C
lbl_80580DF8:
/* 80580DF8  2C 00 00 05 */	cmpwi r0, 5
/* 80580DFC  40 80 00 20 */	bge lbl_80580E1C
/* 80580E00  48 00 00 18 */	b lbl_80580E18
lbl_80580E04:
/* 80580E04  28 05 22 04 */	cmplwi r5, 0x2204
/* 80580E08  41 80 00 14 */	blt lbl_80580E1C
/* 80580E0C  28 05 22 2B */	cmplwi r5, 0x222b
/* 80580E10  40 81 00 08 */	ble lbl_80580E18
/* 80580E14  48 00 00 08 */	b lbl_80580E1C
lbl_80580E18:
/* 80580E18  4B FF FE E1 */	bl aNSC_set_sell_camera
lbl_80580E1C:
/* 80580E1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80580E20  7C 08 03 A6 */	mtlr r0
/* 80580E24  38 21 00 10 */	addi r1, r1, 0x10
/* 80580E28  4E 80 00 20 */	blr 
