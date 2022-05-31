lbl_8056A740:
/* 8056A740  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056A744  7C 08 02 A6 */	mflr r0
/* 8056A748  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 8056A74C  3C A0 80 57 */	lis r5, aPOL_think_proc@ha /* 0x8056A70C@ha */
/* 8056A750  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056A754  38 05 A7 0C */	addi r0, r5, aPOL_think_proc@l /* 0x8056A70C@l */
/* 8056A758  38 C6 85 38 */	addi r6, r6, common_data@l /* 0x81138538@l */
/* 8056A75C  38 A0 00 09 */	li r5, 9
/* 8056A760  90 03 07 D4 */	stw r0, 0x7d4(r3)
/* 8056A764  3C E6 00 02 */	addis r7, r6, 2
/* 8056A768  38 C0 00 00 */	li r6, 0
/* 8056A76C  80 E7 60 4C */	lwz r7, 0x604c(r7)
/* 8056A770  81 87 01 20 */	lwz r12, 0x120(r7)
/* 8056A774  7D 89 03 A6 */	mtctr r12
/* 8056A778  4E 80 04 21 */	bctrl 
/* 8056A77C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056A780  7C 08 03 A6 */	mtlr r0
/* 8056A784  38 21 00 10 */	addi r1, r1, 0x10
/* 8056A788  4E 80 00 20 */	blr 
