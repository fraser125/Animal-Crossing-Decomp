lbl_8056C42C:
/* 8056C42C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056C430  7C 08 02 A6 */	mflr r0
/* 8056C434  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8056C438  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8056C43C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056C440  3C A5 00 02 */	addis r5, r5, 2
/* 8056C444  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 8056C448  81 85 00 F4 */	lwz r12, 0xf4(r5)
/* 8056C44C  7D 89 03 A6 */	mtctr r12
/* 8056C450  4E 80 04 21 */	bctrl 
/* 8056C454  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056C458  7C 08 03 A6 */	mtlr r0
/* 8056C45C  38 21 00 10 */	addi r1, r1, 0x10
/* 8056C460  4E 80 00 20 */	blr 
