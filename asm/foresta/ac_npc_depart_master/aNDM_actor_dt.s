lbl_8054CF88:
/* 8054CF88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054CF8C  7C 08 02 A6 */	mflr r0
/* 8054CF90  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8054CF94  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8054CF98  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054CF9C  3C A5 00 02 */	addis r5, r5, 2
/* 8054CFA0  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 8054CFA4  81 85 00 D4 */	lwz r12, 0xd4(r5)
/* 8054CFA8  7D 89 03 A6 */	mtctr r12
/* 8054CFAC  4E 80 04 21 */	bctrl 
/* 8054CFB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054CFB4  7C 08 03 A6 */	mtlr r0
/* 8054CFB8  38 21 00 10 */	addi r1, r1, 0x10
/* 8054CFBC  4E 80 00 20 */	blr 
