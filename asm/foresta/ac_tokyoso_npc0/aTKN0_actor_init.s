lbl_8058B614:
/* 8058B614  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058B618  7C 08 02 A6 */	mflr r0
/* 8058B61C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8058B620  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8058B624  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058B628  3C A5 00 02 */	addis r5, r5, 2
/* 8058B62C  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 8058B630  81 85 00 DC */	lwz r12, 0xdc(r5)
/* 8058B634  7D 89 03 A6 */	mtctr r12
/* 8058B638  4E 80 04 21 */	bctrl 
/* 8058B63C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058B640  7C 08 03 A6 */	mtlr r0
/* 8058B644  38 21 00 10 */	addi r1, r1, 0x10
/* 8058B648  4E 80 00 20 */	blr 
