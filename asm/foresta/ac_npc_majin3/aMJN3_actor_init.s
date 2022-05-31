lbl_80557F94:
/* 80557F94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80557F98  7C 08 02 A6 */	mflr r0
/* 80557F9C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80557FA0  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80557FA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80557FA8  3C A5 00 02 */	addis r5, r5, 2
/* 80557FAC  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 80557FB0  81 85 00 DC */	lwz r12, 0xdc(r5)
/* 80557FB4  7D 89 03 A6 */	mtctr r12
/* 80557FB8  4E 80 04 21 */	bctrl 
/* 80557FBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80557FC0  7C 08 03 A6 */	mtlr r0
/* 80557FC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80557FC8  4E 80 00 20 */	blr 
