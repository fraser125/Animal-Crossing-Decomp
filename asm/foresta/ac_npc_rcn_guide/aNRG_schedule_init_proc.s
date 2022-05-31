lbl_8056FE08:
/* 8056FE08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056FE0C  7C 08 02 A6 */	mflr r0
/* 8056FE10  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 8056FE14  3C A0 80 57 */	lis r5, aNRG_think_proc@ha /* 0x8056FDD4@ha */
/* 8056FE18  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056FE1C  38 05 FD D4 */	addi r0, r5, aNRG_think_proc@l /* 0x8056FDD4@l */
/* 8056FE20  38 C6 85 38 */	addi r6, r6, common_data@l /* 0x81138538@l */
/* 8056FE24  38 A0 00 09 */	li r5, 9
/* 8056FE28  90 03 07 D4 */	stw r0, 0x7d4(r3)
/* 8056FE2C  3C E6 00 02 */	addis r7, r6, 2
/* 8056FE30  38 C0 00 00 */	li r6, 0
/* 8056FE34  80 E7 60 4C */	lwz r7, 0x604c(r7)
/* 8056FE38  81 87 01 20 */	lwz r12, 0x120(r7)
/* 8056FE3C  7D 89 03 A6 */	mtctr r12
/* 8056FE40  4E 80 04 21 */	bctrl 
/* 8056FE44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056FE48  7C 08 03 A6 */	mtlr r0
/* 8056FE4C  38 21 00 10 */	addi r1, r1, 0x10
/* 8056FE50  4E 80 00 20 */	blr 
