lbl_8051CB9C:
/* 8051CB9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051CBA0  7C 08 02 A6 */	mflr r0
/* 8051CBA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051CBA8  80 03 07 14 */	lwz r0, 0x714(r3)
/* 8051CBAC  2C 00 00 74 */	cmpwi r0, 0x74
/* 8051CBB0  41 82 00 28 */	beq lbl_8051CBD8
/* 8051CBB4  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8051CBB8  38 80 00 74 */	li r4, 0x74
/* 8051CBBC  38 C5 85 38 */	addi r6, r5, common_data@l /* 0x81138538@l */
/* 8051CBC0  38 A0 00 00 */	li r5, 0
/* 8051CBC4  3C C6 00 02 */	addis r6, r6, 2
/* 8051CBC8  80 C6 60 4C */	lwz r6, 0x604c(r6)
/* 8051CBCC  81 86 01 14 */	lwz r12, 0x114(r6)
/* 8051CBD0  7D 89 03 A6 */	mtctr r12
/* 8051CBD4  4E 80 04 21 */	bctrl 
lbl_8051CBD8:
/* 8051CBD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051CBDC  7C 08 03 A6 */	mtlr r0
/* 8051CBE0  38 21 00 10 */	addi r1, r1, 0x10
/* 8051CBE4  4E 80 00 20 */	blr 
