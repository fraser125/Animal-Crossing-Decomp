lbl_80576CE0:
/* 80576CE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80576CE4  7C 08 02 A6 */	mflr r0
/* 80576CE8  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80576CEC  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80576CF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80576CF4  3C A5 00 02 */	addis r5, r5, 2
/* 80576CF8  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 80576CFC  81 85 00 DC */	lwz r12, 0xdc(r5)
/* 80576D00  7D 89 03 A6 */	mtctr r12
/* 80576D04  4E 80 04 21 */	bctrl 
/* 80576D08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80576D0C  7C 08 03 A6 */	mtlr r0
/* 80576D10  38 21 00 10 */	addi r1, r1, 0x10
/* 80576D14  4E 80 00 20 */	blr 
