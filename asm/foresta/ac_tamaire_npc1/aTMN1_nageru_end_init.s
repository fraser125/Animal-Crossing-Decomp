lbl_8058B1F0:
/* 8058B1F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058B1F4  7C 08 02 A6 */	mflr r0
/* 8058B1F8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8058B1FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058B200  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 8058B204  3C C5 00 02 */	addis r6, r5, 2
/* 8058B208  38 80 00 05 */	li r4, 5
/* 8058B20C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058B210  7C 7F 1B 78 */	mr r31, r3
/* 8058B214  38 A0 00 00 */	li r5, 0
/* 8058B218  80 C6 60 4C */	lwz r6, 0x604c(r6)
/* 8058B21C  81 86 01 14 */	lwz r12, 0x114(r6)
/* 8058B220  7D 89 03 A6 */	mtctr r12
/* 8058B224  4E 80 04 21 */	bctrl 
/* 8058B228  38 00 00 78 */	li r0, 0x78
/* 8058B22C  7F E3 FB 78 */	mr r3, r31
/* 8058B230  B0 1F 09 A0 */	sth r0, 0x9a0(r31)
/* 8058B234  4B FF F4 C1 */	bl aTMN1_nageru_bitclr
/* 8058B238  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058B23C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058B240  7C 08 03 A6 */	mtlr r0
/* 8058B244  38 21 00 10 */	addi r1, r1, 0x10
/* 8058B248  4E 80 00 20 */	blr 
