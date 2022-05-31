lbl_8051E374:
/* 8051E374  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051E378  7C 08 02 A6 */	mflr r0
/* 8051E37C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8051E380  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8051E384  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051E388  3C A5 00 02 */	addis r5, r5, 2
/* 8051E38C  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 8051E390  81 85 00 DC */	lwz r12, 0xdc(r5)
/* 8051E394  7D 89 03 A6 */	mtctr r12
/* 8051E398  4E 80 04 21 */	bctrl 
/* 8051E39C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051E3A0  7C 08 03 A6 */	mtlr r0
/* 8051E3A4  38 21 00 10 */	addi r1, r1, 0x10
/* 8051E3A8  4E 80 00 20 */	blr 
