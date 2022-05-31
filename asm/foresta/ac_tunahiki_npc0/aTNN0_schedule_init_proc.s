lbl_8058EE6C:
/* 8058EE6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058EE70  7C 08 02 A6 */	mflr r0
/* 8058EE74  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 8058EE78  3C A0 80 59 */	lis r5, aTNN0_think_proc@ha /* 0x8058EE2C@ha */
/* 8058EE7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058EE80  38 05 EE 2C */	addi r0, r5, aTNN0_think_proc@l /* 0x8058EE2C@l */
/* 8058EE84  38 C6 85 38 */	addi r6, r6, common_data@l /* 0x81138538@l */
/* 8058EE88  38 A0 00 09 */	li r5, 9
/* 8058EE8C  90 03 07 D4 */	stw r0, 0x7d4(r3)
/* 8058EE90  3C E6 00 02 */	addis r7, r6, 2
/* 8058EE94  38 C0 00 00 */	li r6, 0
/* 8058EE98  80 E7 60 4C */	lwz r7, 0x604c(r7)
/* 8058EE9C  81 87 01 20 */	lwz r12, 0x120(r7)
/* 8058EEA0  7D 89 03 A6 */	mtctr r12
/* 8058EEA4  4E 80 04 21 */	bctrl 
/* 8058EEA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058EEAC  7C 08 03 A6 */	mtlr r0
/* 8058EEB0  38 21 00 10 */	addi r1, r1, 0x10
/* 8058EEB4  4E 80 00 20 */	blr 
