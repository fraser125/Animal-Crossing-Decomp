lbl_805DB374:
/* 805DB374  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805DB378  7C 08 02 A6 */	mflr r0
/* 805DB37C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805DB380  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805DB384  3B E0 00 00 */	li r31, 0
/* 805DB388  93 C1 00 08 */	stw r30, 8(r1)
/* 805DB38C  7C 7E 1B 78 */	mr r30, r3
/* 805DB390  38 60 02 00 */	li r3, 0x200
/* 805DB394  4B DB AA DD */	bl chkButton
/* 805DB398  2C 03 00 00 */	cmpwi r3, 0
/* 805DB39C  41 82 00 0C */	beq lbl_805DB3A8
/* 805DB3A0  3B E0 00 02 */	li r31, 2
/* 805DB3A4  48 00 00 48 */	b lbl_805DB3EC
lbl_805DB3A8:
/* 805DB3A8  38 60 04 00 */	li r3, 0x400
/* 805DB3AC  4B DB AA C5 */	bl chkButton
/* 805DB3B0  2C 03 00 00 */	cmpwi r3, 0
/* 805DB3B4  41 82 00 0C */	beq lbl_805DB3C0
/* 805DB3B8  3B E0 00 01 */	li r31, 1
/* 805DB3BC  48 00 00 30 */	b lbl_805DB3EC
lbl_805DB3C0:
/* 805DB3C0  38 60 08 00 */	li r3, 0x800
/* 805DB3C4  4B DB AA AD */	bl chkButton
/* 805DB3C8  2C 03 00 00 */	cmpwi r3, 0
/* 805DB3CC  41 82 00 0C */	beq lbl_805DB3D8
/* 805DB3D0  3B E0 00 04 */	li r31, 4
/* 805DB3D4  48 00 00 18 */	b lbl_805DB3EC
lbl_805DB3D8:
/* 805DB3D8  38 60 01 00 */	li r3, 0x100
/* 805DB3DC  4B DB AA 95 */	bl chkButton
/* 805DB3E0  2C 03 00 00 */	cmpwi r3, 0
/* 805DB3E4  41 82 00 08 */	beq lbl_805DB3EC
/* 805DB3E8  3B E0 00 03 */	li r31, 3
lbl_805DB3EC:
/* 805DB3EC  3C 60 DB 06 */	lis r3, 0xDB06 /* 0xDB060020@ha */
/* 805DB3F0  80 DE 02 D0 */	lwz r6, 0x2d0(r30)
/* 805DB3F4  38 03 00 20 */	addi r0, r3, 0x0020 /* 0xDB060020@l */
/* 805DB3F8  3C 60 80 6D */	lis r3, tex_1724@ha /* 0x806CCED8@ha */
/* 805DB3FC  90 06 00 00 */	stw r0, 0(r6)
/* 805DB400  3C 80 80 A7 */	lis r4, kai_sousa_controllpadT_model@ha /* 0x80A6DB98@ha */
/* 805DB404  57 E0 10 3A */	slwi r0, r31, 2
/* 805DB408  38 63 CE D8 */	addi r3, r3, tex_1724@l /* 0x806CCED8@l */
/* 805DB40C  7C 03 00 2E */	lwzx r0, r3, r0
/* 805DB410  3C 60 80 A7 */	lis r3, kai_sousa_cursorT_model@ha /* 0x80A6DE18@ha */
/* 805DB414  3C A0 DE 00 */	lis r5, 0xde00
/* 805DB418  38 84 DB 98 */	addi r4, r4, kai_sousa_controllpadT_model@l /* 0x80A6DB98@l */
/* 805DB41C  90 06 00 04 */	stw r0, 4(r6)
/* 805DB420  38 03 DE 18 */	addi r0, r3, kai_sousa_cursorT_model@l /* 0x80A6DE18@l */
/* 805DB424  90 A6 00 08 */	stw r5, 8(r6)
/* 805DB428  90 86 00 0C */	stw r4, 0xc(r6)
/* 805DB42C  38 C6 00 10 */	addi r6, r6, 0x10
/* 805DB430  7C C3 33 78 */	mr r3, r6
/* 805DB434  90 A6 00 00 */	stw r5, 0(r6)
/* 805DB438  38 C6 00 08 */	addi r6, r6, 8
/* 805DB43C  90 03 00 04 */	stw r0, 4(r3)
/* 805DB440  90 DE 02 D0 */	stw r6, 0x2d0(r30)
/* 805DB444  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805DB448  83 C1 00 08 */	lwz r30, 8(r1)
/* 805DB44C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805DB450  7C 08 03 A6 */	mtlr r0
/* 805DB454  38 21 00 10 */	addi r1, r1, 0x10
/* 805DB458  4E 80 00 20 */	blr 
