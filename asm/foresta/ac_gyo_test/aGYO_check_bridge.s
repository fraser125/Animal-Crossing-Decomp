lbl_805A3C50:
/* 805A3C50  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805A3C54  7C 08 02 A6 */	mflr r0
/* 805A3C58  90 01 00 24 */	stw r0, 0x24(r1)
/* 805A3C5C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805A3C60  3B E0 00 00 */	li r31, 0
/* 805A3C64  A0 03 02 40 */	lhz r0, 0x240(r3)
/* 805A3C68  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 805A3C6C  40 82 00 80 */	bne lbl_805A3CEC
/* 805A3C70  80 03 01 E0 */	lwz r0, 0x1e0(r3)
/* 805A3C74  2C 00 00 02 */	cmpwi r0, 2
/* 805A3C78  41 82 00 70 */	beq lbl_805A3CE8
/* 805A3C7C  40 80 00 10 */	bge lbl_805A3C8C
/* 805A3C80  2C 00 00 00 */	cmpwi r0, 0
/* 805A3C84  40 80 00 10 */	bge lbl_805A3C94
/* 805A3C88  48 00 00 60 */	b lbl_805A3CE8
lbl_805A3C8C:
/* 805A3C8C  2C 00 00 04 */	cmpwi r0, 4
/* 805A3C90  40 80 00 58 */	bge lbl_805A3CE8
lbl_805A3C94:
/* 805A3C94  88 03 00 9A */	lbz r0, 0x9a(r3)
/* 805A3C98  54 00 FF FF */	rlwinm. r0, r0, 0x1f, 0x1f, 0x1f
/* 805A3C9C  41 82 00 44 */	beq lbl_805A3CE0
/* 805A3CA0  80 A3 00 28 */	lwz r5, 0x28(r3)
/* 805A3CA4  38 80 00 00 */	li r4, 0
/* 805A3CA8  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 805A3CAC  90 A1 00 08 */	stw r5, 8(r1)
/* 805A3CB0  90 01 00 0C */	stw r0, 0xc(r1)
/* 805A3CB4  80 03 00 30 */	lwz r0, 0x30(r3)
/* 805A3CB8  38 61 00 08 */	addi r3, r1, 8
/* 805A3CBC  90 01 00 10 */	stw r0, 0x10(r1)
/* 805A3CC0  4B DE 53 ED */	bl mCoBG_Wpos2Attribute
/* 805A3CC4  2C 03 00 17 */	cmpwi r3, 0x17
/* 805A3CC8  41 82 00 24 */	beq lbl_805A3CEC
/* 805A3CCC  40 80 00 0C */	bge lbl_805A3CD8
/* 805A3CD0  2C 03 00 07 */	cmpwi r3, 7
/* 805A3CD4  41 82 00 18 */	beq lbl_805A3CEC
lbl_805A3CD8:
/* 805A3CD8  3B E0 00 01 */	li r31, 1
/* 805A3CDC  48 00 00 10 */	b lbl_805A3CEC
lbl_805A3CE0:
/* 805A3CE0  3B E0 00 01 */	li r31, 1
/* 805A3CE4  48 00 00 08 */	b lbl_805A3CEC
lbl_805A3CE8:
/* 805A3CE8  3B E0 00 01 */	li r31, 1
lbl_805A3CEC:
/* 805A3CEC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805A3CF0  7F E3 FB 78 */	mr r3, r31
/* 805A3CF4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805A3CF8  7C 08 03 A6 */	mtlr r0
/* 805A3CFC  38 21 00 20 */	addi r1, r1, 0x20
/* 805A3D00  4E 80 00 20 */	blr 
