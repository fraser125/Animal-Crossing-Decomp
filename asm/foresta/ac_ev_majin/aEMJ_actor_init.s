lbl_80592AB0:
/* 80592AB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80592AB4  7C 08 02 A6 */	mflr r0
/* 80592AB8  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80592ABC  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80592AC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80592AC4  3C A5 00 02 */	addis r5, r5, 2
/* 80592AC8  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 80592ACC  81 85 00 DC */	lwz r12, 0xdc(r5)
/* 80592AD0  7D 89 03 A6 */	mtctr r12
/* 80592AD4  4E 80 04 21 */	bctrl 
/* 80592AD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80592ADC  7C 08 03 A6 */	mtlr r0
/* 80592AE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80592AE4  4E 80 00 20 */	blr 
