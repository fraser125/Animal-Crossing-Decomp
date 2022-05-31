lbl_805A4C8C:
/* 805A4C8C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805A4C90  7C 08 02 A6 */	mflr r0
/* 805A4C94  90 01 00 24 */	stw r0, 0x24(r1)
/* 805A4C98  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805A4C9C  7C 7F 1B 78 */	mr r31, r3
/* 805A4CA0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805A4CA4  7C 9E 23 78 */	mr r30, r4
/* 805A4CA8  80 83 00 28 */	lwz r4, 0x28(r3)
/* 805A4CAC  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 805A4CB0  38 61 00 08 */	addi r3, r1, 8
/* 805A4CB4  90 81 00 08 */	stw r4, 8(r1)
/* 805A4CB8  90 01 00 0C */	stw r0, 0xc(r1)
/* 805A4CBC  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 805A4CC0  90 01 00 10 */	stw r0, 0x10(r1)
/* 805A4CC4  4B FF EB 65 */	bl aGTT_Get_water_surface_position_y
/* 805A4CC8  D0 3F 00 2C */	stfs f1, 0x2c(r31)
/* 805A4CCC  7F E3 FB 78 */	mr r3, r31
/* 805A4CD0  4B FF EF 81 */	bl aGYO_check_bridge
/* 805A4CD4  2C 03 00 01 */	cmpwi r3, 1
/* 805A4CD8  40 82 00 2C */	bne lbl_805A4D04
/* 805A4CDC  7F E3 FB 78 */	mr r3, r31
/* 805A4CE0  4B FF F0 25 */	bl aGYO_check_fall
/* 805A4CE4  2C 03 00 01 */	cmpwi r3, 1
/* 805A4CE8  40 82 00 1C */	bne lbl_805A4D04
/* 805A4CEC  81 9F 01 E4 */	lwz r12, 0x1e4(r31)
/* 805A4CF0  7F E3 FB 78 */	mr r3, r31
/* 805A4CF4  7F C4 F3 78 */	mr r4, r30
/* 805A4CF8  7D 89 03 A6 */	mtctr r12
/* 805A4CFC  4E 80 04 21 */	bctrl 
/* 805A4D00  48 00 00 58 */	b lbl_805A4D58
lbl_805A4D04:
/* 805A4D04  A0 1F 02 40 */	lhz r0, 0x240(r31)
/* 805A4D08  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 805A4D0C  40 82 00 1C */	bne lbl_805A4D28
/* 805A4D10  38 00 00 3C */	li r0, 0x3c
/* 805A4D14  90 1F 02 18 */	stw r0, 0x218(r31)
/* 805A4D18  A0 1F 02 40 */	lhz r0, 0x240(r31)
/* 805A4D1C  60 00 01 00 */	ori r0, r0, 0x100
/* 805A4D20  B0 1F 02 40 */	sth r0, 0x240(r31)
/* 805A4D24  48 00 00 34 */	b lbl_805A4D58
lbl_805A4D28:
/* 805A4D28  80 7F 02 18 */	lwz r3, 0x218(r31)
/* 805A4D2C  2C 03 00 00 */	cmpwi r3, 0
/* 805A4D30  40 82 00 0C */	bne lbl_805A4D3C
/* 805A4D34  38 00 00 00 */	li r0, 0
/* 805A4D38  48 00 00 0C */	b lbl_805A4D44
lbl_805A4D3C:
/* 805A4D3C  38 03 FF FF */	addi r0, r3, -1
/* 805A4D40  90 1F 02 18 */	stw r0, 0x218(r31)
lbl_805A4D44:
/* 805A4D44  2C 00 00 00 */	cmpwi r0, 0
/* 805A4D48  40 82 00 10 */	bne lbl_805A4D58
/* 805A4D4C  A0 1F 02 40 */	lhz r0, 0x240(r31)
/* 805A4D50  60 00 00 20 */	ori r0, r0, 0x20
/* 805A4D54  B0 1F 02 40 */	sth r0, 0x240(r31)
lbl_805A4D58:
/* 805A4D58  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805A4D5C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805A4D60  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805A4D64  7C 08 03 A6 */	mtlr r0
/* 805A4D68  38 21 00 20 */	addi r1, r1, 0x20
/* 805A4D6C  4E 80 00 20 */	blr 
