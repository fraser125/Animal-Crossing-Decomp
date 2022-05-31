lbl_805FB974:
/* 805FB974  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805FB978  7C 08 02 A6 */	mflr r0
/* 805FB97C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805FB980  39 61 00 20 */	addi r11, r1, 0x20
/* 805FB984  4B A9 F5 51 */	bl func_8009AED4
/* 805FB988  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805FB98C  7C BD 2B 78 */	mr r29, r5
/* 805FB990  3B C0 00 00 */	li r30, 0
/* 805FB994  83 E4 09 7C */	lwz r31, 0x97c(r4)
/* 805FB998  4B FF 3C 4D */	bl func_805EF5E4
/* 805FB99C  2C 03 00 00 */	cmpwi r3, 0
/* 805FB9A0  40 82 00 38 */	bne lbl_805FB9D8
/* 805FB9A4  A0 7F 03 74 */	lhz r3, 0x374(r31)
/* 805FB9A8  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 805FB9AC  41 82 00 20 */	beq lbl_805FB9CC
/* 805FB9B0  38 00 00 00 */	li r0, 0
/* 805FB9B4  3B C0 00 40 */	li r30, 0x40
/* 805FB9B8  98 1D 00 01 */	stb r0, 1(r29)
/* 805FB9BC  A0 1F 03 74 */	lhz r0, 0x374(r31)
/* 805FB9C0  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 805FB9C4  B0 1F 03 74 */	sth r0, 0x374(r31)
/* 805FB9C8  48 00 00 18 */	b lbl_805FB9E0
lbl_805FB9CC:
/* 805FB9CC  60 60 00 01 */	ori r0, r3, 1
/* 805FB9D0  B0 1F 03 74 */	sth r0, 0x374(r31)
/* 805FB9D4  48 00 00 0C */	b lbl_805FB9E0
lbl_805FB9D8:
/* 805FB9D8  38 60 10 0A */	li r3, 0x100a
/* 805FB9DC  48 03 23 29 */	bl sAdo_SysTrgStart
lbl_805FB9E0:
/* 805FB9E0  7F C3 F3 78 */	mr r3, r30
/* 805FB9E4  39 61 00 20 */	addi r11, r1, 0x20
/* 805FB9E8  4B A9 F5 39 */	bl func_8009AF20
/* 805FB9EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805FB9F0  7C 08 03 A6 */	mtlr r0
/* 805FB9F4  38 21 00 20 */	addi r1, r1, 0x20
/* 805FB9F8  4E 80 00 20 */	blr 
