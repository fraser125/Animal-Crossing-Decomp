lbl_80519E00:
/* 80519E00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80519E04  7C 08 02 A6 */	mflr r0
/* 80519E08  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80519E0C  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80519E10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80519E14  3C A5 00 02 */	addis r5, r5, 2
/* 80519E18  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 80519E1C  81 85 00 DC */	lwz r12, 0xdc(r5)
/* 80519E20  7D 89 03 A6 */	mtctr r12
/* 80519E24  4E 80 04 21 */	bctrl 
/* 80519E28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80519E2C  7C 08 03 A6 */	mtlr r0
/* 80519E30  38 21 00 10 */	addi r1, r1, 0x10
/* 80519E34  4E 80 00 20 */	blr 
