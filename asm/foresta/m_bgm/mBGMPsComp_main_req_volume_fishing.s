lbl_8037ADCC:
/* 8037ADCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037ADD0  7C 08 02 A6 */	mflr r0
/* 8037ADD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037ADD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8037ADDC  7C 7F 1B 78 */	mr r31, r3
/* 8037ADE0  80 03 01 1C */	lwz r0, 0x11c(r3)
/* 8037ADE4  2C 00 00 01 */	cmpwi r0, 1
/* 8037ADE8  40 82 00 2C */	bne lbl_8037AE14
/* 8037ADEC  3C 60 80 64 */	lis r3, lit_1339@ha /* 0x8064133C@ha */
/* 8037ADF0  38 00 00 02 */	li r0, 2
/* 8037ADF4  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 8037ADF8  38 00 00 01 */	li r0, 1
/* 8037ADFC  C0 03 13 3C */	lfs f0, lit_1339@l(r3)  /* 0x8064133C@l */
/* 8037AE00  38 60 01 2C */	li r3, 0x12c
/* 8037AE04  D0 1F 01 4C */	stfs f0, 0x14c(r31)
/* 8037AE08  B0 7F 01 50 */	sth r3, 0x150(r31)
/* 8037AE0C  98 1F 01 52 */	stb r0, 0x152(r31)
/* 8037AE10  48 00 00 4C */	b lbl_8037AE5C
lbl_8037AE14:
/* 8037AE14  2C 00 00 03 */	cmpwi r0, 3
/* 8037AE18  40 82 00 44 */	bne lbl_8037AE5C
/* 8037AE1C  3C 60 80 64 */	lis r3, lit_1325@ha /* 0x80641338@ha */
/* 8037AE20  38 00 00 00 */	li r0, 0
/* 8037AE24  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 8037AE28  38 00 00 23 */	li r0, 0x23
/* 8037AE2C  C0 03 13 38 */	lfs f0, lit_1325@l(r3)  /* 0x80641338@l */
/* 8037AE30  D0 1F 01 4C */	stfs f0, 0x14c(r31)
/* 8037AE34  B0 1F 01 50 */	sth r0, 0x150(r31)
/* 8037AE38  80 1F 01 18 */	lwz r0, 0x118(r31)
/* 8037AE3C  2C 00 00 00 */	cmpwi r0, 0
/* 8037AE40  40 81 00 14 */	ble lbl_8037AE54
/* 8037AE44  88 7F 00 00 */	lbz r3, 0(r31)
/* 8037AE48  4B FF DA C9 */	bl func_80378910
/* 8037AE4C  2C 03 00 00 */	cmpwi r3, 0
/* 8037AE50  40 82 00 0C */	bne lbl_8037AE5C
lbl_8037AE54:
/* 8037AE54  38 00 00 01 */	li r0, 1
/* 8037AE58  98 1F 01 52 */	stb r0, 0x152(r31)
lbl_8037AE5C:
/* 8037AE5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037AE60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8037AE64  7C 08 03 A6 */	mtlr r0
/* 8037AE68  38 21 00 10 */	addi r1, r1, 0x10
/* 8037AE6C  4E 80 00 20 */	blr 
