lbl_8056C364:
/* 8056C364  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056C368  7C 08 02 A6 */	mflr r0
/* 8056C36C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8056C370  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8056C374  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056C378  3C A5 00 02 */	addis r5, r5, 2
/* 8056C37C  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 8056C380  81 85 00 D8 */	lwz r12, 0xd8(r5)
/* 8056C384  7D 89 03 A6 */	mtctr r12
/* 8056C388  4E 80 04 21 */	bctrl 
/* 8056C38C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056C390  7C 08 03 A6 */	mtlr r0
/* 8056C394  38 21 00 10 */	addi r1, r1, 0x10
/* 8056C398  4E 80 00 20 */	blr 