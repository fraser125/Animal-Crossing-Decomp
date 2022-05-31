lbl_8052BB0C:
/* 8052BB0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052BB10  7C 08 02 A6 */	mflr r0
/* 8052BB14  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 8052BB18  3C A0 80 53 */	lis r5, aHN0_think_proc@ha /* 0x8052BACC@ha */
/* 8052BB1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052BB20  38 05 BA CC */	addi r0, r5, aHN0_think_proc@l /* 0x8052BACC@l */
/* 8052BB24  38 C6 85 38 */	addi r6, r6, common_data@l /* 0x81138538@l */
/* 8052BB28  38 A0 00 09 */	li r5, 9
/* 8052BB2C  90 03 07 D4 */	stw r0, 0x7d4(r3)
/* 8052BB30  3C E6 00 02 */	addis r7, r6, 2
/* 8052BB34  38 C0 00 00 */	li r6, 0
/* 8052BB38  80 E7 60 4C */	lwz r7, 0x604c(r7)
/* 8052BB3C  81 87 01 20 */	lwz r12, 0x120(r7)
/* 8052BB40  7D 89 03 A6 */	mtctr r12
/* 8052BB44  4E 80 04 21 */	bctrl 
/* 8052BB48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052BB4C  7C 08 03 A6 */	mtlr r0
/* 8052BB50  38 21 00 10 */	addi r1, r1, 0x10
/* 8052BB54  4E 80 00 20 */	blr 
