lbl_805901D4:
/* 805901D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805901D8  7C 08 02 A6 */	mflr r0
/* 805901DC  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805901E0  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 805901E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805901E8  3C A5 00 02 */	addis r5, r5, 2
/* 805901EC  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 805901F0  81 85 00 F4 */	lwz r12, 0xf4(r5)
/* 805901F4  7D 89 03 A6 */	mtctr r12
/* 805901F8  4E 80 04 21 */	bctrl 
/* 805901FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80590200  7C 08 03 A6 */	mtlr r0
/* 80590204  38 21 00 10 */	addi r1, r1, 0x10
/* 80590208  4E 80 00 20 */	blr 
