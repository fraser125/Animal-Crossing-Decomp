lbl_804DF1A4:
/* 804DF1A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DF1A8  7C 08 02 A6 */	mflr r0
/* 804DF1AC  3C 80 80 64 */	lis r4, lit_5331@ha /* 0x80647D64@ha */
/* 804DF1B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DF1B4  C0 04 7D 64 */	lfs f0, lit_5331@l(r4)  /* 0x80647D64@l */
/* 804DF1B8  C0 23 01 80 */	lfs f1, 0x180(r3)
/* 804DF1BC  80 03 0C F8 */	lwz r0, 0xcf8(r3)
/* 804DF1C0  EC 21 00 24 */	fdivs f1, f1, f0
/* 804DF1C4  2C 00 00 2B */	cmpwi r0, 0x2b
/* 804DF1C8  41 82 00 38 */	beq lbl_804DF200
/* 804DF1CC  40 80 00 28 */	bge lbl_804DF1F4
/* 804DF1D0  2C 00 00 09 */	cmpwi r0, 9
/* 804DF1D4  41 82 00 34 */	beq lbl_804DF208
/* 804DF1D8  40 80 00 10 */	bge lbl_804DF1E8
/* 804DF1DC  2C 00 00 08 */	cmpwi r0, 8
/* 804DF1E0  40 80 00 20 */	bge lbl_804DF200
/* 804DF1E4  48 00 00 34 */	b lbl_804DF218
lbl_804DF1E8:
/* 804DF1E8  2C 00 00 0B */	cmpwi r0, 0xb
/* 804DF1EC  40 80 00 2C */	bge lbl_804DF218
/* 804DF1F0  48 00 00 20 */	b lbl_804DF210
lbl_804DF1F4:
/* 804DF1F4  2C 00 00 4B */	cmpwi r0, 0x4b
/* 804DF1F8  41 82 00 08 */	beq lbl_804DF200
/* 804DF1FC  48 00 00 1C */	b lbl_804DF218
lbl_804DF200:
/* 804DF200  38 60 00 01 */	li r3, 1
/* 804DF204  48 00 00 18 */	b lbl_804DF21C
lbl_804DF208:
/* 804DF208  38 60 00 02 */	li r3, 2
/* 804DF20C  48 00 00 10 */	b lbl_804DF21C
lbl_804DF210:
/* 804DF210  38 60 00 03 */	li r3, 3
/* 804DF214  48 00 00 08 */	b lbl_804DF21C
lbl_804DF218:
/* 804DF218  38 60 00 00 */	li r3, 0
lbl_804DF21C:
/* 804DF21C  3C 80 80 64 */	lis r4, lit_603@ha /* 0x80646564@ha */
/* 804DF220  C0 04 65 64 */	lfs f0, lit_603@l(r4)  /* 0x80646564@l */
/* 804DF224  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804DF228  40 81 00 0C */	ble lbl_804DF234
/* 804DF22C  FC 20 00 90 */	fmr f1, f0
/* 804DF230  48 00 00 18 */	b lbl_804DF248
lbl_804DF234:
/* 804DF234  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804DF238  C0 04 65 68 */	lfs f0, lit_604@l(r4)  /* 0x80646568@l */
/* 804DF23C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804DF240  40 80 00 08 */	bge lbl_804DF248
/* 804DF244  FC 20 00 90 */	fmr f1, f0
lbl_804DF248:
/* 804DF248  48 14 EB FD */	bl sAdo_PlayerStatusLevel
/* 804DF24C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DF250  7C 08 03 A6 */	mtlr r0
/* 804DF254  38 21 00 10 */	addi r1, r1, 0x10
/* 804DF258  4E 80 00 20 */	blr 
