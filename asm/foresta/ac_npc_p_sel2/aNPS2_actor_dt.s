lbl_80567130:
/* 80567130  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80567134  7C 08 02 A6 */	mflr r0
/* 80567138  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8056713C  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80567140  90 01 00 14 */	stw r0, 0x14(r1)
/* 80567144  3C A5 00 02 */	addis r5, r5, 2
/* 80567148  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 8056714C  81 85 00 D4 */	lwz r12, 0xd4(r5)
/* 80567150  7D 89 03 A6 */	mtctr r12
/* 80567154  4E 80 04 21 */	bctrl 
/* 80567158  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056715C  7C 08 03 A6 */	mtlr r0
/* 80567160  38 21 00 10 */	addi r1, r1, 0x10
/* 80567164  4E 80 00 20 */	blr 
