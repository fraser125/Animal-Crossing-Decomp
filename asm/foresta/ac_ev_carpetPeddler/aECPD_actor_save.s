lbl_8051BCFC:
/* 8051BCFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051BD00  7C 08 02 A6 */	mflr r0
/* 8051BD04  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8051BD08  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8051BD0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051BD10  3C A5 00 02 */	addis r5, r5, 2
/* 8051BD14  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 8051BD18  81 85 00 D8 */	lwz r12, 0xd8(r5)
/* 8051BD1C  7D 89 03 A6 */	mtctr r12
/* 8051BD20  4E 80 04 21 */	bctrl 
/* 8051BD24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051BD28  7C 08 03 A6 */	mtlr r0
/* 8051BD2C  38 21 00 10 */	addi r1, r1, 0x10
/* 8051BD30  4E 80 00 20 */	blr 
