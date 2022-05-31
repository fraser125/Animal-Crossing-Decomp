lbl_805929F8:
/* 805929F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805929FC  7C 08 02 A6 */	mflr r0
/* 80592A00  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80592A04  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80592A08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80592A0C  3C A5 00 02 */	addis r5, r5, 2
/* 80592A10  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 80592A14  81 85 00 D8 */	lwz r12, 0xd8(r5)
/* 80592A18  7D 89 03 A6 */	mtctr r12
/* 80592A1C  4E 80 04 21 */	bctrl 
/* 80592A20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80592A24  7C 08 03 A6 */	mtlr r0
/* 80592A28  38 21 00 10 */	addi r1, r1, 0x10
/* 80592A2C  4E 80 00 20 */	blr 
