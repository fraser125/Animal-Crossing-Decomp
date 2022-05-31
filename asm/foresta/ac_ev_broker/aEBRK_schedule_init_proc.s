lbl_8051A4BC:
/* 8051A4BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051A4C0  7C 08 02 A6 */	mflr r0
/* 8051A4C4  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 8051A4C8  3C A0 80 52 */	lis r5, aEBRK_think_proc@ha /* 0x8051A488@ha */
/* 8051A4CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051A4D0  38 05 A4 88 */	addi r0, r5, aEBRK_think_proc@l /* 0x8051A488@l */
/* 8051A4D4  38 C6 85 38 */	addi r6, r6, common_data@l /* 0x81138538@l */
/* 8051A4D8  38 A0 00 09 */	li r5, 9
/* 8051A4DC  90 03 07 D4 */	stw r0, 0x7d4(r3)
/* 8051A4E0  3C E6 00 02 */	addis r7, r6, 2
/* 8051A4E4  38 C0 00 00 */	li r6, 0
/* 8051A4E8  80 E7 60 4C */	lwz r7, 0x604c(r7)
/* 8051A4EC  81 87 01 20 */	lwz r12, 0x120(r7)
/* 8051A4F0  7D 89 03 A6 */	mtctr r12
/* 8051A4F4  4E 80 04 21 */	bctrl 
/* 8051A4F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051A4FC  7C 08 03 A6 */	mtlr r0
/* 8051A500  38 21 00 10 */	addi r1, r1, 0x10
/* 8051A504  4E 80 00 20 */	blr 
