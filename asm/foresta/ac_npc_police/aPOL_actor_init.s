lbl_8056A17C:
/* 8056A17C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056A180  7C 08 02 A6 */	mflr r0
/* 8056A184  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8056A188  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8056A18C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056A190  3C A5 00 02 */	addis r5, r5, 2
/* 8056A194  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 8056A198  81 85 00 DC */	lwz r12, 0xdc(r5)
/* 8056A19C  7D 89 03 A6 */	mtctr r12
/* 8056A1A0  4E 80 04 21 */	bctrl 
/* 8056A1A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056A1A8  7C 08 03 A6 */	mtlr r0
/* 8056A1AC  38 21 00 10 */	addi r1, r1, 0x10
/* 8056A1B0  4E 80 00 20 */	blr 
