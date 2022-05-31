lbl_805299F8:
/* 805299F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805299FC  7C 08 02 A6 */	mflr r0
/* 80529A00  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80529A04  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80529A08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80529A0C  3C A5 00 02 */	addis r5, r5, 2
/* 80529A10  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 80529A14  81 85 00 F4 */	lwz r12, 0xf4(r5)
/* 80529A18  7D 89 03 A6 */	mtctr r12
/* 80529A1C  4E 80 04 21 */	bctrl 
/* 80529A20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80529A24  7C 08 03 A6 */	mtlr r0
/* 80529A28  38 21 00 10 */	addi r1, r1, 0x10
/* 80529A2C  4E 80 00 20 */	blr 
