lbl_8051A73C:
/* 8051A73C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051A740  7C 08 02 A6 */	mflr r0
/* 8051A744  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8051A748  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051A74C  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8051A750  3C A5 00 02 */	addis r5, r5, 2
/* 8051A754  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051A758  7C 9F 23 78 */	mr r31, r4
/* 8051A75C  93 C1 00 08 */	stw r30, 8(r1)
/* 8051A760  7C 7E 1B 78 */	mr r30, r3
/* 8051A764  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 8051A768  81 85 00 E0 */	lwz r12, 0xe0(r5)
/* 8051A76C  7D 89 03 A6 */	mtctr r12
/* 8051A770  4E 80 04 21 */	bctrl 
/* 8051A774  7F C3 F3 78 */	mr r3, r30
/* 8051A778  7F E4 FB 78 */	mr r4, r31
/* 8051A77C  4B FF F8 C5 */	bl aEBRK_check_tent
/* 8051A780  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051A784  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051A788  83 C1 00 08 */	lwz r30, 8(r1)
/* 8051A78C  7C 08 03 A6 */	mtlr r0
/* 8051A790  38 21 00 10 */	addi r1, r1, 0x10
/* 8051A794  4E 80 00 20 */	blr 
