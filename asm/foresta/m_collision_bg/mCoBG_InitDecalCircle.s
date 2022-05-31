lbl_8038DCC4:
/* 8038DCC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8038DCC8  7C 08 02 A6 */	mflr r0
/* 8038DCCC  3C 60 81 13 */	lis r3, data_81135548@ha /* 0x81135548@ha */
/* 8038DCD0  38 80 01 20 */	li r4, 0x120
/* 8038DCD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8038DCD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8038DCDC  3B E3 55 48 */	addi r31, r3, data_81135548@l /* 0x81135548@l */
/* 8038DCE0  38 7F 1E 08 */	addi r3, r31, 0x1e08
/* 8038DCE4  4B CC F3 85 */	bl bzero
/* 8038DCE8  38 7F 1E 68 */	addi r3, r31, 0x1e68
/* 8038DCEC  38 80 00 60 */	li r4, 0x60
/* 8038DCF0  4B CC F3 79 */	bl bzero
/* 8038DCF4  38 00 00 00 */	li r0, 0
/* 8038DCF8  90 1F 1E 04 */	stw r0, 0x1e04(r31)
/* 8038DCFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8038DD00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8038DD04  7C 08 03 A6 */	mtlr r0
/* 8038DD08  38 21 00 10 */	addi r1, r1, 0x10
/* 8038DD0C  4E 80 00 20 */	blr 
