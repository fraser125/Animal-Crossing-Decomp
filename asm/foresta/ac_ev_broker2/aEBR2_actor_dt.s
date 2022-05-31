lbl_8051A8AC:
/* 8051A8AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051A8B0  7C 08 02 A6 */	mflr r0
/* 8051A8B4  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8051A8B8  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8051A8BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051A8C0  3C A5 00 02 */	addis r5, r5, 2
/* 8051A8C4  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 8051A8C8  81 85 00 D4 */	lwz r12, 0xd4(r5)
/* 8051A8CC  7D 89 03 A6 */	mtctr r12
/* 8051A8D0  4E 80 04 21 */	bctrl 
/* 8051A8D4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8051A8D8  38 00 00 01 */	li r0, 1
/* 8051A8DC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8051A8E0  3C 63 00 02 */	addis r3, r3, 2
/* 8051A8E4  90 03 66 98 */	stw r0, 0x6698(r3)
/* 8051A8E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051A8EC  7C 08 03 A6 */	mtlr r0
/* 8051A8F0  38 21 00 10 */	addi r1, r1, 0x10
/* 8051A8F4  4E 80 00 20 */	blr 
