lbl_80558A98:
/* 80558A98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80558A9C  7C 08 02 A6 */	mflr r0
/* 80558AA0  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 80558AA4  3C A0 80 56 */	lis r5, aMJN3_think_proc@ha /* 0x80558A64@ha */
/* 80558AA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80558AAC  38 05 8A 64 */	addi r0, r5, aMJN3_think_proc@l /* 0x80558A64@l */
/* 80558AB0  38 C6 85 38 */	addi r6, r6, common_data@l /* 0x81138538@l */
/* 80558AB4  38 A0 00 09 */	li r5, 9
/* 80558AB8  90 03 07 D4 */	stw r0, 0x7d4(r3)
/* 80558ABC  3C E6 00 02 */	addis r7, r6, 2
/* 80558AC0  38 C0 00 00 */	li r6, 0
/* 80558AC4  80 E7 60 4C */	lwz r7, 0x604c(r7)
/* 80558AC8  81 87 01 20 */	lwz r12, 0x120(r7)
/* 80558ACC  7D 89 03 A6 */	mtctr r12
/* 80558AD0  4E 80 04 21 */	bctrl 
/* 80558AD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80558AD8  7C 08 03 A6 */	mtlr r0
/* 80558ADC  38 21 00 10 */	addi r1, r1, 0x10
/* 80558AE0  4E 80 00 20 */	blr 
