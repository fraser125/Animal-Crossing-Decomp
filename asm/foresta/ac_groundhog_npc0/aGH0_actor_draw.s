lbl_80590A28:
/* 80590A28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80590A2C  7C 08 02 A6 */	mflr r0
/* 80590A30  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80590A34  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80590A38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80590A3C  3C A5 00 02 */	addis r5, r5, 2
/* 80590A40  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 80590A44  81 85 00 F4 */	lwz r12, 0xf4(r5)
/* 80590A48  7D 89 03 A6 */	mtctr r12
/* 80590A4C  4E 80 04 21 */	bctrl 
/* 80590A50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80590A54  7C 08 03 A6 */	mtlr r0
/* 80590A58  38 21 00 10 */	addi r1, r1, 0x10
/* 80590A5C  4E 80 00 20 */	blr 
