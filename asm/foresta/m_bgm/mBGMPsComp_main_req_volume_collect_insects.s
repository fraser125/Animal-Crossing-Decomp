lbl_8037AE70:
/* 8037AE70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037AE74  7C 08 02 A6 */	mflr r0
/* 8037AE78  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037AE7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8037AE80  7C 7F 1B 78 */	mr r31, r3
/* 8037AE84  80 03 01 20 */	lwz r0, 0x120(r3)
/* 8037AE88  2C 00 00 01 */	cmpwi r0, 1
/* 8037AE8C  40 82 00 2C */	bne lbl_8037AEB8
/* 8037AE90  3C 60 80 64 */	lis r3, lit_1353@ha /* 0x80641340@ha */
/* 8037AE94  38 00 00 02 */	li r0, 2
/* 8037AE98  90 1F 01 20 */	stw r0, 0x120(r31)
/* 8037AE9C  38 00 00 01 */	li r0, 1
/* 8037AEA0  C0 03 13 40 */	lfs f0, lit_1353@l(r3)  /* 0x80641340@l */
/* 8037AEA4  38 60 00 64 */	li r3, 0x64
/* 8037AEA8  D0 1F 01 54 */	stfs f0, 0x154(r31)
/* 8037AEAC  B0 7F 01 58 */	sth r3, 0x158(r31)
/* 8037AEB0  98 1F 01 5A */	stb r0, 0x15a(r31)
/* 8037AEB4  48 00 00 4C */	b lbl_8037AF00
lbl_8037AEB8:
/* 8037AEB8  2C 00 00 03 */	cmpwi r0, 3
/* 8037AEBC  40 82 00 44 */	bne lbl_8037AF00
/* 8037AEC0  3C 60 80 64 */	lis r3, lit_1325@ha /* 0x80641338@ha */
/* 8037AEC4  38 00 00 00 */	li r0, 0
/* 8037AEC8  90 1F 01 20 */	stw r0, 0x120(r31)
/* 8037AECC  38 00 00 11 */	li r0, 0x11
/* 8037AED0  C0 03 13 38 */	lfs f0, lit_1325@l(r3)  /* 0x80641338@l */
/* 8037AED4  D0 1F 01 54 */	stfs f0, 0x154(r31)
/* 8037AED8  B0 1F 01 58 */	sth r0, 0x158(r31)
/* 8037AEDC  80 1F 01 18 */	lwz r0, 0x118(r31)
/* 8037AEE0  2C 00 00 00 */	cmpwi r0, 0
/* 8037AEE4  40 81 00 14 */	ble lbl_8037AEF8
/* 8037AEE8  88 7F 00 00 */	lbz r3, 0(r31)
/* 8037AEEC  4B FF DA 25 */	bl func_80378910
/* 8037AEF0  2C 03 00 00 */	cmpwi r3, 0
/* 8037AEF4  40 82 00 0C */	bne lbl_8037AF00
lbl_8037AEF8:
/* 8037AEF8  38 00 00 01 */	li r0, 1
/* 8037AEFC  98 1F 01 5A */	stb r0, 0x15a(r31)
lbl_8037AF00:
/* 8037AF00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037AF04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8037AF08  7C 08 03 A6 */	mtlr r0
/* 8037AF0C  38 21 00 10 */	addi r1, r1, 0x10
/* 8037AF10  4E 80 00 20 */	blr 
