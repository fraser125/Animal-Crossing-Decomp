lbl_8051EF18:
/* 8051EF18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051EF1C  7C 08 02 A6 */	mflr r0
/* 8051EF20  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 8051EF24  3C A0 80 52 */	lis r5, aEDZ_think_proc@ha /* 0x8051EED8@ha */
/* 8051EF28  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051EF2C  38 05 EE D8 */	addi r0, r5, aEDZ_think_proc@l /* 0x8051EED8@l */
/* 8051EF30  38 C6 85 38 */	addi r6, r6, common_data@l /* 0x81138538@l */
/* 8051EF34  38 A0 00 09 */	li r5, 9
/* 8051EF38  90 03 07 D4 */	stw r0, 0x7d4(r3)
/* 8051EF3C  3C E6 00 02 */	addis r7, r6, 2
/* 8051EF40  38 C0 00 00 */	li r6, 0
/* 8051EF44  80 E7 60 4C */	lwz r7, 0x604c(r7)
/* 8051EF48  81 87 01 20 */	lwz r12, 0x120(r7)
/* 8051EF4C  7D 89 03 A6 */	mtctr r12
/* 8051EF50  4E 80 04 21 */	bctrl 
/* 8051EF54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051EF58  7C 08 03 A6 */	mtlr r0
/* 8051EF5C  38 21 00 10 */	addi r1, r1, 0x10
/* 8051EF60  4E 80 00 20 */	blr 
