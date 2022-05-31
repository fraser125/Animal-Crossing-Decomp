lbl_8051CE6C:
/* 8051CE6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051CE70  7C 08 02 A6 */	mflr r0
/* 8051CE74  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8051CE78  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8051CE7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051CE80  3C A5 00 02 */	addis r5, r5, 2
/* 8051CE84  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 8051CE88  81 85 00 F4 */	lwz r12, 0xf4(r5)
/* 8051CE8C  7D 89 03 A6 */	mtctr r12
/* 8051CE90  4E 80 04 21 */	bctrl 
/* 8051CE94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051CE98  7C 08 03 A6 */	mtlr r0
/* 8051CE9C  38 21 00 10 */	addi r1, r1, 0x10
/* 8051CEA0  4E 80 00 20 */	blr 
