lbl_80590164:
/* 80590164  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80590168  7C 08 02 A6 */	mflr r0
/* 8059016C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80590170  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80590174  90 01 00 14 */	stw r0, 0x14(r1)
/* 80590178  3C A5 00 02 */	addis r5, r5, 2
/* 8059017C  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 80590180  81 85 00 DC */	lwz r12, 0xdc(r5)
/* 80590184  7D 89 03 A6 */	mtctr r12
/* 80590188  4E 80 04 21 */	bctrl 
/* 8059018C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80590190  7C 08 03 A6 */	mtlr r0
/* 80590194  38 21 00 10 */	addi r1, r1, 0x10
/* 80590198  4E 80 00 20 */	blr 
