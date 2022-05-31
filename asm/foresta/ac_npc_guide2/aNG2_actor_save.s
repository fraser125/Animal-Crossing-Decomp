lbl_80554B1C:
/* 80554B1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80554B20  7C 08 02 A6 */	mflr r0
/* 80554B24  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80554B28  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80554B2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80554B30  3C A5 00 02 */	addis r5, r5, 2
/* 80554B34  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 80554B38  81 85 00 D8 */	lwz r12, 0xd8(r5)
/* 80554B3C  7D 89 03 A6 */	mtctr r12
/* 80554B40  4E 80 04 21 */	bctrl 
/* 80554B44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80554B48  7C 08 03 A6 */	mtlr r0
/* 80554B4C  38 21 00 10 */	addi r1, r1, 0x10
/* 80554B50  4E 80 00 20 */	blr 
